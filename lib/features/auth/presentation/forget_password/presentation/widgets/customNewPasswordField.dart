import 'package:books_bazar_app/core/utils/app_colors.dart';
import 'package:books_bazar_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class Customnewpasswordfield extends StatefulWidget {
  const Customnewpasswordfield({super.key});

  @override
  State<Customnewpasswordfield> createState() => _CustomnewpasswordfieldState();
}

class _CustomnewpasswordfieldState extends State<Customnewpasswordfield> {
  @override
  Widget build(BuildContext context) {
    return Form(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  label: Text('New Password'),
                  labelStyle: AppTextStyle.labelText14,
                  hintText: 'New Password',
                  border: OutlineInputBorder(
                   
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: AppColors.lightBackgroundTextField,
                    ),
                    
                  )
                ),
              ),
              SizedBox(height: 16,),
              TextFormField(
                decoration: InputDecoration(
                  label: Text('Confirm Password'),
                  labelStyle: AppTextStyle.labelText14,
                  hintText: 'Confirm Password',
                  border: OutlineInputBorder(
                   
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: AppColors.lightBackgroundTextField,
                    ),
                    
                  )
                ),
              ),
            ],
          ),
        );
  }
}