import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FailureScreen extends StatelessWidget {
  const FailureScreen({
    super.key,
    this.message,
    this.retry,
  });
  final String? message;
  final VoidCallback? retry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(message ?? "Bir Hata Oluştu"),
            SizedBox(height: 1.h),
            retry != null
                ? FilledButton(
                    onPressed: retry, child: const Text("Yeniden Dene"))
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}
