import 'dart:io';

import 'package:common_components/common_components.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:windows_app/announcement_module/domain/entities/announcement_domain.dart';
import 'package:windows_app/announcement_module/page/controller/update_announcement_controller.dart';
import 'package:windows_app/customer_module/domain/entities/customer_domain.dart';
import 'package:windows_app/customer_module/domain/entities/customer_request_domain.dart';
import 'package:windows_app/customer_module/page/controller/customer_list_controller.dart';
import 'package:windows_app/customer_module/page/controller/customer_request_list_controller.dart';
import 'package:windows_app/customer_module/page/controller/update_customer_controller.dart';
import 'package:windows_app/order_module/domain/entities/order_domain.dart';
import 'package:windows_app/order_module/page/controller/order_list_controller.dart';
import 'package:windows_app/order_module/page/controller/update_order_controller.dart';
import 'package:windows_app/product_module/page/controller/product_list_controller.dart';
import 'package:windows_app/user_module/domain/entities/user_domain.dart';
import 'package:windows_app/user_module/page/controller/update_user_controller.dart';
import 'package:windows_app/user_module/page/controller/user_list_controller.dart';
import 'package:windows_app/utils/functions.dart';

// SHOW USER DATA POPUP
Future<void> showUserDataPopup({
  required WidgetRef ref,
  required BuildContext context,
  UserDomain? userData,
}) async {
  final userDataFormKey = GlobalKey<FormState>();

  File? userPhoto;
  String? imageError;
  String? previousUserPhotoLink;

  final userNameController = TextEditingController();
  final userFullNameController = TextEditingController();

  final userPhoneController = TextEditingController();
  final userEmailController = TextEditingController();
  final userPasswordController = TextEditingController();

  List<String> assignedCustomers = [];
  List<String> assignedProducts = [];

  bool isAdmin = false;
  bool isActive = true;

  bool dialogActionButtonEnabled = true;
  bool obscurePassword = true;

  // If productData is provided, populate the fields
  if (userData != null) {
    previousUserPhotoLink = userData.fields?.photoUrl?.stringValue ?? '';

    userNameController.text = userData.fields?.userName?.stringValue ?? '';
    userFullNameController.text = userData.fields?.fullName?.stringValue ?? '';

    userPhoneController.text = userData.fields?.phoneNumber?.stringValue ?? '';
    userEmailController.text = userData.fields?.email?.stringValue ?? '';

    isAdmin = userData.fields?.role?.stringValue == 'admin';
    isActive = userData.fields?.isActive?.booleanValue ?? true;

    // Assigned customers and products
    assignedCustomers = generateListFromFirebaseList(
      userData.fields?.assignedCustomers?.arrayValue?.values ?? [],
    );
    assignedProducts = generateListFromFirebaseList(
      userData.fields?.assignedProducts?.arrayValue?.values ?? [],
    );
  }

  await showDialog(
    context: context,
    builder: (context) {
      return StatefulBuilder(
        builder: (statefulBuilderContext, setDialogState) {
          Future<void> pickImage() async {
            // Safeguard if dialog closed
            if (statefulBuilderContext.mounted == false) return;

            // Pick image
            final result = await FilePicker.platform.pickFiles(
              type: FileType.image,
              withData: true,
            );
            if (result == null) return;
            if (result.files.single.path == null) {
              setDialogState(() => imageError = 'Gagal membaca file');
              return;
            }
            // If dialog still mounted, display image
            if (statefulBuilderContext.mounted) {
              setDialogState(() {
                userPhoto = File(result.files.single.path ?? '');
                imageError = null;
              });
            }
          }

          void submitUserData() async {
            {
              setDialogState(() {
                dialogActionButtonEnabled = false;
              });
              if (userDataFormKey.currentState?.validate() ?? false) {
                AsyncValue<UserDomain?>? submitState;

                // Add
                if (userData == null &&
                    userPasswordController.text.length >= 6) {
                  submitState = await ref
                      .read(updateUserControllerProvider.notifier)
                      .addUser(
                        userPhoto: userPhoto,
                        userName: userNameController.text,
                        fullName: userFullNameController.text,
                        phoneNumber: userPhoneController.text,
                        email: userEmailController.text,
                        password: userPasswordController.text,
                        isAdmin: isAdmin,
                        isActive: isActive,
                        assignedCustomers: assignedCustomers,
                        assignedProducts: assignedProducts,
                      );
                }
                // Update
                else if (userData != null &&
                    (userPasswordController.text.isEmpty ||
                        userPasswordController.text.length >= 6)) {
                  submitState = await ref
                      .read(updateUserControllerProvider.notifier)
                      .updateUser(
                        userPhoto: userPhoto,
                        previousUserPhotoLink: previousUserPhotoLink ?? '',
                        userId: getIdFromName(name: userData.name),
                        userName: userNameController.text,
                        fullName: userFullNameController.text,
                        phoneNumber: userPhoneController.text,
                        email: userEmailController.text,
                        newPassword:
                            userPasswordController.text.isNotEmpty
                                ? userPasswordController.text
                                : null,
                        isAdmin: isAdmin,
                        isActive: isActive,
                        assignedCustomers: assignedCustomers,
                        assignedProducts: assignedProducts,
                      );
                }

                if (submitState is AsyncData) {
                  showFeedbackDialog(
                    context: context,
                    type: 1,
                    message:
                        userData == null
                            ? 'Pengguna berhasil ditambahkan'
                            : 'Pengguna berhasil diperbarui',
                    onClose: () {
                      ref.invalidate(userListControllerProvider);
                      Navigator.pop(statefulBuilderContext);
                    },
                  );
                } else if (submitState is AsyncError && submitState != null) {
                  final apiException = submitState.error as ApiException;
                  showFeedbackDialog(
                    context: context,
                    type: 0,
                    message:
                        userData == null
                            ? 'Gagal menambahkan pengguna: ${apiException.message}'
                            : 'Gagal memperbarui pengguna: ${apiException.message}',
                  );
                } else if ((userData == null &&
                        userPasswordController.text.length < 6) ||
                    (userData != null &&
                        (userPasswordController.text.isNotEmpty &&
                            userPasswordController.text.length < 6))) {
                  showFeedbackDialog(
                    context: context,
                    type: 0,
                    message: 'Password minimal 6 karakter',
                  );
                } else {
                  showFeedbackDialog(
                    context: context,
                    type: 0,
                    message:
                        userData == null
                            ? 'Gagal menambahkan pengguna'
                            : 'Gagal memperbarui pengguna',
                  );
                }
              }
              setDialogState(() {
                dialogActionButtonEnabled = true;
              });
            }
          }

          void deleteUserData() {
            showConfirmationDialog(
              context: context,
              message: 'Apakah Anda yakin ingin menghapus data pengguna ini?',
              onLeftButtonTap: () {},
              onRightButtonTap: () async {
                final deleteState = await ref
                    .read(updateUserControllerProvider.notifier)
                    .deleteUser(uid: getIdFromName(name: userData?.name));

                if (deleteState is AsyncData) {
                  showFeedbackDialog(
                    context: context,
                    type: 1,
                    message: 'Pengguna berhasil dihapus',
                    onClose: () {
                      ref.invalidate(userListControllerProvider);
                      Navigator.pop(statefulBuilderContext);
                    },
                  );
                } else if (deleteState is AsyncError) {
                  final apiException = deleteState.error as ApiException;
                  showFeedbackDialog(
                    context: context,
                    type: 0,
                    message:
                        'Gagal menghapus pengguna: ${apiException.message}',
                  );
                } else {
                  showFeedbackDialog(
                    context: context,
                    type: 0,
                    message: 'Gagal menghapus pengguna',
                  );
                }
              },
            );
          }

          return AlertDialog(
            title: Center(
              child: Text(
                userData == null
                    ? 'Tambah Pengguna Baru'
                    : 'Perbarui Data Pengguna',
                style: subtitleStyle,
              ),
            ),
            content: SizedBox(
              width: ScreenUtil().screenWidth * 0.4,
              child: SingleChildScrollView(
                child: Form(
                  key: userDataFormKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // User photo
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            pickImage();
                          },
                          child: Container(
                            width: ScreenUtil().screenWidth * 0.1,
                            decoration: photoCircleDecoration(context),
                            child:
                                userPhoto != null
                                    ? AspectRatio(
                                      aspectRatio: 1 / 1,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          360,
                                        ),
                                        child: Image.file(
                                          userPhoto ?? File(''),
                                          fit: BoxFit.cover,
                                          errorBuilder:
                                              (_, __, ___) => imageErrorWidget(
                                                context: context,
                                              ),
                                        ),
                                      ),
                                    )
                                    : userPhoto == null &&
                                        previousUserPhotoLink != null &&
                                        previousUserPhotoLink.isNotEmpty
                                    ? AspectRatio(
                                      aspectRatio: 1 / 1,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          360,
                                        ),
                                        child: Image.network(
                                          previousUserPhotoLink,
                                          fit: BoxFit.cover,
                                          loadingBuilder: (_, child, progress) {
                                            if (progress == null) {
                                              return child;
                                            }
                                            return const Center(
                                              child:
                                                  CircularProgressIndicator(),
                                            );
                                          },
                                          errorBuilder:
                                              (_, __, ___) => imageErrorWidget(
                                                context: context,
                                              ),
                                        ),
                                      ),
                                    )
                                    : userPhoto == null &&
                                        previousUserPhotoLink != null &&
                                        previousUserPhotoLink.isEmpty
                                    ? AspectRatio(
                                      aspectRatio: 1 / 1,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          360,
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.person,
                                            size: 64,
                                            color:
                                                Theme.of(
                                                  context,
                                                ).colorScheme.outline,
                                          ),
                                        ),
                                      ),
                                    )
                                    : AspectRatio(
                                      aspectRatio: 1 / 1,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            Icons.camera_alt_outlined,
                                            size: 64,
                                            color:
                                                Theme.of(
                                                  context,
                                                ).colorScheme.outline,
                                          ),
                                          const SizedBox(height: 8),
                                          imageError != null
                                              ? Text(
                                                imageError!,
                                                style: errorStyle,
                                              )
                                              : const SizedBox.shrink(),
                                        ],
                                      ),
                                    ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 32),

                      // Username
                      buildInputBox(
                        controller: userNameController,
                        label: 'User Name',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'User name tidak boleh kosong';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 12),

                      // Full name
                      buildInputBox(
                        controller: userFullNameController,
                        label: 'Nama lengkap',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Name lengkap tidak boleh kosong';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 12),

                      // Phone number
                      buildInputBox(
                        controller: userPhoneController,
                        label: 'Nomor telepon',
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Nomor telepon tidak boleh kosong';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 12),

                      // Email
                      userData == null
                          ? buildInputBox(
                            controller: userEmailController,
                            label: 'Email',
                            validator: (value) {
                              if (userData != null) return null;
                              if (value == null || value.isEmpty) {
                                return 'Email tidak boleh kosong';
                              }
                              return null;
                            },
                          )
                          : const SizedBox.shrink(),
                      userData == null
                          ? const SizedBox(height: 12)
                          : const SizedBox.shrink(),

                      // Password
                      buildInputBox(
                        controller: userPasswordController,
                        label:
                            userData == null
                                ? 'Password'
                                : 'Pasword (Kosongkan jika tidak ingin mengubah)',
                        obscureText: obscurePassword,
                        suffixIcon: IconButton(
                          onPressed: () {
                            setDialogState(() {
                              obscurePassword = !obscurePassword;
                            });
                          },
                          icon: Icon(
                            obscurePassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                        ),
                        validator: (value) {
                          if (userData != null) return null;
                          if (value == null || value.isEmpty) {
                            return 'Password tidak boleh kosong';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 12),

                      // Role and active status
                      Row(
                        children: [
                          Expanded(
                            child: // Available switch
                                SwitchListTile(
                              title: Text('Admin', style: bodyStyle),
                              value: isAdmin,
                              onChanged:
                                  (value) =>
                                      setDialogState(() => isAdmin = value),
                            ),
                          ),
                          Expanded(
                            child: // Available switch
                                SwitchListTile(
                              title: Text('Aktif', style: bodyStyle),
                              value: isActive,
                              onChanged:
                                  (value) =>
                                      setDialogState(() => isActive = value),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 32),

                      // Assigned customers
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:
                                Theme.of(
                                  statefulBuilderContext,
                                ).colorScheme.outline,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Pelanggan yang ditugaskan',
                                  style: bodyStyle,
                                ),
                                IconButton(
                                  onPressed: () async {
                                    final newCustomerId =
                                        await showCustomerSelectorPopup(
                                          ref: ref,
                                          context: context,
                                        );

                                    if (newCustomerId != null &&
                                        newCustomerId.isNotEmpty &&
                                        !assignedCustomers.contains(
                                          newCustomerId,
                                        )) {
                                      setDialogState(() {
                                        assignedCustomers.add(newCustomerId);
                                      });
                                    }
                                  },
                                  icon: const Icon(Icons.add),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            ConstrainedBox(
                              constraints: BoxConstraints(
                                minHeight: ScreenUtil().screenHeight * 0.05,
                                maxHeight: ScreenUtil().screenHeight * 0.3,
                              ),
                              child:
                                  assignedCustomers.isNotEmpty
                                      ? ListView.separated(
                                        itemCount: assignedCustomers.length,
                                        separatorBuilder:
                                            (context, index) => Divider(
                                              color:
                                                  Theme.of(
                                                    context,
                                                  ).colorScheme.onSurface,
                                              thickness: 1,
                                              height: 1,
                                            ),
                                        itemBuilder: (context, index) {
                                          return ListTile(
                                            title: Text(
                                              ref
                                                  .watch(
                                                    customerListControllerProvider,
                                                  )
                                                  .when(
                                                    loading: () => 'Memuat...',
                                                    data: (customerList) {
                                                      return ref
                                                          .read(
                                                            customerListControllerProvider
                                                                .notifier,
                                                          )
                                                          .getCustomerName(
                                                            id:
                                                                assignedCustomers[index],
                                                          );
                                                    },
                                                    error: (error, stackTrace) {
                                                      ref.invalidate(
                                                        customerListControllerProvider,
                                                      );
                                                      return 'Gagal Memuat Nama';
                                                    },
                                                  ),
                                            ),
                                            trailing: IconButton(
                                              icon: Icon(
                                                Icons.delete,
                                                color:
                                                    Theme.of(
                                                      context,
                                                    ).colorScheme.error,
                                              ),
                                              onPressed: () {
                                                setDialogState(() {
                                                  assignedCustomers.removeAt(
                                                    index,
                                                  );
                                                });
                                              },
                                            ),
                                          );
                                        },
                                      )
                                      : Center(
                                        child: Text(
                                          'Belum ada pelanggan',
                                          style: captionStyle,
                                        ),
                                      ),
                            ),
                            const SizedBox(height: 12),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Assigned products
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:
                                Theme.of(
                                  statefulBuilderContext,
                                ).colorScheme.outline,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Produk yang ditugaskan',
                                  style: bodyStyle,
                                ),
                                IconButton(
                                  onPressed: () async {
                                    final newProductId =
                                        await showProductSelectorPopup(
                                          ref: ref,
                                          context: context,
                                        );

                                    if (newProductId != null &&
                                        newProductId.isNotEmpty &&
                                        !assignedProducts.contains(
                                          newProductId,
                                        )) {
                                      setDialogState(() {
                                        assignedProducts.add(newProductId);
                                      });
                                    }
                                  },
                                  icon: const Icon(Icons.add),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            ConstrainedBox(
                              constraints: BoxConstraints(
                                minHeight: ScreenUtil().screenHeight * 0.05,
                                maxHeight: ScreenUtil().screenHeight * 0.3,
                              ),
                              child:
                                  assignedProducts.isNotEmpty
                                      ? ListView.separated(
                                        itemCount: assignedProducts.length,
                                        separatorBuilder:
                                            (context, index) => Divider(
                                              color:
                                                  Theme.of(
                                                    context,
                                                  ).colorScheme.onSurface,
                                              thickness: 1,
                                              height: 1,
                                            ),
                                        itemBuilder: (context, index) {
                                          return ListTile(
                                            title: Text(
                                              ref
                                                  .watch(
                                                    productListControllerProvider,
                                                  )
                                                  .when(
                                                    loading: () => 'Memuat...',
                                                    data: (customerList) {
                                                      return ref
                                                          .read(
                                                            productListControllerProvider
                                                                .notifier,
                                                          )
                                                          .getProductName(
                                                            id:
                                                                assignedProducts[index],
                                                          );
                                                    },
                                                    error: (error, stackTrace) {
                                                      ref.invalidate(
                                                        customerListControllerProvider,
                                                      );
                                                      return 'Gagal Memuat Nama';
                                                    },
                                                  ),
                                            ),
                                            trailing: IconButton(
                                              icon: Icon(
                                                Icons.delete,
                                                color:
                                                    Theme.of(
                                                      context,
                                                    ).colorScheme.error,
                                              ),
                                              onPressed: () {
                                                setDialogState(() {
                                                  assignedProducts.removeAt(
                                                    index,
                                                  );
                                                });
                                              },
                                            ),
                                          );
                                        },
                                      )
                                      : Center(
                                        child: Text(
                                          'Belum ada produk',
                                          style: captionStyle,
                                        ),
                                      ),
                            ),
                            const SizedBox(height: 12),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  userData != null
                      ? IconButton(
                        onPressed: deleteUserData,
                        icon: Icon(
                          Icons.delete,
                          color: Theme.of(context).colorScheme.error,
                        ),
                      )
                      : const SizedBox.shrink(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor:
                              Theme.of(
                                statefulBuilderContext,
                              ).colorScheme.onSurface,
                        ),
                        onPressed:
                            dialogActionButtonEnabled
                                ? () {
                                  Navigator.pop(statefulBuilderContext);
                                }
                                : null,
                        child: const Text('Tutup'),
                      ),
                      const SizedBox(width: 12),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Theme.of(
                                statefulBuilderContext,
                              ).colorScheme.tertiary,
                          foregroundColor:
                              Theme.of(
                                statefulBuilderContext,
                              ).colorScheme.onTertiary,
                        ),
                        onPressed:
                            dialogActionButtonEnabled ? submitUserData : null,
                        child: Text(userData == null ? 'Tambah' : 'Perbarui'),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          );
        },
      );
    },
  );
}

// SHOW CREATE ANNOUNCEMENT POPUP
Future<void> showCreateAnnouncementPopup({
  required WidgetRef ref,
  required BuildContext context,
}) async {
  final announcementDataFormKey = GlobalKey<FormState>();

  final titleController = TextEditingController();
  final contentController = TextEditingController();

  bool dialogActionButtonEnabled = true;

  showDialog(
    context: context,
    builder: (context) {
      return StatefulBuilder(
        builder: (statefulBuilderContext, setDialogState) {
          void submitAnnouncementData() async {
            setDialogState(() {
              dialogActionButtonEnabled = false;
            });
            if (announcementDataFormKey.currentState?.validate() ?? false) {
              AsyncValue<AnnouncementDomain?>? submitState;

              // Add Announcement
              submitState = await ref
                  .read(updateAnnouncementControllerProvider.notifier)
                  .addAnnouncement(
                    title: titleController.text,
                    content: contentController.text,
                  );

              if (submitState is AsyncData) {
                showFeedbackDialog(
                  context: context,
                  type: 1,
                  message: 'Pengumuman berhasil dibuat',
                  onClose: () {
                    ref.invalidate(userListControllerProvider);
                    Navigator.pop(statefulBuilderContext);
                  },
                );
              } else if (submitState is AsyncError) {
                final apiException = submitState.error as ApiException;
                showFeedbackDialog(
                  context: context,
                  type: 0,
                  message: 'Gagal membuat pengumuman: ${apiException.message}',
                );
              } else {
                showFeedbackDialog(
                  context: context,
                  type: 0,
                  message: 'Gagal membuat pengumuman',
                );
              }
            }
            setDialogState(() {
              dialogActionButtonEnabled = true;
            });
          }

          return AlertDialog(
            title: Center(child: Text('Buat Pengumuman', style: subtitleStyle)),
            content: SizedBox(
              width: ScreenUtil().screenWidth * 0.4,
              child: SingleChildScrollView(
                child: Form(
                  key: announcementDataFormKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Full name
                      buildInputBox(
                        controller: titleController,
                        label: 'Judul Pengumuman',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Judul pengumuman tidak boleh kosong';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 12),

                      buildInputBox(
                        controller: contentController,
                        label: 'Isi Pengumuman',
                        maxLines: 3,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Isi pengumuman tidak boleh kosong';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox.shrink(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor:
                              Theme.of(
                                statefulBuilderContext,
                              ).colorScheme.onSurface,
                        ),
                        onPressed:
                            dialogActionButtonEnabled
                                ? () {
                                  Navigator.pop(statefulBuilderContext);
                                }
                                : null,
                        child: const Text('Tutup'),
                      ),
                      const SizedBox(width: 12),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Theme.of(
                                statefulBuilderContext,
                              ).colorScheme.tertiary,
                          foregroundColor:
                              Theme.of(
                                statefulBuilderContext,
                              ).colorScheme.onTertiary,
                        ),
                        onPressed:
                            dialogActionButtonEnabled
                                ? submitAnnouncementData
                                : null,
                        child: const Text('Konfirmasi'),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          );
        },
      );
    },
  );
}

Future<void> showAnnouncementDetailsPopup({
  required BuildContext context,
  required String title,
  required String content,
  required String creationDate,
}) async {
  showDialog(
    context: context,
    builder: (dialogContext) {
      return AlertDialog(
        title: Center(child: Text(title, style: subtitleStyle)),
        content: SizedBox(
          width: ScreenUtil().screenWidth * 0.4,
          child: SingleChildScrollView(child: Text(content, style: bodyStyle)),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(creationDate),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Theme.of(context).colorScheme.onSurface,
                ),
                onPressed: () {
                  Navigator.pop(dialogContext);
                },
                child: const Text('Tutup'),
              ),
            ],
          ),
        ],
      );
    },
  );
}

// SHOW CUSTOMER DATA POPUP
Future<void> showCustomerDataPopup({
  required WidgetRef ref,
  required BuildContext context,
  CustomerDomain? customerData,
  CustomerRequestDomain? customerRequestData,
  Function? onclose,
}) async {
  final customerDataFormKey = GlobalKey<FormState>();

  // Image fields
  File? companyStorePhoto;
  String? companyStorePhotoError;
  String? previousCompanyStorePhotoLink;

  File? picNationalIdPhoto;
  String? picNationalIdPhotoError;
  String? previousPicNationalIdPhotoLink;

  // Text controllers (company)
  final companyNameController = TextEditingController();
  final companyAddressController = TextEditingController();
  final companyPhoneController = TextEditingController();
  final companyEmailController = TextEditingController();
  final companyTaxIdController = TextEditingController();
  final companyStoreConditionController = TextEditingController();

  // Text controllers (PIC)
  final picNameController = TextEditingController();
  final picAddressController = TextEditingController();
  final picPhoneController = TextEditingController();
  final picNationalIdController = TextEditingController();
  final picTaxIdController = TextEditingController();
  final picPositionController = TextEditingController();
  final ownershipStatusController = TextEditingController();

  // Credit controllers
  final creditLimitController = TextEditingController();
  final creditPeriodController = TextEditingController();

  final noteController = TextEditingController();
  final approvalReasonController = TextEditingController();

  // Location data
  double latitude = 0;
  double longitude = 0;
  double accuracy = 0;

  // Dropdown selections
  String? selectedSubscriptionType;
  String? selectedCustomerType;

  // Checkbox / toggle
  bool requestNotApproved = true;
  bool isBlacklisted = false;

  List<String> customerTypes = ['', 'PKP', 'Non PKP'];
  List<String> subscriptionTypes = [
    '',
    'Toko',
    'Industri',
    'Kontraktor',
    'Partai',
    'Eceran',
    'Pribadi',
  ];
  bool dialogActionButtonEnabled = true;

  // Added in datasource
  // final requestedByController = TextEditingController();
  // final approvedByController = TextEditingController();

  // If customerData is provided, populate the fields
  if (customerData != null) {
    // Dropdown selections
    selectedCustomerType =
        customerTypes.contains(customerData.fields?.customerType?.stringValue)
            ? customerData.fields?.customerType?.stringValue
            : null;
    selectedSubscriptionType =
        subscriptionTypes.contains(
              customerData.fields?.subscriptionType?.stringValue,
            )
            ? customerData.fields?.subscriptionType?.stringValue
            : null;

    // Blacklist status
    isBlacklisted = customerData.fields?.blacklisted?.booleanValue ?? false;

    // Location data
    latitude =
        customerData
            .fields
            ?.companyLocation
            ?.mapValue
            ?.fields
            ?.latitude
            ?.doubleValue ??
        0;
    longitude =
        customerData
            .fields
            ?.companyLocation
            ?.mapValue
            ?.fields
            ?.longitude
            ?.doubleValue ??
        0;
    accuracy =
        customerData
            .fields
            ?.companyLocation
            ?.mapValue
            ?.fields
            ?.accuracy
            ?.doubleValue ??
        0;

    // Images
    previousCompanyStorePhotoLink =
        customerData.fields?.companyStorePhoto?.stringValue;

    previousPicNationalIdPhotoLink =
        customerData.fields?.picNationalIdPhoto?.stringValue;

    // Company data
    companyNameController.text =
        customerData.fields?.companyName?.stringValue ?? '';
    companyAddressController.text =
        customerData.fields?.companyAddress?.stringValue ?? '';
    companyPhoneController.text =
        customerData.fields?.companyPhoneNumber?.stringValue ?? '';
    companyEmailController.text =
        customerData.fields?.companyEmail?.stringValue ?? '';
    companyTaxIdController.text =
        customerData.fields?.companyTaxId?.stringValue ?? '';
    companyStoreConditionController.text =
        customerData.fields?.companyStoreCondition?.stringValue ?? '';

    // PIC data
    picNameController.text = customerData.fields?.picName?.stringValue ?? '';
    picAddressController.text =
        customerData.fields?.picAddress?.stringValue ?? '';
    picPhoneController.text =
        customerData.fields?.picPhoneNumber?.stringValue ?? '';
    picNationalIdController.text =
        customerData.fields?.picNationalId?.stringValue ?? '';
    picTaxIdController.text = customerData.fields?.picTaxId?.stringValue ?? '';
    picPositionController.text =
        customerData.fields?.picPosition?.stringValue ?? '';
    ownershipStatusController.text =
        customerData.fields?.ownershipStatus?.stringValue ?? '';

    // Credit data
    creditPeriodController.text =
        customerData.fields?.creditPeriod?.integerValue?.toString() ?? '';
    creditLimitController.text =
        customerData.fields?.creditLimit?.integerValue?.toString() ?? '';

    noteController.text = customerData.fields?.note?.stringValue ?? '';
  } else if (customerRequestData != null) {
    // Check if request already done
    requestNotApproved =
        customerRequestData.fields?.approvalStatus?.stringValue == 'pending';

    // Dropdown selections
    selectedCustomerType =
        customerTypes.contains(
              customerRequestData.fields?.customerType?.stringValue,
            )
            ? customerRequestData.fields?.customerType?.stringValue
            : null;
    selectedSubscriptionType =
        subscriptionTypes.contains(
              customerRequestData.fields?.subscriptionType?.stringValue,
            )
            ? customerRequestData.fields?.subscriptionType?.stringValue
            : null;

    // Blacklist status not set for requests
    // isBlacklisted = false;

    // Location data
    latitude =
        customerRequestData
            .fields
            ?.companyLocation
            ?.mapValue
            ?.fields
            ?.latitude
            ?.doubleValue ??
        0;
    longitude =
        customerRequestData
            .fields
            ?.companyLocation
            ?.mapValue
            ?.fields
            ?.longitude
            ?.doubleValue ??
        0;
    accuracy =
        customerRequestData
            .fields
            ?.companyLocation
            ?.mapValue
            ?.fields
            ?.accuracy
            ?.doubleValue ??
        0;

    // Images
    previousCompanyStorePhotoLink =
        customerRequestData.fields?.companyStorePhoto?.stringValue;

    previousPicNationalIdPhotoLink =
        customerRequestData.fields?.picNationalIdPhoto?.stringValue;

    // Company data
    companyNameController.text =
        customerRequestData.fields?.companyName?.stringValue ?? '';
    companyAddressController.text =
        customerRequestData.fields?.companyAddress?.stringValue ?? '';
    companyPhoneController.text =
        customerRequestData.fields?.companyPhoneNumber?.stringValue ?? '';
    companyEmailController.text =
        customerRequestData.fields?.companyEmail?.stringValue ?? '';
    companyTaxIdController.text =
        customerRequestData.fields?.companyTaxId?.stringValue ?? '';
    companyStoreConditionController.text =
        customerRequestData.fields?.companyStoreCondition?.stringValue ?? '';

    // PIC data
    picNameController.text =
        customerRequestData.fields?.picName?.stringValue ?? '';
    picAddressController.text =
        customerRequestData.fields?.picAddress?.stringValue ?? '';
    picPhoneController.text =
        customerRequestData.fields?.picPhoneNumber?.stringValue ?? '';
    picNationalIdController.text =
        customerRequestData.fields?.picNationalId?.stringValue ?? '';
    picTaxIdController.text =
        customerRequestData.fields?.picTaxId?.stringValue ?? '';
    picPositionController.text =
        customerRequestData.fields?.picPosition?.stringValue ?? '';
    ownershipStatusController.text =
        customerRequestData.fields?.ownershipStatus?.stringValue ?? '';

    // Credit data
    creditPeriodController.text =
        customerRequestData.fields?.creditPeriod?.integerValue?.toString() ??
        '';
    creditLimitController.text =
        customerRequestData.fields?.creditLimit?.integerValue?.toString() ?? '';

    noteController.text = customerRequestData.fields?.note?.stringValue ?? '';
  }

  await showDialog(
    context: context,
    builder: (context) {
      return StatefulBuilder(
        builder: (statefulBuilderContext, setDialogState) {
          Future<void> pickImage(bool isStore) async {
            // Safeguard if dialog closed
            if (statefulBuilderContext.mounted == false) return;

            // Pick image
            final result = await FilePicker.platform.pickFiles(
              type: FileType.image,
              withData: true,
            );
            if (result == null) return;
            if (result.files.single.path == null) {
              setDialogState(
                () =>
                    isStore
                        ? companyStorePhotoError = 'Gagal membaca file'
                        : picNationalIdPhotoError = 'Gagal membaca file',
              );
              return;
            }
            // If dialog still mounted, display image
            if (statefulBuilderContext.mounted) {
              setDialogState(() {
                isStore
                    ? companyStorePhoto = File(result.files.single.path!)
                    : picNationalIdPhoto = File(result.files.single.path!);

                isStore
                    ? companyStorePhotoError = null
                    : picNationalIdPhotoError = null;
              });
            }
          }

          Widget buildCompanyDataExpansionTile() {
            return ExpansionTile(
              title: Text('Data Perusahaan / Toko', style: bodyStyle),
              childrenPadding: const EdgeInsets.symmetric(horizontal: 8),
              children: [
                // Store photo
                Center(
                  child: GestureDetector(
                    onTap: () {
                      pickImage(true);
                    },
                    child: Container(
                      width: ScreenUtil().screenWidth * 0.3,
                      decoration: photoBoxDecoration(statefulBuilderContext),
                      child: AspectRatio(
                        aspectRatio: 16 / 9,
                        child:
                            companyStorePhoto != null
                                ? ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.file(
                                    companyStorePhoto ?? File(''),
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    height: double.infinity,
                                    errorBuilder:
                                        (_, __, ___) =>
                                            imageErrorWidget(context: context),
                                  ),
                                )
                                : companyStorePhoto == null &&
                                    previousCompanyStorePhotoLink != null &&
                                    previousCompanyStorePhotoLink.isNotEmpty
                                ? ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.network(
                                    previousCompanyStorePhotoLink,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    height: double.infinity,
                                    loadingBuilder: (_, child, progress) {
                                      if (progress == null) return child;
                                      return const Center(
                                        child: CircularProgressIndicator(),
                                      );
                                    },
                                    errorBuilder:
                                        (_, __, ___) =>
                                            imageErrorWidget(context: context),
                                  ),
                                )
                                : Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.camera_alt_outlined,
                                      size: 64,
                                      color:
                                          Theme.of(context).colorScheme.outline,
                                    ),
                                    const SizedBox(height: 8),
                                    companyStorePhotoError != null
                                        ? Text(
                                          companyStorePhotoError!,
                                          style: errorStyle,
                                        )
                                        : Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Klik untuk Memilih Gambar',
                                              style: captionStyle,
                                            ),
                                            Text(
                                              '(gunakan aspek 16:9 jika memungkinkan)',
                                              style: captionStyle,
                                            ),
                                          ],
                                        ),
                                  ],
                                ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12),

                // Nama perusahaan
                buildInputBox(
                  controller: companyNameController,
                  label: 'Nama Perusahaan',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Nama perusahaan tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),

                // Alamat perusahaan
                buildInputBox(
                  controller: companyAddressController,
                  label: 'Alamat Perusahaan',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Alamat perusahaan tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),

                // Nomor telepon perusahaan
                buildInputBox(
                  controller: companyPhoneController,
                  label: 'Nomor Telepon Perusahaan',
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Nomor telepon perusahaan tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),

                // Email perusahaan
                buildInputBox(
                  controller: companyEmailController,
                  label: 'Email Perusahaan',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email perusahaan tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),

                // NPWP Perusahaan
                selectedCustomerType == 'PKP'
                    ? buildInputBox(
                      controller: companyTaxIdController,
                      label: 'NPWP Perusahaan',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'NPWP perusahaan tidak boleh kosong';
                        }
                        return null;
                      },
                    )
                    : const SizedBox.shrink(),
                selectedCustomerType == 'PKP'
                    ? const SizedBox(height: 12)
                    : const SizedBox.shrink(),

                // Kondisi Toko
                buildInputBox(
                  controller: companyStoreConditionController,
                  label: 'Kondisi Toko',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Kondisi toko tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),
              ],
            );
          }

          Widget buildOwnerDataExpansionTile() {
            return ExpansionTile(
              title: Text('Data Pemilik', style: bodyStyle),
              childrenPadding: const EdgeInsets.symmetric(horizontal: 8),
              children: [
                Center(child: Text('Foto KTP Pemilik', style: captionStyle)),

                // National ID photo
                Center(
                  child: GestureDetector(
                    onTap: () {
                      pickImage(false);
                    },
                    child: Container(
                      width: ScreenUtil().screenWidth * 0.3,
                      decoration: photoBoxDecoration(statefulBuilderContext),
                      child: AspectRatio(
                        aspectRatio: 16 / 9,
                        child:
                            picNationalIdPhoto != null
                                ? ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.file(
                                    picNationalIdPhoto ?? File(''),
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    height: double.infinity,
                                    errorBuilder:
                                        (_, __, ___) =>
                                            imageErrorWidget(context: context),
                                  ),
                                )
                                : picNationalIdPhoto == null &&
                                    previousPicNationalIdPhotoLink != null &&
                                    previousPicNationalIdPhotoLink.isNotEmpty
                                ? ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.network(
                                    previousPicNationalIdPhotoLink,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    height: double.infinity,
                                    loadingBuilder: (_, child, progress) {
                                      if (progress == null) return child;
                                      return const Center(
                                        child: CircularProgressIndicator(),
                                      );
                                    },
                                    errorBuilder:
                                        (_, __, ___) =>
                                            imageErrorWidget(context: context),
                                  ),
                                )
                                : Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.camera_alt_outlined,
                                      size: 64,
                                      color:
                                          Theme.of(context).colorScheme.outline,
                                    ),
                                    const SizedBox(height: 8),
                                    picNationalIdPhotoError != null
                                        ? Text(
                                          picNationalIdPhotoError!,
                                          style: errorStyle,
                                        )
                                        : Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Klik untuk Memilih Gambar',
                                              style: captionStyle,
                                            ),
                                            Text(
                                              '(gunakan aspek 16:9 jika memungkinkan)',
                                              style: captionStyle,
                                            ),
                                          ],
                                        ),
                                  ],
                                ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12),

                // Nama pemilik
                buildInputBox(
                  controller: picNameController,
                  label: 'Nama Pemilik',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Tidak Boleh Kosong';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),

                // Alamat pemilik
                buildInputBox(
                  controller: picAddressController,
                  label: 'Alamat Pemilik',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Tidak Boleh Kosong';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),

                // Nomor telepon pemilik
                buildInputBox(
                  controller: picPhoneController,
                  label: 'Nomor Telepon Pemilik',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Tidak Boleh Kosong';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),

                // NIK pemilik
                buildInputBox(
                  controller: picNationalIdController,
                  label: 'NIK Pemilik (jika ada)',
                  validator: (value) {
                    return null;
                  },
                ),
                const SizedBox(height: 12),

                // NPWP pemilik
                buildInputBox(
                  controller: picTaxIdController,
                  label: 'NPWP Pemilik',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Tidak Boleh Kosong';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),

                // Ownership status
                buildInputBox(
                  controller: ownershipStatusController,
                  label: 'Status Kepemilikan',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Tidak Boleh Kosong';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),
              ],
            );
          }

          Widget buildPicDataExpansionTile() {
            return ExpansionTile(
              title: Text('Data PIC', style: bodyStyle),
              childrenPadding: const EdgeInsets.symmetric(horizontal: 8),
              children: [
                Center(child: Text('Foto KTP PIC', style: captionStyle)),
                Center(child: Text('(jika ada)', style: captionStyle)),

                // National ID photo
                Center(
                  child: GestureDetector(
                    onTap: () {
                      pickImage(false);
                    },
                    child: Container(
                      width: ScreenUtil().screenWidth * 0.3,
                      decoration: photoBoxDecoration(statefulBuilderContext),
                      child: AspectRatio(
                        aspectRatio: 16 / 9,
                        child:
                            picNationalIdPhoto != null
                                ? ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.file(
                                    picNationalIdPhoto ?? File(''),
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    height: double.infinity,
                                    errorBuilder:
                                        (_, __, ___) =>
                                            imageErrorWidget(context: context),
                                  ),
                                )
                                : picNationalIdPhoto == null &&
                                    previousPicNationalIdPhotoLink != null &&
                                    previousPicNationalIdPhotoLink.isNotEmpty
                                ? ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.network(
                                    previousPicNationalIdPhotoLink,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    height: double.infinity,
                                    loadingBuilder: (_, child, progress) {
                                      if (progress == null) return child;
                                      return const Center(
                                        child: CircularProgressIndicator(),
                                      );
                                    },
                                    errorBuilder:
                                        (_, __, ___) =>
                                            imageErrorWidget(context: context),
                                  ),
                                )
                                : Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.camera_alt_outlined,
                                      size: 64,
                                      color:
                                          Theme.of(context).colorScheme.outline,
                                    ),
                                    const SizedBox(height: 8),
                                    picNationalIdPhotoError != null
                                        ? Text(
                                          picNationalIdPhotoError!,
                                          style: errorStyle,
                                        )
                                        : Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Klik untuk Memilih Gambar',
                                              style: captionStyle,
                                            ),
                                            Text(
                                              '(gunakan aspek 16:9 jika memungkinkan)',
                                              style: captionStyle,
                                            ),
                                          ],
                                        ),
                                  ],
                                ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12),

                // PIC Name
                buildInputBox(
                  controller: picNameController,
                  label: 'Nama PIC',
                  validator: (value) {
                    return (value != null && value != '')
                        ? null
                        : 'Tidak Boleh Kosong';
                  },
                ),
                const SizedBox(height: 12),

                // PIC Phone Number
                buildInputBox(
                  controller: picPhoneController,
                  label: 'Nomor Telepon PIC',
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  validator: (value) {
                    return (value != null && value != '')
                        ? null
                        : 'Tidak Boleh Kosong';
                  },
                ),
                const SizedBox(height: 12),

                // PIC National ID
                buildInputBox(
                  controller: picNationalIdController,
                  label: 'NIK PIC (jika ada)',
                  validator: (value) {
                    return null;
                  },
                ),
                const SizedBox(height: 12),

                // PIC Position
                buildInputBox(
                  controller: picPositionController,
                  label: 'Posisi PIC dalam Perusahaan',
                  validator: (value) {
                    return (value != null && value != '')
                        ? null
                        : 'Tidak Boleh Kosong';
                  },
                ),
                const SizedBox(height: 12),
              ],
            );
          }

          Widget buildCreditInfoExpansionTile() {
            return ExpansionTile(
              title: Text('Informasi Pembayaran', style: bodyStyle),
              children: [
                const SizedBox(height: 4),

                // Credit & metadata fields
                buildInputBox(
                  controller: creditPeriodController,
                  label: 'Jangka Waktu Kredit (dalam hari)',
                  suffix: 'hari',
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Limit kredit tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),

                buildInputBox(
                  controller: creditLimitController,
                  label: 'Batas Kredit (dalam Rp)',
                  prefix: 'Rp. ',
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Periode kredit tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),
              ],
            );
          }

          bool isAllRequiredDataFilled() {
            // Upper Data
            final customerTypeStatus = selectedCustomerType != null;
            final subscriptionTypeStatus = selectedSubscriptionType != null;

            final creditPeriodFilled = creditPeriodController.text != '';
            final creditLimitFilled = creditLimitController.text != '';

            // Company Data
            final storePhotoStatus =
                companyStorePhoto != null ||
                (previousCompanyStorePhotoLink != null &&
                    previousCompanyStorePhotoLink.isNotEmpty);
            final companyNameFilled = companyNameController.text != '';
            final companyAddressFilled = companyAddressController.text != '';
            final companyPhoneFilled = companyPhoneController.text != '';
            final companyTaxIdFilled =
                selectedCustomerType == 'PKP'
                    ? (companyTaxIdController.text != '')
                    : true;
            final companyEmailFilled = companyEmailController.text != '';
            final storeConditionFilled =
                companyStoreConditionController.text != '';

            // Owner/PIC Data
            bool ktpPhotoStatus;
            bool ownerAddressFilled;
            bool ownerTaxIdFilled;
            bool ownerNationalIdFilled;
            bool ownershipStatusFilled;
            bool ownerNameFilled = picNameController.text.isNotEmpty;
            bool ownerPhoneFilled = picPhoneController.text.isNotEmpty;
            bool picPositionFilled;

            // Field is not required after revision
            ktpPhotoStatus = true;
            ownerNationalIdFilled = true;

            // Owner data needed for Non PKP
            if (selectedCustomerType == 'Non PKP') {
              ownerAddressFilled = picAddressController.text.isNotEmpty;
              ownerTaxIdFilled = picTaxIdController.text.isNotEmpty;
              // ownerNationalIdFilled = _ownerNationalIdController.text.isNotEmpty;
              ownershipStatusFilled = ownershipStatusController.text.isNotEmpty;
              picPositionFilled = true;
            }
            // PIC data needed for PKP
            else if (selectedCustomerType == 'PKP') {
              ownerAddressFilled = true;
              ownerTaxIdFilled = true;
              ownershipStatusFilled = true;
              picPositionFilled = picPositionController.text.isNotEmpty;
            }
            // Nullify all data if customer type is not selected
            else {
              ownerAddressFilled = false;
              ownerTaxIdFilled = false;
              ownershipStatusFilled = false;
              picPositionFilled = false;
            }

            final noteFilled = true;

            final allFlags = [
              // Upper Data
              customerTypeStatus,
              subscriptionTypeStatus,

              // Company Data
              storePhotoStatus,
              companyNameFilled,
              companyAddressFilled,
              companyPhoneFilled,
              companyTaxIdFilled,
              companyEmailFilled,
              storeConditionFilled,

              // Owner/PIC Data
              ktpPhotoStatus,
              ownerNameFilled,
              ownerAddressFilled,
              ownerPhoneFilled,
              ownerTaxIdFilled,
              ownerNationalIdFilled,
              ownershipStatusFilled,
              picPositionFilled,

              // Credit Information
              creditPeriodFilled,
              creditLimitFilled,

              // Notes
              noteFilled,
            ];

            // true only if every single flag is true
            return allFlags.every((flag) => flag);
          }

          void submitCustomerData() async {
            {
              setDialogState(() {
                dialogActionButtonEnabled = false;
              });
              if ((customerDataFormKey.currentState?.validate() ?? false) &&
                  isAllRequiredDataFilled()) {
                final userData =
                    customerRequestData != null
                        ? ref
                            .read(userListControllerProvider.notifier)
                            .getUserById(
                              id:
                                  customerRequestData
                                      .fields
                                      ?.requestedBy
                                      ?.stringValue ??
                                  '',
                            )
                        : null;

                final submitState =
                    // Update customer
                    customerData != null
                        ? await ref
                            .read(updateCustomerControllerProvider.notifier)
                            .updateCustomer(
                              customerId: getIdFromName(
                                name: customerData.name,
                              ),
                              subscriptionType: selectedSubscriptionType ?? '',
                              customerType: selectedCustomerType ?? '',

                              companyStorePhoto: companyStorePhoto,
                              companyStorePhotoUrl:
                                  previousCompanyStorePhotoLink,
                              companyName: companyNameController.text,
                              companyAddress: companyAddressController.text,
                              companyPhoneNumber: companyPhoneController.text,
                              companyEmail: companyEmailController.text,
                              companyTaxId: companyTaxIdController.text,
                              companyStoreCondition:
                                  companyStoreConditionController.text,
                              latitude: latitude,
                              longitude: longitude,
                              accuracy: accuracy,

                              picNationalIdPhoto: picNationalIdPhoto,
                              picNationalIdPhotoUrl:
                                  previousPicNationalIdPhotoLink,
                              picName: picNameController.text,
                              picAddress: picAddressController.text,
                              picPhoneNumber: picPhoneController.text,
                              picNationalId: picNationalIdController.text,
                              picTaxId: picTaxIdController.text,
                              picPosition: picPositionController.text,
                              ownershipStatus: ownershipStatusController.text,

                              creditPeriod:
                                  creditPeriodController.text.isNotEmpty
                                      ? int.parse(creditPeriodController.text)
                                      : 0,
                              creditLimit:
                                  creditLimitController.text.isNotEmpty
                                      ? int.parse(creditLimitController.text)
                                      : 0,

                              requestedBy:
                                  customerData
                                      .fields
                                      ?.requestedBy
                                      ?.stringValue ??
                                  '',
                              // Approved by current user
                              approvedBy:
                                  customerData
                                      .fields
                                      ?.approvedBy
                                      ?.stringValue ??
                                  userDataHelper?.uid ??
                                  '',
                              note: noteController.text,
                              isBlacklisted: isBlacklisted,
                            )
                        :
                        // Add using request data
                        customerRequestData != null
                        ? await ref
                            .read(updateCustomerControllerProvider.notifier)
                            .addCustomer(
                              customerRequestData: customerRequestData,
                              userData: userData,
                              approvalReason: approvalReasonController.text,

                              subscriptionType: selectedSubscriptionType ?? '',
                              customerType: selectedCustomerType ?? '',

                              companyStorePhoto: companyStorePhoto,
                              companyStorePhotoUrl:
                                  previousCompanyStorePhotoLink,
                              companyName: companyNameController.text,
                              companyAddress: companyAddressController.text,
                              companyPhoneNumber: companyPhoneController.text,
                              companyEmail: companyEmailController.text,
                              companyTaxId: companyTaxIdController.text,
                              companyStoreCondition:
                                  companyStoreConditionController.text,
                              latitude: latitude,
                              longitude: longitude,
                              accuracy: accuracy,

                              picNationalIdPhoto: picNationalIdPhoto,
                              picNationalIdPhotoUrl:
                                  previousPicNationalIdPhotoLink,
                              picName: picNameController.text,
                              picAddress: picAddressController.text,
                              picPhoneNumber: picPhoneController.text,
                              picNationalId: picNationalIdController.text,
                              picTaxId: picTaxIdController.text,
                              picPosition: picPositionController.text,
                              ownershipStatus: ownershipStatusController.text,

                              creditPeriod:
                                  creditPeriodController.text.isNotEmpty
                                      ? int.parse(creditPeriodController.text)
                                      : 0,
                              creditLimit:
                                  creditLimitController.text.isNotEmpty
                                      ? int.parse(creditLimitController.text)
                                      : 0,

                              requestedBy:
                                  customerRequestData
                                      .fields
                                      ?.requestedBy
                                      ?.stringValue ??
                                  '',
                              approvedBy: userDataHelper?.uid ?? '',
                              note: noteController.text,
                              isBlacklisted: isBlacklisted,
                            )
                        // Add new
                        : await ref
                            .read(updateCustomerControllerProvider.notifier)
                            .addCustomer(
                              subscriptionType: selectedSubscriptionType ?? '',
                              customerType: selectedCustomerType ?? '',

                              companyStorePhoto: companyStorePhoto,
                              companyStorePhotoUrl:
                                  previousCompanyStorePhotoLink,
                              companyName: companyNameController.text,
                              companyAddress: companyAddressController.text,
                              companyPhoneNumber: companyPhoneController.text,
                              companyEmail: companyEmailController.text,
                              companyTaxId: companyTaxIdController.text,
                              companyStoreCondition:
                                  companyStoreConditionController.text,
                              latitude: latitude,
                              longitude: longitude,
                              accuracy: accuracy,

                              picNationalIdPhoto: picNationalIdPhoto,
                              picNationalIdPhotoUrl:
                                  previousPicNationalIdPhotoLink,
                              picName: picNameController.text,
                              picAddress: picAddressController.text,
                              picPhoneNumber: picPhoneController.text,
                              picNationalId: picNationalIdController.text,
                              picTaxId: picTaxIdController.text,
                              picPosition: picPositionController.text,
                              ownershipStatus: ownershipStatusController.text,

                              creditPeriod:
                                  creditPeriodController.text.isNotEmpty
                                      ? int.parse(creditPeriodController.text)
                                      : 0,
                              creditLimit:
                                  creditLimitController.text.isNotEmpty
                                      ? int.parse(creditLimitController.text)
                                      : 0,

                              requestedBy: '',
                              approvedBy: userDataHelper?.uid ?? '',
                              note: noteController.text,
                              isBlacklisted: isBlacklisted,
                            );
                if (submitState is AsyncData) {
                  showFeedbackDialog(
                    context: context,
                    type: 1,
                    message:
                        customerData != null
                            ? 'Pelanggan berhasil diperbarui'
                            : customerRequestData != null
                            ? 'Permintaan pelanggan berhasil diterima'
                            : 'Pelanggan berhasil ditambahkan',
                    onClose: () {
                      // If customerData is not null, refresh user list
                      if (customerRequestData != null) {
                        ref.invalidate(userListControllerProvider);
                      }
                      ref.invalidate(customerListControllerProvider);
                      ref.invalidate(customerRequestListControllerProvider);
                      Navigator.pop(statefulBuilderContext);
                    },
                  );
                } else if (submitState is AsyncError) {
                  final apiException = submitState.error as ApiException;
                  showFeedbackDialog(
                    context: context,
                    type: 0,
                    message:
                        customerData != null
                            ? 'Gagal memperbarui pelanggan: ${apiException.message}'
                            : customerRequestData != null
                            ? 'Gagal menerima permintaan pelanggan: ${apiException.message}'
                            : 'Gagal menambahkan pelanggan: ${apiException.message}',
                  );
                } else {
                  showFeedbackDialog(
                    context: context,
                    type: 0,
                    message:
                        customerData != null
                            ? 'Gagal memperbarui pelanggan'
                            : customerRequestData != null
                            ? 'Gagal menerima permintaan pelanggan'
                            : 'Gagal menambahkan pelanggan',
                  );
                }
              } else if (companyStorePhoto == null) {
                setDialogState(() {
                  companyStorePhoto == null
                      ? companyStorePhotoError = 'Foto toko harus dipilih'
                      : companyStorePhotoError = null;
                });
              }
              setDialogState(() {
                dialogActionButtonEnabled = true;
              });
            }
          }

          void rejectCustomerRequest() async {
            setDialogState(() {
              dialogActionButtonEnabled = false;
            });
            final rejectState = await ref
                .read(updateCustomerControllerProvider.notifier)
                .rejectCustomerRequest(
                  customerRequestData: customerRequestData,
                  approvalReason: approvalReasonController.text,
                );

            if (rejectState is AsyncData) {
              showFeedbackDialog(
                context: context,
                type: 1,
                message: 'Permintaan pelanggan berhasil ditolak',
                onClose: () {
                  ref.invalidate(customerRequestListControllerProvider);
                  Navigator.pop(statefulBuilderContext);
                },
              );
            } else if (rejectState is AsyncError) {
              final apiException = rejectState.error as ApiException;
              showFeedbackDialog(
                context: context,
                type: 0,
                message:
                    'Gagal merespon permintaan pelanggan: ${apiException.message}',
              );
            } else {
              showFeedbackDialog(context: context, type: 0, message: '');
            }
          }

          return AlertDialog(
            title: Center(
              child: Text(
                customerData == null
                    ? 'Tambah Pelanggan Baru'
                    : 'Perbarui Data Pelanggan',
                style: subtitleStyle,
              ),
            ),
            content: SizedBox(
              width: ScreenUtil().screenWidth * 0.4,
              child: SingleChildScrollView(
                child: Form(
                  key: customerDataFormKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Customer type and subscription type dropdowns
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Customer type
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: DropdownButtonFormField<String>(
                                value: selectedCustomerType,
                                dropdownColor:
                                    Theme.of(context).colorScheme.surface,
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color:
                                      Theme.of(context).colorScheme.onSurface,
                                ),
                                decoration: const InputDecoration(
                                  labelText: 'Tipe Pelanggan',
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 14,
                                  ),
                                ),
                                items:
                                    customerTypes.map((item) {
                                      return DropdownMenuItem<String>(
                                        value: item != '' ? item : null,
                                        child: Text(item, style: captionStyle),
                                      );
                                    }).toList(),
                                onChanged: (val) {
                                  setDialogState(() {
                                    if (val == 'PKP') {
                                      picAddressController.text = '';
                                      picTaxIdController.text = '';
                                      ownershipStatusController.text = '';
                                    } else if (val == 'Non PKP') {
                                      companyTaxIdController.text = '';
                                      picPositionController.text = '';
                                    } else {
                                      picTaxIdController.text = '';
                                      picAddressController.text = '';
                                      ownershipStatusController.text = '';
                                      picPositionController.text = '';
                                    }
                                    selectedCustomerType = val;
                                  });
                                },
                                validator: (value) {
                                  return value == null
                                      ? 'Tidak Boleh Kosong'
                                      : null;
                                },
                              ),
                            ),
                          ),

                          // Subscription type
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: DropdownButtonFormField<String>(
                                value: selectedSubscriptionType,
                                dropdownColor:
                                    Theme.of(context).colorScheme.surface,
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color:
                                      Theme.of(context).colorScheme.onSurface,
                                ),
                                decoration: const InputDecoration(
                                  labelText: 'Jenis Langganan',
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 14,
                                  ),
                                ),
                                items:
                                    subscriptionTypes.map((item) {
                                      return DropdownMenuItem<String>(
                                        value: item != '' ? item : null,
                                        child: Text(item, style: captionStyle),
                                      );
                                    }).toList(),
                                onChanged: (val) {
                                  setDialogState(() {
                                    selectedSubscriptionType = val;
                                  });
                                },
                                validator: (value) {
                                  return value == null
                                      ? 'Tidak Boleh Kosong'
                                      : null;
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),

                      // Company data
                      buildCompanyDataExpansionTile(),
                      const SizedBox(height: 24),

                      // PIC data
                      selectedCustomerType == 'PKP'
                          ? buildPicDataExpansionTile()
                          : buildOwnerDataExpansionTile(),
                      const SizedBox(height: 24),

                      // Credit and payment information
                      buildCreditInfoExpansionTile(),
                      const SizedBox(height: 24),

                      // Notes
                      buildInputBox(
                        controller: noteController,
                        label: 'Catatan',
                        maxLines: 3,
                        validator: (value) {
                          return null;
                        },
                      ),
                      const SizedBox(height: 12),

                      // Approval reason for customer request
                      customerRequestData != null
                          ? buildInputBox(
                            controller: approvalReasonController,
                            label: 'Alasan Penolakan/Penerimaan (jika ada)',
                            maxLines: 3,
                            validator: (value) {
                              return null;
                            },
                          )
                          : const SizedBox.shrink(),
                      customerRequestData != null
                          ? const SizedBox(height: 12)
                          : const SizedBox.shrink(),

                      // Blacklist status
                      SwitchListTile(
                        title: Text('Blacklist', style: bodyStyle),
                        value: isBlacklisted,
                        onChanged:
                            (value) =>
                                setDialogState(() => isBlacklisted = value),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      !requestNotApproved
                          ? Text(
                            'Permintaan ini sudah diterima/ditolak',
                            style: errorStyle,
                          )
                          : const SizedBox.shrink(),
                      !requestNotApproved
                          ? const SizedBox(width: 12)
                          : const SizedBox.shrink(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor:
                              Theme.of(
                                statefulBuilderContext,
                              ).colorScheme.onSurface,
                        ),
                        onPressed:
                            dialogActionButtonEnabled
                                ? () {
                                  Navigator.pop(statefulBuilderContext);
                                }
                                : null,
                        child: const Text('Tutup'),
                      ),

                      // Separator
                      customerRequestData != null && requestNotApproved
                          ? const SizedBox(width: 12)
                          : const SizedBox.shrink(),

                      // Reject button
                      customerRequestData != null && requestNotApproved
                          ? ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Theme.of(
                                    statefulBuilderContext,
                                  ).colorScheme.error,
                              foregroundColor:
                                  Theme.of(
                                    statefulBuilderContext,
                                  ).colorScheme.onError,
                            ),
                            onPressed:
                                dialogActionButtonEnabled
                                    ? rejectCustomerRequest
                                    : null,
                            child: const Text('Tolak'),
                          )
                          : const SizedBox.shrink(),

                      // Separator
                      requestNotApproved
                          ? const SizedBox(width: 12)
                          : const SizedBox.shrink(),

                      // Submit button
                      requestNotApproved
                          ? ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Theme.of(
                                    statefulBuilderContext,
                                  ).colorScheme.tertiary,
                              foregroundColor:
                                  Theme.of(
                                    statefulBuilderContext,
                                  ).colorScheme.onTertiary,
                            ),
                            onPressed:
                                dialogActionButtonEnabled
                                    ? submitCustomerData
                                    : null,
                            child: Text(
                              customerData != null
                                  ? 'Perbarui'
                                  : customerRequestData != null
                                  ? 'Terima'
                                  : 'Tambah',
                            ),
                          )
                          : const SizedBox.shrink(),
                    ],
                  ),
                ],
              ),
            ],
          );
        },
      );
    },
  );

  if (onclose != null) onclose();
}

// SHOW ORDER DATA POPUP
Future<void> showOrderDataPopup({
  required WidgetRef ref,
  required BuildContext context,
  required OrderDomain orderData,
}) async {
  final orderDataFormKey = GlobalKey<FormState>();

  List<String> orderStatuses = [
    '',
    'pending',
    'processed',
    'in_transit',
    'delivered',
    'finished',
    'cancelled',
  ];

  String orderId = getIdFromName(name: orderData.name);
  String customerId = orderData.fields?.customerId?.stringValue ?? '';
  String paymentMethod = orderData.fields?.paymentMethod?.stringValue ?? '';
  String notes = orderData.fields?.notes?.stringValue ?? '';

  String deliveryDate = orderData.fields?.deliveryDate?.timestampValue ?? '';
  String paymentDate = orderData.fields?.paymentDate?.timestampValue ?? '';

  int total =
      int.tryParse(orderData.fields?.totalPrice?.integerValue ?? '') ?? 0;
  List<Map<String, dynamic>> productDataList = createProductDataList(
    products: orderData.fields?.products?.arrayValue?.values ?? [],
  );

  String? selectedOrderStatus =
      orderStatuses.contains(orderData.fields?.orderStatus?.stringValue)
          ? orderData.fields?.orderStatus?.stringValue
          : null;

  bool dialogActionButtonEnabled = true;

  await showDialog(
    context: context,
    builder: (context) {
      return StatefulBuilder(
        builder: (statefulBuilderContext, setDialogState) {
          Widget buildOrderInfoCard() {
            return Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                border: Border.all(
                  color: Theme.of(context).colorScheme.outline,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text('Detail Pesanan', style: subtitleStyle),
                  const SizedBox(height: 12),

                  // Order id
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.perm_identity,
                        size: 20,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text('Id Pesanan:\n$orderId', style: bodyStyle),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Customer name
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.perm_identity,
                        size: 20,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          ref
                              .watch(customerListControllerProvider)
                              .when(
                                loading: () => 'Memuat...',
                                data: (data) {
                                  final customerName = ref
                                      .read(
                                        customerListControllerProvider.notifier,
                                      )
                                      .getCustomerName(id: customerId);
                                  return 'Pelanggan Tujuan:\n$customerName';
                                },
                                error: (error, stackTrace) {
                                  ref.invalidate(
                                    customerListControllerProvider,
                                  );
                                  return 'Gagal Memuat Nama';
                                },
                              ),
                          style: bodyStyle,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Payment method
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.payment,
                        size: 20,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          'Metode Pembayaran:\n$paymentMethod',
                          style: bodyStyle,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Total price
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.attach_money,
                        size: 20,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          'Total Harga:\n${rupiahFormat(total)}',
                          style: bodyStyle,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Notes
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.note,
                        size: 20,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text('Catatan:\n$notes', style: bodyStyle),
                      ),
                    ],
                  ),
                  deliveryDate.isNotEmpty
                      ? const SizedBox(height: 12)
                      : const SizedBox.shrink(),

                  // Delivery date
                  deliveryDate.isNotEmpty
                      ? Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.local_shipping,
                            size: 20,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'Tanggal pengiriman:\n${DateFormat('d MMM yyyy').format(DateTime.parse(deliveryDate))}',
                              style: bodyStyle,
                            ),
                          ),
                        ],
                      )
                      : const SizedBox.shrink(),
                  paymentDate.isNotEmpty
                      ? const SizedBox(height: 12)
                      : const SizedBox.shrink(),

                  // Payment date
                  paymentDate.isNotEmpty
                      ? Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.request_quote,
                            size: 20,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'Tanggal pembayaran:\n${DateFormat('d MMM yyyy').format(DateTime.parse(paymentDate))}',
                              style: bodyStyle,
                            ),
                          ),
                        ],
                      )
                      : const SizedBox.shrink(),
                ],
              ),
            );
          }

          List<Widget> generateProductList() {
            final productListState = ref.watch(productListControllerProvider);
            List<Widget> cards = [];
            // int newTotal = 0;

            for (int index = 0; index < productDataList.length; index++) {
              final productData = productDataList[index];

              String? productId =
                  productData['mapValue']['fields']['product_id']['stringValue'];
              String? quantity =
                  productData['mapValue']['fields']['quantity']['integerValue'];
              String? productTotalPrice =
                  productData['mapValue']['fields']['total_price']['integerValue'];

              // newTotal += int.tryParse(productTotalPrice ?? '') ?? 0;

              cards.add(
                productCard(
                  context: context,
                  productName: productListState.when(
                    loading: () => 'Memuat...',
                    data: (data) {
                      return ref
                          .read(productListControllerProvider.notifier)
                          .getProductName(id: productId ?? '');
                    },
                    error: (error, stackTrace) {
                      ref.invalidate(customerListControllerProvider);
                      return 'Gagal Memuat Nama';
                    },
                  ),
                  quantity: quantity ?? '-',
                  price: int.tryParse(productTotalPrice ?? '') ?? 0,
                  onTap: () {
                    // Handle product tap if needed
                  },
                  onDelete: () {},
                ),
              );

              cards.add(SizedBox(height: 4.h));
            }

            // setDialogState(() {
            //   total = newTotal;
            // });

            return cards;
          }

          void submitOrderData() async {
            setDialogState(() {
              dialogActionButtonEnabled = false;
            });

            if ((orderDataFormKey.currentState?.validate() ?? false) &&
                productDataList.isNotEmpty) {
              final submitState = await ref
                  .read(updateOrderControllerProvider.notifier)
                  .updateOrder(
                    oldData: orderData,
                    notes: notes,
                    paymentMethod: paymentMethod,
                    orderStatus: selectedOrderStatus ?? '',
                    deliveryDate: deliveryDate,
                    paymentDate: paymentDate,
                    productDataList: productDataList,
                  );

              if (submitState is AsyncData) {
                showFeedbackDialog(
                  context: context,
                  type: 1,
                  message: 'Status pesanan berhasil diperbarui',
                  onClose: () {
                    ref.invalidate(orderListControllerProvider);
                    Navigator.pop(statefulBuilderContext);
                  },
                );
              } else if (submitState is AsyncError) {
                final apiException = submitState.error as ApiException;
                showFeedbackDialog(
                  context: context,
                  type: 0,
                  message:
                      'Gagal memperbarui status pesanan: ${apiException.message}',
                );
              } else {
                showFeedbackDialog(
                  context: context,
                  type: 0,
                  message: 'Gagal memperbarui status pesanan',
                );
              }
            }

            setDialogState(() {
              dialogActionButtonEnabled = true;
            });
          }

          return AlertDialog(
            title: Center(child: Text('Data Pesanan', style: subtitleStyle)),
            content: SizedBox(
              width: ScreenUtil().screenWidth * 0.4,
              child: SingleChildScrollView(
                child: Form(
                  key: orderDataFormKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      buildOrderInfoCard(),
                      const SizedBox(height: 16),
                      DropdownButtonFormField<String>(
                        value: selectedOrderStatus,
                        dropdownColor: Theme.of(context).colorScheme.surface,
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                        decoration: const InputDecoration(
                          labelText: 'Status Pesanan',
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 14,
                          ),
                        ),
                        items:
                            orderStatuses.map((orderStatus) {
                              return DropdownMenuItem<String>(
                                value: orderStatus != '' ? orderStatus : null,
                                child: Text(
                                  orderStatus != ''
                                      ? getOrderStatusText(
                                        orderStatus: orderStatus,
                                      )
                                      : orderStatus,
                                  style: captionStyle.copyWith(
                                    color: getOrderStatusColor(
                                      context: context,
                                      orderStatus: orderStatus,
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                        onChanged: (val) {
                          setDialogState(() {
                            selectedOrderStatus = val;
                          });
                        },
                        validator: (value) {
                          return value == null || value == ''
                              ? 'Tidak Boleh Kosong'
                              : null;
                        },
                      ),
                      const SizedBox(height: 32),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:
                                Theme.of(
                                  statefulBuilderContext,
                                ).colorScheme.outline,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('Produk yang Dipesan', style: bodyStyle),
                              ],
                            ),
                            const SizedBox(height: 8),
                            ConstrainedBox(
                              constraints: BoxConstraints(
                                minHeight: ScreenUtil().screenHeight * 0.05,
                                maxHeight: ScreenUtil().screenHeight * 0.3,
                              ),
                              child: SingleChildScrollView(
                                child: Column(children: generateProductList()),
                              ),
                            ),
                            const SizedBox(height: 12),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox.shrink(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor:
                              Theme.of(
                                statefulBuilderContext,
                              ).colorScheme.onSurface,
                        ),
                        onPressed:
                            dialogActionButtonEnabled
                                ? () {
                                  Navigator.pop(statefulBuilderContext);
                                }
                                : null,
                        child: const Text('Tutup'),
                      ),
                      const SizedBox(width: 12),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Theme.of(
                                statefulBuilderContext,
                              ).colorScheme.tertiary,
                          foregroundColor:
                              Theme.of(
                                statefulBuilderContext,
                              ).colorScheme.onTertiary,
                        ),
                        onPressed:
                            dialogActionButtonEnabled ? submitOrderData : null,
                        child: const Text('Perbarui'),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          );
        },
      );
    },
  );
}

// CUSTOMER SELECTOR POPUP
Future<String?> showCustomerSelectorPopup({
  required WidgetRef ref,
  required BuildContext context,
}) async {
  ref.read(customerListControllerProvider.notifier).resetSearch();
  return showDialog<String>(
    context: context,
    builder: (context) {
      return Consumer(
        builder: (context, ref, _) {
          return AlertDialog(
            title: Row(
              children: [
                Expanded(
                  child: customSearchBar(
                    context: context,
                    hint: 'Cari Pelanggan...',
                    onChanged: (query) {
                      ref
                          .read(customerListControllerProvider.notifier)
                          .searchCustomer(query);
                    },
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.refresh),
                  tooltip: 'Segarkan Daftar Pelanggan',
                  onPressed: () {
                    ref.invalidate(customerListControllerProvider);
                  },
                ),
              ],
            ),
            content: SizedBox(
              width: ScreenUtil().screenWidth * 0.2,
              height: ScreenUtil().screenHeight * 0.3,
              child: ref
                  .watch(customerListControllerProvider)
                  .when(
                    loading:
                        () => const Center(child: CircularProgressIndicator()),
                    data: (productList) {
                      if (productList == null || productList.isEmpty) {
                        return const Center(
                          child: Text('Data Pelanggan Tidak Ditemukan'),
                        );
                      }

                      return ListView.separated(
                        itemCount: productList.length,
                        separatorBuilder:
                            (context, index) => const SizedBox(height: 8),
                        itemBuilder: (context, index) {
                          final data = productList[index];
                          bool isHovered = false;

                          return StatefulBuilder(
                            builder: (context, setState) {
                              return MouseRegion(
                                onEnter:
                                    (_) => setState(() => isHovered = true),
                                onExit:
                                    (_) => setState(() => isHovered = false),
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 200),
                                  transform:
                                      isHovered
                                          ? Matrix4.translationValues(0, -4, 0)
                                          : Matrix4.identity(),
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color:
                                        Theme.of(context).colorScheme.surface,
                                    border: Border.all(
                                      color:
                                          isHovered
                                              ? Theme.of(
                                                context,
                                              ).colorScheme.primary
                                              : Theme.of(context)
                                                  .colorScheme
                                                  .onSurface
                                                  .withAlpha(128),
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: InkWell(
                                    onTap:
                                        () => Navigator.pop(
                                          context,
                                          getIdFromName(name: data.name),
                                        ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          data
                                                  .fields
                                                  ?.companyName
                                                  ?.stringValue ??
                                              '-',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      );
                    },
                    error: (error, _) {
                      final exception = error as ApiException;

                      return Center(
                        child: Text(
                          'Gagal Memuat Data Pelanggan: ${exception.message}',
                          style: errorStyle,
                        ),
                      );
                    },
                  ),
            ),
          );
        },
      );
    },
  );
}

// PRODUCT SELECTOR POPUP
Future<String?> showProductSelectorPopup({
  required WidgetRef ref,
  required BuildContext context,
}) async {
  ref.read(productListControllerProvider.notifier).resetSearch();
  return showDialog<String>(
    context: context,
    builder: (context) {
      return Consumer(
        builder: (context, ref, _) {
          return AlertDialog(
            title: Row(
              children: [
                Expanded(
                  child: customSearchBar(
                    context: context,
                    hint: 'Cari Produk...',
                    onChanged: (query) {
                      ref
                          .read(productListControllerProvider.notifier)
                          .searchProduct(query);
                    },
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.refresh),
                  tooltip: 'Segarkan Daftar Pelanggan',
                  onPressed: () {
                    ref.invalidate(productListControllerProvider);
                  },
                ),
              ],
            ),
            content: SizedBox(
              width: ScreenUtil().screenWidth * 0.2,
              height: ScreenUtil().screenHeight * 0.3,
              child: ref
                  .watch(productListControllerProvider)
                  .when(
                    loading:
                        () => const Center(child: CircularProgressIndicator()),
                    data: (productList) {
                      if (productList == null || productList.isEmpty) {
                        return const Center(
                          child: Text('Data Produk Tidak Ditemukan'),
                        );
                      }

                      return ListView.separated(
                        itemCount: productList.length,
                        separatorBuilder:
                            (context, index) => const SizedBox(height: 8),
                        itemBuilder: (context, index) {
                          final data = productList[index];
                          bool isHovered = false;

                          return StatefulBuilder(
                            builder: (context, setState) {
                              return MouseRegion(
                                onEnter:
                                    (_) => setState(() => isHovered = true),
                                onExit:
                                    (_) => setState(() => isHovered = false),
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 200),
                                  transform:
                                      isHovered
                                          ? Matrix4.translationValues(0, -4, 0)
                                          : Matrix4.identity(),
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color:
                                        Theme.of(context).colorScheme.surface,
                                    border: Border.all(
                                      color:
                                          isHovered
                                              ? Theme.of(
                                                context,
                                              ).colorScheme.primary
                                              : Theme.of(context)
                                                  .colorScheme
                                                  .onSurface
                                                  .withAlpha(128),
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: InkWell(
                                    onTap:
                                        () => Navigator.pop(
                                          context,
                                          getIdFromName(name: data.name),
                                        ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          data
                                                  .fields
                                                  ?.productName
                                                  ?.stringValue ??
                                              '-',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      );
                    },
                    error: (error, _) {
                      final exception = error as ApiException;

                      return Center(
                        child: Text(
                          'Gagal Memuat Data Produk: ${exception.message}',
                          style: errorStyle,
                        ),
                      );
                    },
                  ),
            ),
          );
        },
      );
    },
  );
}

// PRODUCT CARD FOR ORDER DATA POPUP
Widget productCard({
  required BuildContext context,
  required String productName,
  required String quantity,
  required num price,
  required VoidCallback onTap,
  required VoidCallback onDelete,
  bool editable = true,
}) {
  return Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Theme.of(context).colorScheme.surface,
      border: Border.all(
        color: Theme.of(context).colorScheme.outline,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Item name and quantity
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(productName, style: bodyStyle),
            SizedBox(height: 4.h),
            Text(rupiahFormat(price), style: bodyStyle),
          ],
        ),

        // Item total price & delete button
        Text('Jumlah: $quantity', style: captionStyle),
      ],
    ),
  );
}

//  GENERATE LIST FROM FIREBASE LIST
List<String> generateListFromFirebaseList(List<Email> listData) {
  final List<String> result = [];
  for (var emailObject in listData) {
    if (emailObject.stringValue != null) {
      result.add(emailObject.stringValue!);
    }
  }
  return result;
}
