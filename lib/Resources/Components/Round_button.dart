import 'package:flutter/material.dart';
import 'package:getxmvvm/Resources/colors/app_colors.dart';





class RoundButton extends StatelessWidget {
  final String text;
  final bool loading;
  final VoidCallback onPressed;
  final Color buttonColor, textColor;
  final double height , width;
  const RoundButton(
      {super.key,
      required this.text,
      this.loading = false,
      required this.onPressed,
      this.buttonColor = AppColor.primaryColor,
      this.textColor = AppColor.whiteColor,
         this.height=50,
         this.width=60});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: buttonColor,
          ),
          child: TextButton(
            onPressed: loading?null : onPressed,
            child: Center(
                child: loading
                    ? const RepaintBoundary(
                        child: CircularProgressIndicator(
                        color: AppColor.whiteColor,
                      ))
                    : Text(text,
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(fontSize: 16, color: textColor))),
          )),
    );
  }
}
