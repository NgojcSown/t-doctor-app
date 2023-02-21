import 'package:flutter/material.dart';
import 'package:t_doctor_app/pages/login.dart';
import 'package:t_doctor_app/values/app_style.dart';


class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: body(),
    );
  }

  Widget body(){
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    child: Image.asset('assets/images/logomain.png'),                
                    ),
                 ),          
              ),
              Container(
                alignment: Alignment.center,
                child: Text('An tâm sống khoẻ cùng \n TDoctor',
                style: AppStyle.h4.copyWith(
                  color: Color.fromRGBO(8, 148, 217, 1),
                  fontWeight: FontWeight.w800,
                ),),
              ),
              Container(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text('Chăm sóc sức khoẻ và tư vấn miễn phí',),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                      height: 40,
                      width: 345,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        boxShadow: [BoxShadow(
                                color: Colors.black38,
                                offset: Offset(2 , 3),
                                blurRadius: 6,
                      )],
                      color: Color(0xff0894D9),
                      borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                  	  child: TextButton(                      
                      child: Text('Đăng Nhập',style: AppStyle.h5.copyWith(                    
                        fontSize: 16,
                        color: Color.fromRGBO(255, 255, 255, 1),                   
                      ),),
                      onPressed: () { 
                          Navigator.push(context, MaterialPageRoute(builder: (_) => LoginPage()));
                       },)                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                      height: 40,
                      width: 345,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        boxShadow: [BoxShadow(
                                color: Colors.black38,
                                offset: Offset(2 , 3),
                                blurRadius: 6,
                      )],
                      color: Color(0xffFF4852),
                      borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                  	  child: TextButton(                      
                      child: Text('Tạo Tài Khoản',style: AppStyle.h5.copyWith(                    
                        fontSize: 16,
                        color: Color.fromRGBO(255, 255, 255, 1),                   
                      ),),
                      onPressed: () { 

                       },)                  
                ),
              ),
            ],
          ),
        ),
    );
  }
}