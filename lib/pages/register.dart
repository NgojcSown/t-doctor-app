import 'package:flutter/material.dart';

import '../values/app_style.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
    );
  }

  Widget body() {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 30,
            ),
            height: 268,
            width: 390,
            color: Color(0xff0894D9),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'TDOCTOR',
                  style: AppStyle.h4.copyWith(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                  child: Image.asset(
                'assets/images/BGL.png',
                width: 240,
                height: 50,
              )),
            ]),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.85,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            topLeft: Radius.circular(30),
                          )),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(25),
                            child: Text(
                              'ĐĂNG KÝ',
                              style: AppStyle.h4.copyWith(
                                  color: Color(0xff0894D9),
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 10),
                            child: TextField(
                                decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 20),
                              isDense: true,
                              hintText: "Nhập Số Điện Thoại",
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Image.asset('assets/images/user1.png'),
                              ),
                            )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 10),
                            child: TextFormField(
                                decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 20),
                              isDense: true,
                              hintText: "Nhập Mật Khẩu",
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Image.asset('assets/images/padlock.png'),
                              ),
                              suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon:
                                      Image.asset('assets/images/showpw.png')),
                            )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Container(
                                height: 40,
                                width: 345,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black38,
                                        offset: Offset(2, 3),
                                        blurRadius: 6,
                                      )
                                    ],
                                    color: Color(0xff0894D9),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                                child: TextButton(
                                  child: Text(
                                    'Đăng ký',
                                    style: AppStyle.h5.copyWith(
                                      fontSize: 16,
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                  ),
                                  onPressed: () {},
                                )),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Container(
                                    height: 40,
                                    width: 40,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black38,
                                            offset: Offset(2, 3),
                                            blurRadius: 6,
                                          )
                                        ],
                                        color: Color(0xff0894D9),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    child: TextButton(
                                      child:
                                          Image.asset('assets/images/FB.png'),
                                      onPressed: () {},
                                    )),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, left: 10),
                                child: Container(
                                    height: 40,
                                    width: 40,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black38,
                                            offset: Offset(2, 3),
                                            blurRadius: 6,
                                          )
                                        ],
                                        color: Color(0xffFF816B),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    child: TextButton(
                                      child:
                                          Image.asset('assets/images/GG.png'),
                                      onPressed: () {},
                                    )),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 275),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Bạn Chưa Có Tài Khoản ?',
                                  style: TextStyle(color: Colors.black),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) => RegisterPage()));
                                    },
                                    child: Text('Đăng Ký Ngay')),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 30),
                            child: Container(
                                height: 40,
                                width: 345,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black38,
                                        offset: Offset(2, 3),
                                        blurRadius: 6,
                                      )
                                    ],
                                    color: Color(0xffFFFFFF),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                                child: TextButton(
                                  child: Text(
                                    'Gọi hotline 0287399789',
                                    style: AppStyle.h5.copyWith(
                                      fontSize: 16,
                                      color: Color(0xff0894D9),
                                    ),
                                  ),
                                  onPressed: () {},
                                )),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
