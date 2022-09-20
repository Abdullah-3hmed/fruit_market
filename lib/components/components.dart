import 'package:flutter/material.dart';
import 'package:fruit_market/components/constants.dart';
import 'package:fruit_market/models/size_config.dart';

Widget defaultButton({required String text, required VoidCallback onTap}) =>
    GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(16.0),
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
              color: Color(0xFFFFFFFF),
            ),
          ),
        ),
      ),
    );

Widget buildPageViewItem({
  required String title,
  required String description,
  required String image,
}) {
  return Column(
    children: [
      const SizedBox(
        height: 180,
      ),
      Image.asset(
        image,
        height: 200,
      ),
      const SizedBox(
        height: 15.0,
      ),
      Text(
        title,
        style: const TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w600,
          color: Color(0xFF2f2e41),
        ),
      ),
      const SizedBox(
        height: 20.0,
      ),
      Text(
        description,
        style: const TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.w600,
          color: Color(0xFF78787c),
        ),
      ),
    ],
  );
}

Widget defaultButtonWithIcon({
  required VoidCallback onTap,
  required IconData iconData,
  required Color color,
  required String text,
}) =>
    GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(8.0),
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: const BorderRadius.all(
            Radius.circular(8.0),
          ),
          border: Border.all(
            color: const Color(0xFF707070),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: color,
            ),
            const SizedBox(
              width: 16.0,
            ),
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12.0,
                color: Color(0xFF000000),
              ),
            ),
          ],
        ),
      ),
    );

Widget defaultTextFormField({
  TextInputType? keyboardType,
  ValueSetter? onChanged,
  ValueSetter? onSaved,
  int? maxLines,
}) =>
    TextFormField(
      maxLines: maxLines,
      keyboardType: keyboardType,
      onChanged: onChanged,
      onSaved: onSaved,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.transparent,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            color: Color(0xFFCCCCCC),
          ),
        ),
      ),
    );

Widget buildCompleteInfoItem({
  required String text,
  TextInputType? keyboardType,
  int? maxLines,
}) =>
    Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Color(0xFF0c0b0b),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          defaultTextFormField(
            keyboardType: keyboardType,
            maxLines: maxLines,
          ),
        ],
      ),
    );
