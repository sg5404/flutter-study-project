import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return  AppBar(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 0.3),
      elevation: 0, // 앱바 그림자 제거
      flexibleSpace: Padding(
        padding: const EdgeInsets.only(top: 0, left: 0, right: 0, bottom: 0),
        child: Container(
          height: 74,
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Color.fromRGBO(204, 155, 84, 1.0),
                width: 1.0,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start, // 왼쪽 정렬
            children: [
              // 왼쪽 15%에 이미지
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.11,
                child: Image.asset('images/logo-header.png'),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.063,
              ),
              // 중앙 부분
              Expanded (
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.resolveWith(getBackGroundColor),
                        padding: WidgetStateProperty.all<EdgeInsets>(const EdgeInsets.only(top: 23, left: 50, right: 50, bottom: 23)),
                        foregroundColor: WidgetStateProperty.resolveWith(getTextColor),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(const RoundedRectangleBorder(borderRadius: BorderRadius.zero,),),
                        textStyle: WidgetStateProperty.resolveWith<TextStyle>(getTextStyle),
                      ),
                      child: const Text('조이라운지 소개', style: TextStyle(fontSize: 15)),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.resolveWith(getBackGroundColor),
                        padding: WidgetStateProperty.all<EdgeInsets>(const EdgeInsets.only(top: 23, left: 50, right: 50, bottom: 23)),
                        foregroundColor: WidgetStateProperty.resolveWith(getTextColor),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(const RoundedRectangleBorder(borderRadius: BorderRadius.zero,),),
                        textStyle: WidgetStateProperty.resolveWith<TextStyle>(getTextStyle),
                      ),
                      child: const Text('우수고객 전용관', style: TextStyle(fontSize: 15)),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.resolveWith(getBackGroundColor),
                        padding: WidgetStateProperty.all<EdgeInsets>(const EdgeInsets.only(top: 23, left: 50, right: 50, bottom: 23)),
                        foregroundColor: WidgetStateProperty.resolveWith(getTextColor),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(const RoundedRectangleBorder(borderRadius: BorderRadius.zero,),),
                        textStyle: WidgetStateProperty.resolveWith<TextStyle>(getTextStyle),
                      ),
                      child: const Text('조이포인트 소개', style: TextStyle(fontSize: 15)),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.resolveWith(getBackGroundColor),
                        padding: WidgetStateProperty.all<EdgeInsets>(const EdgeInsets.only(top: 23, left: 50, right: 50, bottom: 23)),
                        foregroundColor: WidgetStateProperty.resolveWith(getTextColor),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(const RoundedRectangleBorder(borderRadius: BorderRadius.zero,),),
                        textStyle: WidgetStateProperty.resolveWith<TextStyle>(getTextStyle),
                      ),
                      child: const Text('포인트 혜택관', style: TextStyle(fontSize: 15)),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.resolveWith(getBackGroundColor),
                        padding: WidgetStateProperty.all<EdgeInsets>(const EdgeInsets.only(top: 23, left: 50, right: 50, bottom: 23)),
                        foregroundColor: WidgetStateProperty.resolveWith(getTextColor),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(const RoundedRectangleBorder(borderRadius: BorderRadius.zero,),),
                        textStyle: WidgetStateProperty.resolveWith<TextStyle>(getTextStyle),
                      ),
                      child: const Text('새소식', style: TextStyle(fontSize: 15)),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.resolveWith(getBackGroundColor),
                        padding: WidgetStateProperty.all<EdgeInsets>(const EdgeInsets.only(top: 23, left: 50, right: 50, bottom: 23)),
                        foregroundColor: WidgetStateProperty.resolveWith(getTextColor),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(const RoundedRectangleBorder(borderRadius: BorderRadius.zero,),),
                        textStyle: WidgetStateProperty.resolveWith<TextStyle>(getTextStyle),
                      ),
                      child: const Text('프로모션', style: TextStyle(fontSize: 15)),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    Container(
                      height : 61,
                      padding: const EdgeInsets.only(top: 2, bottom: 2, left: 5.2, right: 5.2),
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(231, 192, 7, 1.0), 
                        borderRadius: BorderRadius.all(Radius.circular(5))
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'images/gem.png',
                            //fit: BoxFit.cover,
                          ),
                          const Text('혜택 보너스', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900, color: Color.fromRGBO(67, 21, 1, 1.0))),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.13,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text('즐겨찾기', style: TextStyle(fontSize: 12, color: Colors.white)),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('회원가입 >', style: TextStyle(fontSize: 12, color: Colors.white)),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('로그인 >', style: TextStyle(fontSize: 12, color: Colors.white)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
              ),
            ],
          ),
        ),  
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(74);

  static Color getBackGroundColor(Set<WidgetState> states) {
    if(states.contains(WidgetState.hovered)) {
      return const Color.fromRGBO(204, 155, 84, 1);
    }
    return Colors.transparent;
  }

  static Color getTextColor(Set<WidgetState> states) {
    if(states.contains(WidgetState.hovered)) {
      return const Color.fromRGBO(17, 13, 7, 1);
    }
    return Colors.white;
  }

  static TextStyle getTextStyle(Set<WidgetState> states) {
    if(states.contains(WidgetState.hovered)) { 
      return const TextStyle( fontSize: 15, fontWeight: FontWeight.bold);
    }
    return const TextStyle( fontSize: 15);
  }
}