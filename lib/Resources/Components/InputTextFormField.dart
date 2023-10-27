
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxmvvm/Resources/Components/IconFactory.dart';
import 'package:getxmvvm/Resources/colors/app_colors.dart';
import 'package:getxmvvm/ViewModels/FactoryIconModel/factoryPhoneIconViweModel.dart';


class InputTextFormField extends StatelessWidget {
  final TextEditingController myController;
  final FocusNode myFocusNode;
  final FormFieldSetter onFiledSubmittedValue;
  final FormFieldValidator onValidateValue;
  final TextInputType textInputType;
  final String hintText;
  final bool obscureText;
  final bool enable, autoFocus;
  final String iconName; // Add iconName
  final int? maxLines;
  final ValueChanged<String>? onChanged;
  const InputTextFormField({
    Key? key,
    required this.myController,
    required this.myFocusNode,
    required this.onFiledSubmittedValue,
    required this.onValidateValue,
    required this.textInputType,
    required this.hintText,
    required this.obscureText,
    this.enable = true,
    this.autoFocus = false,
    required this.iconName,
    this.maxLines=1,
    this.onChanged,
    // Add iconName as a parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    //print("build");
    final StatelessWidget icon = IconFactory.getIcon(iconName); // Get the icon based on iconName
final FactoryIconForPhoneNumber factoryIconForPhoneNumber = Get.put(FactoryIconForPhoneNumber());


    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        decoration: BoxDecoration( // Set the same border properties for the Container
          color: Theme.of(context).brightness == Brightness.dark
              ? Colors.black // Set black border color for dark mode
              : Colors.white,
          border: Border.all(
            color: AppColor.textFieldDefaultFocus,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(9)),
        ),
        child: TextFormField(
          onChanged: onChanged,
          maxLines: maxLines,
          onTapOutside: (event) {
            FocusScope.of(context).unfocus();
          },
          controller: myController,
          focusNode: myFocusNode,
          onFieldSubmitted: onFiledSubmittedValue,
          validator: onValidateValue,
          keyboardType: textInputType,
          obscureText: obscureText,
          autofocus: autoFocus,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(height: 0, fontSize: 19),
          decoration: InputDecoration(
            prefixIcon: iconName == "phone"
                ? Obx((){
              return InkWell(
                onTap: () {
                  showCountryPicker(
                    context: context,
                    showPhoneCode: true,
                    favorite: ['+92', 'PK'],
                    onSelect: (Country country) {
                      factoryIconForPhoneNumber.changeCountryCode(
                          country.phoneCode.toString());
                    },
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      IconFactory.getIcon(
                          'phone'), //
                      SizedBox(width: 5,),// Using the IconFactory to get the phone icon
                      Center(child: Text('+${factoryIconForPhoneNumber.getCountryCode.toString()} ', style: Theme.of(context).textTheme.bodyMedium!.copyWith(height: 0, fontSize: 17),)),
                      Text("|", style: Theme.of(context).textTheme.bodyMedium!.copyWith(height: 0, fontSize: 17),),
                    ],
                  ),
                ),
              );
            })
                : icon,
            iconColor: Theme.of(context).colorScheme.primary, // Use the icon
            enabled: enable,
            hintText: hintText,
            contentPadding: const EdgeInsets.all(15),
            hintStyle:
                Theme.of(context).textTheme.bodyMedium!.copyWith(height: 0),
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.textFieldDefaultFocus),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.secondaryColor),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.alertColor),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide:
                  BorderSide(color: AppColor.textFieldDefaultBorderColor),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
          ),
        ),
      ),
    );
  }
}


