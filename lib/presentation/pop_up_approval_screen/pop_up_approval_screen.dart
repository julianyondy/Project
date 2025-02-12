import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/pop_up_approval_bloc.dart';
import 'models/pop_up_approval_model.dart';

class PopUpApprovalScreen extends StatelessWidget {
  const PopUpApprovalScreen({super.key});

  static Widget builder(BuildContext context) {
    return BlocProvider<PopUpApprovalBloc>(
      create: (context) => PopUpApprovalBloc(PopUpApprovalState(
        popUpApprovalModelObj: const PopUpApprovalModel(),
      ))
        ..add(PopUpApprovalInitialEvent()),
      child: const PopUpApprovalScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PopUpApprovalBloc, PopUpApprovalState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                left: 28.h,
                top: 28.h,
                right: 28.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage8,
                    height: 388.h,
                    width: double.maxFinite,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

