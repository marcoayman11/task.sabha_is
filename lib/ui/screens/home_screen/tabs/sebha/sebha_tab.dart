import 'package:flutter/material.dart';
import 'package:islami_friday_c9/ui/utils/app_assets.dart';
import 'package:islami_friday_c9/ui/utils/app_colors.dart';
class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  String text="0";
  int counter=0;
  List <String> arr=["سبحانه اللله","اللله و اكبر"];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: 20,),
              Stack(
                children: [
                  Image.asset(AppAssets.sebhabody,),
                  Image.asset(AppAssets.sebhahead,),
                ],
              ),

              Text("عدد السبحات",style:TextStyle(
                fontSize: 30, color:Colors.black,
              ),textAlign: TextAlign.center,),
              ElevatedButton(onPressed: (){
              text="${++counter}";
              print(counter);
              if(counter==34) {
                text="0";
                counter=0;
                setState(() {});
                index++;
                if(arr.length==index){
                  index=0;
                }
              }
              setState(() {});
            },
              child: Text(text,style:TextStyle(
                fontSize: 20, color:Colors.black,
              ),textAlign: TextAlign.center,),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              backgroundColor:AppColors.primiary,
              fixedSize: Size(100,50)
            ),
            ),
              Card(
              margin: EdgeInsets.all(8),
                shape: OutlineInputBorder(borderRadius: BorderRadius.circular(25)
                ,borderSide: BorderSide(color: Colors.transparent)
                ),
                color: AppColors.primiary,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("${arr[index]}",style:TextStyle(
                        fontSize: 30, color:Colors.white,
                      ),textAlign: TextAlign.center,),
                ),
              ),
            ],
          ),
        )
    );
  }
}
