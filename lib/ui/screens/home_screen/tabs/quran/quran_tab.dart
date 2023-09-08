import 'package:flutter/material.dart';
import 'package:islami_friday_c9/ui/utils/app_assets.dart';
import 'package:islami_friday_c9/ui/utils/app_colors.dart';
import 'package:islami_friday_c9/ui/utils/constants.dart';

class QuranTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded( flex: 35,child: Image.asset(AppAssets.quranLogo,)),
          SizedBox(height: 4,),
          Divider(color: AppColors.accent, thickness: 2,),
          Text("Sura name", textAlign: TextAlign.center,
           style: TextStyle(fontSize: 25, color: AppColors.accent, fontWeight: FontWeight.w600),),
          Divider(color: AppColors.accent, thickness: 2,),
          Expanded(flex: 65,
           child: ListView.separated(
             itemCount: Constants.suraNames.length,
               itemBuilder: (context, index){
                return Text(Constants.suraNames[index],
                 textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, color: AppColors.accent, fontWeight: FontWeight.w400),);
               },
               separatorBuilder: (_, __) =>  Divider(color: AppColors.accent, thickness: 2,),
           ),)
        ],
      ),
    );
  }
}
