import 'package:caffeine_app/view_models/loading_view_modal.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class LoadingDialog extends StatefulWidget {
  const LoadingDialog({super.key});

  @override
  State<LoadingDialog> createState() => _LoadingDialogState();
}

class _LoadingDialogState extends State<LoadingDialog> {
  @override
  Widget build(BuildContext context) {
    return Consumer<LoadingViewModel>(builder: (context, loadingViewModel, _) {
      return AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        child: loadingViewModel.loading
            ? Stack(
                children: [
                  ModalBarrier(
                    dismissible: false,
                    color: Colors.black.withOpacity(0.4),
                  ),
                  Center(
                    child: SizedBox(
                      width: 250,
                      height: 250,
                      child:
                          LottieBuilder.asset("assets/animated/loading.json"),
                    ),
                  ),
                ],
              )
            : const SizedBox(),
      );
    });
  }
}
