import 'package:common_components/variables.dart';
import 'package:flutter/material.dart';

void showSalesDetailDialog({
  required BuildContext context,
  required String name,
  required String email,
  required String phone,
  required String area,
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
                Text('Sales Details', style: sectionTitleStyle),
                const SizedBox(height: 16),
                _detailRow(Icons.person, 'Name', name),
                _detailRow(Icons.email, 'Email', email),
                _detailRow(Icons.phone, 'Phone', phone),
                _detailRow(Icons.map, 'Area', area),
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

// DIALOG
void showFeedbackPopup({
  required BuildContext context,
  required int type,
  required String message,
  Duration duration = const Duration(seconds: 1),
  VoidCallback? onClose,
}) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      // Start a delayed pop when the dialog builds
      Future.delayed(duration, () {
        if (Navigator.of(context).canPop()) {
          Navigator.of(context).pop();

          if (onClose != null) {
            onClose();
          }
        }
      });

      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        backgroundColor: backgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                type == 1
                    ? Icons.check_circle_outline
                    : type == 2
                    ? Icons.error_outline
                    : Icons.highlight_off,
                size: 48,
                color: primaryColor,
              ),
              const SizedBox(height: 16),
              Text(message, style: bodyStyle, textAlign: TextAlign.center),
            ],
          ),
        ),
      );
    },
  );
}
