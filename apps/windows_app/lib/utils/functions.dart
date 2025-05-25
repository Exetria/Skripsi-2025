import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';

// COLUMN COUNT
int getCrossAxisCount(BoxConstraints constraints) {
  final width = constraints.maxWidth;

  if (width > 2000) {
    return 5;
  } else if (width > 1500) {
    return 4;
  } else if (width > 1000) {
    return 3;
  } else if (width > 500) {
    return 2;
  } else {
    return 1;
  }
}

// GRID CHILD ASPECT RATIO
double getChildAspectRatio(BoxConstraints constraints) {
  final width = constraints.maxWidth;

  if (width > 2000) {
    return 2.2;
  } else if (width > 1000) {
    return 2.0;
  } else if (width > 700) {
    return 1.8;
  } else {
    return 1.5;
  }
}

// CUSTOM BOX DECORATION
BoxDecoration itemCardDecoration(
  BuildContext context, {
  bool isSelected = false,
  bool isHovered = false,
}) {
  final cs = Theme.of(context).colorScheme;
  return BoxDecoration(
    color: isHovered ? cs.surface.withAlpha(245) : cs.surface,
    borderRadius: BorderRadius.circular(12),
    border: Border.all(
      color:
          isSelected
              ? cs.primary
              : (isHovered ? cs.primary.withAlpha(100) : cs.outline),
      width: 1,
    ),
    boxShadow: [
      BoxShadow(
        color: cs.shadow,
        blurRadius: isHovered ? 12 : 8,
        offset: Offset(0, isHovered ? 8 : 6),
      ),
    ],
  );
}

// ITEM CARD
Widget itemCard({
  required BuildContext context,
  required IconData icon,
  required String title,
  required String subtitle,
  String? secondarySubtitle,
  String? tertiarySubtitle,
  String? bottomText,
  required VoidCallback? onTap,
}) {
  final cs = Theme.of(context).colorScheme;
  bool isHovered = false;

  return StatefulBuilder(
    builder: (context, setState) {
      return MouseRegion(
        onEnter: (_) => setState(() => isHovered = true),
        onExit: (_) => setState(() => isHovered = false),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          transform:
              isHovered
                  ? Matrix4.translationValues(0, -6, 0)
                  : Matrix4.identity(),
          decoration: itemCardDecoration(context, isHovered: isHovered),
          padding: const EdgeInsets.all(12),
          child: InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: onTap,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(icon, size: 32, color: cs.primary),
                const SizedBox(height: 8),
                Text(
                  title,
                  style: subtitleStyle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(subtitle, style: captionStyle),
                secondarySubtitle != null
                    ? const SizedBox(height: 4)
                    : const SizedBox.shrink(),
                secondarySubtitle != null
                    ? Text(secondarySubtitle, style: captionStyle)
                    : const SizedBox.shrink(),
                tertiarySubtitle != null
                    ? const SizedBox(height: 4)
                    : const SizedBox.shrink(),
                tertiarySubtitle != null
                    ? Text(tertiarySubtitle, style: captionStyle)
                    : const SizedBox.shrink(),
                const Spacer(),
                bottomText != null
                    ? Text(bottomText, style: bodyStyle)
                    : const SizedBox.shrink(),
              ],
            ),
          ),
        ),
      );
    },
  );
}

void showSalesDetailDialog({
  required BuildContext context,
  required String name,
  required String email,
  required String phone,
  required VoidCallback onEditPressed,
}) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder:
        (context) => Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          backgroundColor: backgroundColor,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.3,
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sales Details', style: sectionTitleStyle),
                  const SizedBox(height: 16),
                  _detailRow(Icons.person, 'Name', name),
                  _detailRow(Icons.email, 'Email', email),
                  _detailRow(Icons.phone, 'Phone', phone),
                  const SizedBox(height: 24),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton.icon(
                      onPressed: onEditPressed,
                      icon: Icon(
                        Icons.edit,
                        size: 20,
                        color: invertedTextColor,
                      ),
                      label: Text('Edit', style: buttonStyle),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
  );
}

void showCustomerDetailDialog({
  required BuildContext context,
  required String name,
  required String email,
  required String phone,
  required String address,
  required VoidCallback onEditPressed,
}) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder:
        (context) => Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          backgroundColor: backgroundColor,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Customer Details', style: sectionTitleStyle),
                const SizedBox(height: 16),
                _detailRow(Icons.person, 'Name', name),
                _detailRow(Icons.email, 'Email', email),
                _detailRow(Icons.phone, 'Phone', phone),
                _detailRow(Icons.location_on, 'Address', address),
                const SizedBox(height: 24),
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton.icon(
                    onPressed: onEditPressed,
                    icon: Icon(Icons.edit, size: 20, color: invertedTextColor),
                    label: Text('Edit', style: buttonStyle),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
  );
}

void showProductDetailDialog({
  required BuildContext context,
  required String productName,
  required String productCode,
  required String category,
  required String price,
  required bool availability,
  required VoidCallback onEditPressed,
}) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        backgroundColor: backgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Product Details', style: sectionTitleStyle),
              const SizedBox(height: 16),
              _detailRow(Icons.inventory_2, 'Product', productName),
              _detailRow(Icons.qr_code, 'Code', productCode),
              _detailRow(Icons.category, 'Category', category),
              _detailRow(Icons.attach_money, 'Price', price),
              _detailRow(
                Icons.storage,
                'Availability',
                availability ? 'Available' : 'Unavailable',
              ),
              const SizedBox(height: 24),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton.icon(
                  onPressed: onEditPressed,
                  icon: Icon(Icons.edit, size: 20, color: invertedTextColor),
                  label: Text('Edit', style: buttonStyle),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

void showOrderDetailDialog({
  required BuildContext context,
  required String orderId,
  required String customerName,
  required String date,
  required String status,
  required String total,
  required VoidCallback onEditPressed,
}) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        backgroundColor: backgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Order Details', style: sectionTitleStyle),
              const SizedBox(height: 16),
              _detailRow(Icons.receipt_long, 'Order ID', orderId),
              _detailRow(Icons.person, 'Customer', customerName),
              _detailRow(Icons.date_range, 'Date', date),
              _detailRow(Icons.info, 'Status', status),
              _detailRow(Icons.payments, 'Total', total),
              const SizedBox(height: 24),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton.icon(
                  onPressed: onEditPressed,
                  icon: Icon(Icons.reviews, size: 20, color: invertedTextColor),
                  label: Text('Review Order', style: buttonStyle),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

Widget _detailRow(IconData icon, String label, String value) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 12),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: secondaryColor, size: 20),
        const SizedBox(width: 8),
        Text('$label: ', style: bodyStyle),
        Expanded(child: Text(value, style: bodyStyle)),
      ],
    ),
  );
}
