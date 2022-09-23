import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:prueba_juno/utils/colors.dart';

class CardValueWidget extends StatelessWidget {
  const CardValueWidget({Key? key, required this.value}) : super(key: key);
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,

      child: Card(
          elevation: 1,
          color: AppColor.neutral_10,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 30),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          '\$ $value',
                          style: const TextStyle(fontSize: 50),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 80),
                              child: Row(
                                children: const [
                                  Text(
                                    '= 1 USD',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10, left: 10),
                          child: Container(
                            width: 50,
                            height: 20,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              color: AppColor.azulJuno, //blue
                              borderRadius: BorderRadius.circular(45),
                            ),
                            child: const Center(
                                child: Text(
                              'COP',
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ),
                        Container(
                          width: 20,
                          height: 20,
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            color: AppColor.neutral_50,
                            borderRadius: BorderRadius.circular(45),
                          ),
                          child: const Center(
                              child: Text(
                            '¡',
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 150),
                child: Text(DateFormat.MEd().format(DateTime.now()),style: TextStyle(color: AppColor.azulJuno),),
              )
            ],
          )),
    );
  }
}
