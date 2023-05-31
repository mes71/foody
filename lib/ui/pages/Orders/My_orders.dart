import 'package:flutter/material.dart';
import 'package:foody/generated/assets.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'My Orders',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Icon(Icons.keyboard_arrow_up),
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: 700,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              right: 15,
                              bottom: 15,
                              left: 15,
                            ),
                            child: ListView(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        IconButton(
                                          icon: Icon(
                                            Icons.keyboard_arrow_down,
                                            color: Colors.black,
                                          ),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: Colors.deepOrange),
                                              height: 70,
                                              width: 70,
                                              child: Image.asset(
                                                Assets.imagesPlaceholder,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              'profile',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 25,
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: Colors.deepOrange),
                                              height: 70,
                                              width: 70,
                                              child: Image.asset(
                                                Assets.imagesLocation,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              'My Address',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 25,
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: Colors.deepOrange),
                                              height: 70,
                                              width: 70,
                                              child: Image.asset(
                                                Assets.imagesLanguage,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              'Language',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 25,
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: Colors.deepOrange),
                                                height: 70,
                                                width: 70,
                                                child: Image.asset(
                                                  Assets.imagesCoupon,
                                                  color: Colors.white,
                                                )),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              'Coupon',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: Colors.deepOrange),
                                                height: 70,
                                                width: 70,
                                                child: Image.asset(
                                                  Assets.imagesSupport,
                                                  color: Colors.white,
                                                )),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              'Suppurt',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 25,
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: Colors.deepOrange),
                                                height: 70,
                                                width: 70,
                                                child: Image.asset(
                                                  Assets.imagesShippingPolicy,
                                                  color: Colors.white,
                                                )),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              'Privacy pollicy',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 25,
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: Colors.deepOrange),
                                                height: 70,
                                                width: 70,
                                                child: Image.asset(
                                                  Assets.imagesAboutUs,
                                                  color: Colors.white,
                                                )),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              'About us',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 25,
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: Colors.deepOrange),
                                                height: 70,
                                                width: 70,
                                                child: Image.asset(
                                                  Assets.imagesTerms,
                                                  color: Colors.white,
                                                )),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              'Terms&\nconditions',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: Colors.deepOrange),
                                                height: 70,
                                                width: 70,
                                                child: Image.asset(
                                                  Assets.imagesChat,
                                                  color: Colors.white,
                                                )),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              'LiveChat',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 25,
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: Colors.deepOrange),
                                                height: 70,
                                                width: 70,
                                                child: Image.asset(
                                                  Assets.imagesRefund,
                                                  color: Colors.white,
                                                )),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              'Refund Policy',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 25,
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: Colors.deepOrange),
                                                height: 70,
                                                width: 70,
                                                child: Image.asset(
                                                  Assets.imagesCancelation,
                                                  color: Colors.white,
                                                )),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              'Cancellation\n&policy',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 25,
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: Colors.deepOrange),
                                                height: 70,
                                                width: 70,
                                                child: Image.asset(
                                                  Assets.imagesShippingPolicy,
                                                  color: Colors.white,
                                                )),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              'Shopping\n policy',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: Colors.deepOrange),
                                                height: 70,
                                                width: 70,
                                                child: Image.asset(
                                                  Assets.imagesReferAFriend,
                                                  color: Colors.white,
                                                )),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              'Refer',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 25,
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: Colors.deepOrange),
                                                height: 70,
                                                width: 70,
                                                child: Image.asset(
                                                  Assets.imagesWallet,
                                                  color: Colors.white,
                                                )),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              'Wallet',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 25,
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: Colors.deepOrange),
                                                height: 70,
                                                width: 70,
                                                child: Image.asset(
                                                  Assets.imagesLoyal,
                                                  color: Colors.white,
                                                )),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              'Loyalty points',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 25,
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: Colors.deepOrange),
                                                height: 70,
                                                width: 70,
                                                child: Image.asset(
                                                  Assets.imagesDeliveryManJoin,
                                                  color: Colors.white,
                                                )),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              'join as a\nDelivery Man',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: Colors.deepOrange),
                                                height: 70,
                                                width: 70,
                                                child: Image.asset(
                                                  Assets.imagesRestaurantJoin,
                                                  color: Colors.white,
                                                )),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              'join as a \n Restaurant',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 25,
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: Colors.green),
                                                height: 70,
                                                width: 70,
                                                child: Image.asset(
                                                  Assets.imagesLogOut,
                                                  color: Colors.white,
                                                )),
                                            SizedBox(
                                              height: 20,
                                              width: 20,
                                            ),
                                            Text(
                                              'Sign in',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
