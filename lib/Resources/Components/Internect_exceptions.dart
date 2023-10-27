import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxmvvm/Resources/colors/app_colors.dart';

class InternetExceptions extends StatefulWidget {
  final VoidCallback onPress;
  const InternetExceptions({super.key, required this.onPress});

  @override
  State<InternetExceptions> createState() => _InternetExceptionsState();
}



class _InternetExceptionsState extends State<InternetExceptions> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Padding(padding: EdgeInsets.symmetric(horizontal: 20),
    child: Column(
        children: [
          SizedBox(
            height: height * 0.1,
          ),
          Icon(Icons.cloud_off,color: AppColor.redColor,size: 50,),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(child: Text('internet_exception'.tr,style: TextStyle(color: AppColor.redColor),)),
          ),
          SizedBox(
            height: height * 0.1,
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
