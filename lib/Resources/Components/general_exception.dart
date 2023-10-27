import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxmvvm/Resources/colors/app_colors.dart';

class GeneralExceptions extends StatefulWidget {
  final VoidCallback onPress;
  const GeneralExceptions({super.key, required this.onPress});

  @override
  State<GeneralExceptions> createState() => _GeneralExceptionsState();
}



class _GeneralExceptionsState extends State<GeneralExceptions> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Padding(padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: height * 0.15,
          ),
          Icon(Icons.cloud_off,color: AppColor.redColor,size: 50,),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(child: Text('general_exception'.tr,style: TextStyle(color: AppColor.redColor),)),
          ),
          SizedBox(
            height: height * 0.15,
          ),
          InkWell(
            onTap: widget.onPress ,
            child: Container(
              width: 160,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: AppColor.primaryColor,
              ),
              child: Center(
                child: Text(
                    'Retry',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white)),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
