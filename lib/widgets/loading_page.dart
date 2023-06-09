import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sign_up_app/core/utils/colors.dart';

class LoadingPage extends StatelessWidget {
  final Widget child;
  final bool isBusy;

  const LoadingPage({Key? key, required this.child, this.isBusy = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          child,
          if (isBusy)
            Container(
              color: Colors.black.withOpacity(0.5),
            ),
          if (isBusy)
            Center(
              child: SpinKitSpinningLines(
                color: kSecondaryColor,
                duration: const Duration(milliseconds: 900),
                size: 100,
              ),
            ),
        ],
      ),
    );
  }
}
