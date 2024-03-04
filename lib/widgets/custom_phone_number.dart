import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:country_pickers/country.dart';
import 'package:lafla/core/utils/app_export.dart';
import 'package:lafla/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  CustomPhoneNumber({
    Key? key,
    required this.country,
    required this.onTap,
    required this.controller,
  }) : super(
          key: key,
        );

  Country country;

  Function(Country) onTap;

  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.onError.withOpacity(1),
        borderRadius: BorderRadius.circular(
          14.h,
        ),
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
        ),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              _openCountryPicker(context);
            },
            child: Padding(
              padding: EdgeInsets.only(
                left: 18.h,
                top: 11.v,
                bottom: 11.v,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 2.h,
                      top: 11.v,
                      bottom: 11.v,
                    ),
                    child: CountryPickerUtils.getDefaultFlagImage(
                      country,
                    ),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.symmetric(vertical: 14.v),
                  //   child: CountryPickerUtils.getDefaultFlagImage(
                  //     country,
                  //   ),
                  // ),
                  // CustomImageView(
                  //   imagePath: ImageConstant.imgArrowDownBlueGray20001,
                  //   height: 16.adaptSize,
                  //   width: 16.adaptSize,
                  //   margin: EdgeInsets.fromLTRB(13.h, 8.v, 11.h, 8.v),
                  // ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 9.h,
                right: 5.h,
              ),
              child: CustomTextFormField(
                width: 244.h,
                controller: controller,
                hintText: "Phone Number",
                hintStyle: CustomTextStyles.bodyMediumBluegray400,
                textInputType: TextInputType.phone,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          Container(
            margin: EdgeInsets.only(
              left: 10.h,
            ),
            width: 60.h,
            child: Text(
              "+${country.phoneCode}",
              style: TextStyle(fontSize: 14.fSize),
            ),
          ),
          const SizedBox(width: 8.0),
          Flexible(
            child: Text(
              country.name,
              style: TextStyle(fontSize: 14.fSize),
            ),
          ),
        ],
      );
  void _openCountryPicker(BuildContext context) => showDialog(
        context: context,
        builder: (context) => CountryPickerDialog(
          searchInputDecoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(fontSize: 14.fSize),
          ),
          isSearchable: true,
          title: Text('Select your phone code',
              style: TextStyle(fontSize: 14.fSize)),
          onValuePicked: (Country country) => onTap(country),
          itemBuilder: _buildDialogItem,
        ),
      );
}
