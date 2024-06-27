import 'package:flutter/material.dart';

class Tiles_blue extends StatelessWidget {
  const Tiles_blue({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: Container(
              height: 230,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.blueAccent.shade100,
                  border: Border.all(color: Colors.black12, width: 2),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ActionChip(
                          label: Text(
                            'Active',
                            style: TextStyle(color: Colors.black),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.share_outlined),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Text(
                          "Hello, this is my 1st Batch about mkcl introduction.",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.date_range_outlined,
                              color: Colors.black,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '16 Feb - 9.00am',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://avatars.githubusercontent.com/u/91453437?v=4'),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Mr.Prathamesh More",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 1),
                                  child: Text(
                                    "Flutter Devloper , Amt",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
