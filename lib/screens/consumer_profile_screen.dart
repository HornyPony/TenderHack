import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tender_hack/screens/contractor/contractor_profile_screen.dart';
import 'package:tender_hack/widgets/app_bar.dart';

class ConsumerProfileScreen extends StatefulWidget {
  @override
  _ConsumerProfileScreenState createState() => _ConsumerProfileScreenState();
}

class _ConsumerProfileScreenState extends State<ConsumerProfileScreen> {
  int menuValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: ConsumerProfileBody(),
    );
  }

  appBar(BuildContext context) {
    return AppBar(
      title: Image.asset(
        'assets/images/logo.png',
        width: 100.w,
        height: 30.h,
      ),
      elevation: 3.w,
      actions: [
        PopupMenuButton(
          icon: Icon(
            Icons.menu,
            color: Color(0xFF264B82),
          ),
          onSelected: (value) {
            menuValue = value as int;
            handleClick(menuValue, context);
          },
          color: Color(0xFFE7EEF7),
          itemBuilder: (context) => [
            PopupMenuItem(
              child: Text("Заказчик"),
              value: 1,
            ),
            PopupMenuItem(
              child: Text("Поставщик"),
              value: 2,
            )
          ],
        ),
      ],
    );
  }

  void handleClick(int value, BuildContext context) {
    switch (value) {
      case 1:
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => ContractorProfileScreen(),
          ),
        );
        break;
      case 2:
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => ConsumerProfileScreen(),
          ),
        );
        break;
    }
  }
}

class ConsumerProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headerStack(),
          Padding(
            padding: EdgeInsets.only(
              left: 27.w,
              right: 10.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                aboutCompanyColumn(),
                SizedBox(
                  height: 14.h,
                ),
                Center(
                  child: companyData(),
                ),
                SizedBox(
                  height: 14.h,
                ),
                CompanyContractsData(),
                SizedBox(
                  height: 8.h,
                ),
                makeOrderBtn(),
                SizedBox(
                  height: 14.h,
                ),
                NeedToBuyRow(),
                SizedBox(
                  height: 14.h,
                ),
                MaybeInterestingRow(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget headerStack() {
    return Container(
      height: 200.h,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              color: Color(0xFFE7EEF7),
              height: 60.h,
            ),
          ),
          Positioned(
            top: 30.h,
            left: 17.w,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 76.w,
                  height: 76.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(colors: [
                      const Color(0xFFDB2B21),
                      Colors.white,
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                  ),
                ),
                SizedBox(
                  width: 18.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40.h,
                    ),
                    Container(
                      width: 230.w,
                      child: Text(
                        'Государственное бюджетное учреждение города Москвы Центр поддержки семьи и детства «Планета Семьи» Южного административного округа города Москвы',
                        style: TextStyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF272727)),
                      ),
                    ),
                    SizedBox(
                      height: 9.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        regionColumn(),
                        SizedBox(
                          width: 30.w,
                        ),
                        roleColumn(),
                        SizedBox(
                          width: 50.w,
                        ),
                        organizationTypeColumn(),
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget regionColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Регион',
          style: TextStyle(
            color: Color(0xFF9E9E9E),
            fontSize: 9.sp,
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'г Москва',
          style: TextStyle(
            color: Color(0xFF272727),
            fontSize: 9.sp,
          ),
        ),
      ],
    );
  }

  Widget roleColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Роль',
          style: TextStyle(
            color: Color(0xFF9E9E9E),
            fontSize: 9.sp,
          ),
        ),
      ],
    );
  }

  Widget organizationTypeColumn() {
    return Container(
      width: 80.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Тип организации',
            style: TextStyle(
              color: Color(0xFF9E9E9E),
              fontSize: 9.sp,
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Text(
            'Юридическое лицо',
            style: TextStyle(
              color: Color(0xFF272727),
              fontSize: 9.sp,
            ),
          ),
        ],
      ),
    );
  }

  Widget aboutCompanyColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        aboutCompanyText(),
        SizedBox(
          height: 10.h,
        ),
        companyRegisteredText(),
      ],
    );
  }

  Widget aboutCompanyText() {
    return Text(
      'О компании',
      style: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: Color(0xFF272727),
      ),
    );
  }

  Widget companyRegisteredText() {
    return Text(
      'Компания зарегистрирована на Портале поставщиков с 24 ноября 2020 г.',
      style: TextStyle(
        fontSize: 9.sp,
        color: Color(0xFF272727),
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Widget companyData() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(
        17.w,
        14.w,
        0,
        13.h,
      ),
      color: Color(0xFFE7EEF7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(
              children: [
                INNRow(),
                SizedBox(
                  height: 6.h,
                ),
                KPPRow(),
                SizedBox(
                  height: 6.h,
                ),
                OGRNRow(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget INNRow() {
    return Row(
      children: [
        Text(
          'ИНН',
          style: TextStyle(
            color: Color(0xFF666666),
            fontSize: 9.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          width: 44.w,
        ),
        Text(
          '760404007626',
          style: TextStyle(
            color: Color(0xFF666666),
            fontSize: 9.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Widget KPPRow() {
    return Row(
      children: [
        Text(
          'КПП',
          style: TextStyle(
            color: Color(0xFF666666),
            fontSize: 9.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          width: 45.w,
        ),
        Text(
          '772401001',
          style: TextStyle(
            color: Color(0xFF666666),
            fontSize: 9.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Widget OGRNRow() {
    return Row(
      children: [
        Text(
          'ОГРН',
          style: TextStyle(
            color: Color(0xFF666666),
            fontSize: 9.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          width: 40.w,
        ),
        Text(
          '320774600259285',
          style: TextStyle(
            color: Color(0xFF666666),
            fontSize: 9.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Widget makeOrderBtn() {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color(0xFFDB2B21),
          fixedSize: Size(
            290.w,
            16.h,
          ),
        ),
        onPressed: () {},
        child: Text(
          'СДЕЛАТЬ ЗАКАЗ',
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class CompanyContractsData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(
        17.w,
        14.w,
        0,
        13.h,
      ),
      color: Color(0xFFE7EEF7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: sectionsTitle(
                    'ДАТА ЗАКЛЮЧЕНИЯ',
                  ),
                ),
                Expanded(
                  child: sectionsTitle(
                    'ЦЕНА КОНТРАКТА',
                  ),
                ),
                Expanded(
                  child: sectionsTitle(
                    'ПОСТАВЩИК',
                  ),
                ),
                Expanded(
                  child: sectionsTitle(
                    'ЗАКАЗ',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 6.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: sectionInfo(
                  '18.06.2019 0:00',
                ),
              ),
              Expanded(
                child: sectionInfo(
                  '21970',
                ),
              ),
              Expanded(
                child: sectionInfo(
                  'ООО "ОФИСМАГ"',
                ),
              ),
              Expanded(
                child: sectionInfo(
                  '30 велоцерапторов\n10 кондиционеров\n120 салфеток',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget yourContracts() {
    return Text(
      'Ваши контракты',
      style: TextStyle(
        fontSize: 10.sp,
        fontWeight: FontWeight.w400,
        color: Color(0xFF272727),
      ),
    );
  }

  Widget sectionsTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 6.sp,
        fontWeight: FontWeight.w400,
        color: Color(0xFF666666),
      ),
    );
  }

  Widget sectionInfo(String info) {
    return Text(
      info,
      style: TextStyle(
        fontSize: 6.sp,
        fontWeight: FontWeight.w400,
        color: Color(0xFF272727),
      ),
    );
  }
}

class NeedToBuyRow extends StatefulWidget {
  @override
  _NeedToBuyRowState createState() => _NeedToBuyRowState();
}

class _NeedToBuyRowState extends State<NeedToBuyRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.w,
      height: 190.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          needToBuyContainer(),
          SizedBox(
            width: 10.w,
          ),
          needToBuyContainer(),
          SizedBox(
            width: 10.w,
          ),
          needToBuyContainer(),
        ],
      ),
    );
  }

  Widget needToBuyContainer() {
    return Container(
      width: 110.w,
      decoration: BoxDecoration(
        color: Color(0xFFE7EEF7),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.16),
            spreadRadius: 0,
            blurRadius: 3,
            offset: Offset(2, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(6.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  child: Text(
                    'Не забудьте приобрести',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF35588A),
                      fontSize: 11.sp,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 4.w,
                  vertical: 6.h,
                ),
                child: Column(
                  children: [
                    Container(
                      width: 60.w,
                      height: 60.w,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/soon_photo.png',
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '10,11 ₽',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10.sp,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '27 предложений',
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 8.sp,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Text(
                              'Маркер красивый, вах просто, еще и черный. Пишет черным цветом, как и надо. Удивительно',
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 7.5.sp,
                              ),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MaybeInterestingRow extends StatefulWidget {
  @override
  _MaybeInterestingRowState createState() => _MaybeInterestingRowState();
}

class _MaybeInterestingRowState extends State<MaybeInterestingRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.w,
      height: 190.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          maybeInterestingContainer(),
          SizedBox(
            width: 10.w,
          ),
          maybeInterestingContainer(),
          SizedBox(
            width: 10.w,
          ),
          maybeInterestingContainer(),
        ],
      ),
    );
  }

  Widget maybeInterestingContainer() {
    return Container(
      width: 110.w,
      decoration: BoxDecoration(
        color: Color(0xFFF7E7E7),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.16),
            spreadRadius: 0,
            blurRadius: 3,
            offset: Offset(2, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(6.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  child: Text(
                    'Может быть интересно',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF35588A),
                      fontSize: 11.sp,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 4.w,
                  vertical: 6.h,
                ),
                child: Column(
                  children: [
                    Container(
                      width: 60.w,
                      height: 60.w,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/soon_photo.png',
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '10,11 ₽',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10.sp,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '27 предложений',
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 8.sp,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Text(
                              'Маркер красивый, вах просто, еще и черный. Пишет черным цветом, как и надо. Удивительно',
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 7.5.sp,
                              ),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
