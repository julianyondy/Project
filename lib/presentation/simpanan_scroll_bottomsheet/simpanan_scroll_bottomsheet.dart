import 'package:flutter/material.dart';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import 'bloc/simpanan_scroll_bloc.dart';
import 'models/simpanan_scroll_model.dart';
import 'models/totalsimpananslider_item_model.dart';
import 'widgets/totalsimpananslider_item_widget.dart'; // ignore_for_file: must_be_immutable
         
class SimpananScrollBottomsheet extends StatelessWidget {
  const SimpananScrollBottomsheet({super.key});

  static Widget builder(BuildContext context) {
    return BlocProvider<SimpananScrollBloc>(
      create: (context) => SimpananScrollBloc(SimpananScrollState(
        simpananScrollModelObj: SimpananScrollModel(),
      ))
        ..add(SimpananScrollInitialEvent()),
      child: const SimpananScrollBottomsheet(),
    );
  }
         
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 810.h,
      padding: EdgeInsets.only(
        left: 24.h,
        top: 74.h,
        right: 24.h,
      ),
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          _buildTotalSimpananSlider(context),
          Align(
            alignment: Alignment.topRight,
            child: BlocBuilder<SimpananScrollBloc, SimpananScrollState>(
              builder: (context, state) {
                return Container(
                  height: 10.h,
                  margin: EdgeInsets.only(
                    top: 108.h,
                    right: 10.h,
                  ),
                  child: AnimatedSmoothIndicator(
                    activeIndex: state.sliderIndex,
                    count: state.simpananScrollModelObj
                            ?.totalsimpanansliderItemList.length ??
                        0,
                    axisDirection: Axis.horizontal,
                    effect: ScrollingDotsEffect(
                      spacing: 2,
                      activeDotColor: appTheme.blueGray100,
                      dotColor: appTheme.blueGray100.withOpacity(0.4),
                      dotHeight: 10.h,
                      dotWidth: 10.h,
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTotalSimpananSlider(BuildContext context) {
    return BlocBuilder<SimpananScrollBloc, SimpananScrollState>(
      builder: (context, state) {
        return CarouselSlider.builder(
          options: CarouselOptions(
            height: 128.h,
            initialPage: 0,
            autoPlay: true,
            viewportFraction: 1.0,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              context
                  .read<SimpananScrollBloc>()
                  .add(ChangeSliderIndexEvent(value: index));
            },
          ),
          itemCount: state
                  .simpananScrollModelObj?.totalsimpanansliderItemList.length ??
              0,
          itemBuilder: (context, index, realIndex) {
            TotalsimpanansliderItemModel model = state.simpananScrollModelObj
                    ?.totalsimpanansliderItemList[index] ??
                TotalsimpanansliderItemModel();
            return TotalsimpanansliderItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}

