import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConsumerMainPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConsumerMainPageBody(),
    );
  }
}

class ConsumerMainPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          left: 5.w,
          top: 18.h,
        ),
        child: Column(
          children: [
            Image.asset('assets/images/categories_image.png'),
            SizedBox(
              height: 18.h,
            ),
            Image.asset('assets/images/suggestions_image.png'),
            SizedBox(
              height: 18.h,
            ),
            Image.asset('assets/images/popular_image.png'),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NeedToBuyContainer(),
                MaybeInterestingContainer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NeedToBuyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.w,
      color: Color(0xFFE7EEF7),
      child: Padding(
        padding: EdgeInsets.all(6.0.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Не забыть купить',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF35588A),
                    fontSize: 15.sp,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
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
                      width: 160.w,
                      height: 160.w,
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
                            fontSize: 16.sp,
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
                            fontSize: 10.sp,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Container(
                      height: 40.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Text(
                              'Маркер красивый, вах просто, еще и черный. Пишет черным цветом, как и надо. Удивительно',
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 12.sp,
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

class MaybeInterestingContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.w,
      color: Color(0xFFF7E7E7),
      child: Padding(
        padding: EdgeInsets.all(6.0.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  child: Text(
                    'Может быть интересно',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF35588A),
                      fontSize: 15.sp,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12.h,
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
                      width: 160.w,
                      height: 160.w,
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
                            fontSize: 16.sp,
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
                            fontSize: 10.sp,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Container(
                      height: 40.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Text(
                              'Маркер красивый, вах просто, еще и черный. Пишет черным цветом, как и надо. Удивительно',
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 12.sp,
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
