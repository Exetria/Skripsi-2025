import 'dart:io';

import 'package:common_components/common_components.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:windows_app/customer_module/page/controller/customer_list_controller.dart';
import 'package:windows_app/product_module/page/controller/product_list_controller.dart';
import 'package:windows_app/user_module/domain/entities/user_domain.dart';
import 'package:windows_app/user_module/page/controller/update_user_controller.dart';
import 'package:windows_app/user_module/page/controller/user_list_controller.dart';
import 'package:windows_app/utils/functions.dart';

class UserListFragment extends StatefulHookConsumerWidget {
  const UserListFragment({super.key});

  @override
  ConsumerState<UserListFragment> createState() => _UserListFragment();
}

class _UserListFragment extends ConsumerState<UserListFragment> {
  RoleFilter selectedRole = RoleFilter.all;

  @override
  void initState() {
    super.initState();
    addCallBackAfterBuild(
      callback: () {
        ref.read(userListControllerProvider.notifier).resetSearch();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final userListState = ref.watch(userListControllerProvider);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Text('Daftar Pengguna', style: titleStyle),
          const SizedBox(height: 10),

          _buildHeader(),
          const SizedBox(height: 12),

          // Content area
          Expanded(
            child: userListState.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              data: (salesList) {
                if (salesList == null || salesList.isEmpty) {
                  return Center(
                    child: Text(
                      'Data Pengguna Tidak Ditemukan',
                      style: bodyStyle,
                    ),
                  );
                }

                return LayoutBuilder(
                  builder: (context, constraints) {
                    final crossCount = getCrossAxisCount(constraints);
                    return GridView.builder(
                      padding: const EdgeInsets.only(top: 8),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossCount,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        childAspectRatio: getChildAspectRatio(constraints),
                      ),
                      itemCount: salesList.length,
                      itemBuilder: (context, index) {
                        final data = salesList[index];

                        final name = data.fields?.fullName?.stringValue ?? '-';
                        final email = data.fields?.email?.stringValue ?? '-';
                        final role = data.fields?.role?.stringValue ?? '-';
                        final registerDate = DateFormat(
                          'd MMM yyyy',
                        ).format(DateTime.parse(data.createTime ?? ''));

                        return itemCard(
                          context: context,
                          icon: Icons.person,
                          title: name,
                          subtitle: email,
                          secondarySubtitle:
                              data.fields?.phoneNumber?.stringValue != null
                                  ? phoneNumberFormat(
                                    data.fields?.phoneNumber?.stringValue ?? '',
                                  )
                                  : null,
                          leftBottomText:
                              role[0].toUpperCase() + role.substring(1),
                          rightBottomText: registerDate.toString(),
                          onTap: () {
                            showUserDataPopup(context: context, userData: data);
                          },
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
                    'Gagal Memuat Daftar Pengguna: ${exception.message}',
                    style: errorStyle,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SizedBox(
              width: ScreenUtil().screenWidth * 0.25,
              child: customSearchBar(
                context: context,
                hint: 'Cari Pengguna...',
                onChanged: (query) {
                  ref
                      .read(userListControllerProvider.notifier)
                      .searchUser(query);
                },
              ),
            ),
            const SizedBox(width: 16),

            IconButton(
              onPressed: () {
                selectedRole = RoleFilter.all;
                ref
                    .read(userListControllerProvider.notifier)
                    .changeRoleFilter(selectedRole);
              },
              icon: Icon(
                Icons.group_work,
                color:
                    selectedRole == RoleFilter.all
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.onSurface,
              ),
              tooltip: 'Tampilkan Semua',
            ),
            const SizedBox(width: 12),

            IconButton(
              onPressed: () {
                selectedRole = RoleFilter.admin;
                ref
                    .read(userListControllerProvider.notifier)
                    .changeRoleFilter(selectedRole);
              },
              icon: Icon(
                Icons.admin_panel_settings,
                color:
                    selectedRole == RoleFilter.admin
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.onSurface,
              ),
              tooltip: 'Tampilkan Admin',
            ),
            const SizedBox(width: 12),

            IconButton(
              onPressed: () {
                selectedRole = RoleFilter.sales;
                ref
                    .read(userListControllerProvider.notifier)
                    .changeRoleFilter(selectedRole);
              },
              icon: Icon(
                Icons.people,
                color:
                    selectedRole == RoleFilter.sales
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.onSurface,
              ),
              tooltip: 'Tampilkan Sales',
            ),
          ],
        ),

        Row(
          children: [
            IconButton(
              onPressed: () async {
                showUserDataPopup(context: context);
              },
              icon: const Icon(Icons.add),
              tooltip: 'Tambah Pengguna Baru',
            ),
            const SizedBox(width: 8),
            IconButton(
              onPressed: _refreshUserList,
              icon: const Icon(Icons.refresh),
              tooltip: 'Segarkan',
            ),
          ],
        ),
      ],
    );
  }

  Future<void> showUserDataPopup({
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
      userFullNameController.text =
          userData.fields?.fullName?.stringValue ?? '';

      userPhoneController.text =
          userData.fields?.phoneNumber?.stringValue ?? '';
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
                        _refreshUserList();
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
                                                (_, __, ___) =>
                                                    imageErrorWidget(
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
                                            loadingBuilder: (
                                              _,
                                              child,
                                              progress,
                                            ) {
                                              if (progress == null)
                                                return child;
                                              return const Center(
                                                child:
                                                    CircularProgressIndicator(),
                                              );
                                            },
                                            errorBuilder:
                                                (_, __, ___) =>
                                                    imageErrorWidget(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                                      loading:
                                                          () => 'Memuat...',
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
                                                      error: (
                                                        error,
                                                        stackTrace,
                                                      ) {
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                                      loading:
                                                          () => 'Memuat...',
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
                                                      error: (
                                                        error,
                                                        stackTrace,
                                                      ) {
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

  List<String> generateListFromFirebaseList(List<Email> listData) {
    final List<String> result = [];
    for (var emailObject in listData) {
      if (emailObject.stringValue != null) {
        result.add(emailObject.stringValue!);
      }
    }
    return result;
  }

  Future<void> _refreshProductList() async {
    ref.invalidate(productListControllerProvider);
  }

  Future<void> _refreshUserList() async {
    ref.invalidate(userListControllerProvider);
  }
}
