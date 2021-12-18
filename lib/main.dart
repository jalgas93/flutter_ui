import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CreditCard(),
  ));
}

class CreditCard extends StatelessWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottom = MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        reverse: true,
        padding: EdgeInsets.only(bottom: bottom),
        child: SafeArea(
          child: Padding(
              padding: EdgeInsets.all(0.8),
              child: Column(
                children: [
                  Card(
                    elevation: 0.5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.8)),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/credit_card.png',
                          fit: BoxFit.fill,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(padding: EdgeInsets.all(8)),
                            Text(
                              '  ' + '**** **** **** 4606',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Padding(
                              padding: EdgeInsets.all(40.0),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'Expiry',
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Text(
                                        'MM/YY',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 50.0,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Code',
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Text(
                                        '***',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.white),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 0.8,
                                  top: 8.0,
                                  right: 18.0,
                                  bottom: 8.0),
                              child: Text(
                                'Card name',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(),
                            ),
                            labelText: 'Credit card Name',
                            labelStyle: TextStyle(fontSize: 18),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(),
                            ),
                            labelText: 'Credit card Expiry Date',
                            labelStyle: TextStyle(fontSize: 18),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(),
                            ),
                            labelText: 'Credit card Code',
                            labelStyle: TextStyle(fontSize: 18),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(),
                            ),
                            labelText: 'Credit card Name',
                            labelStyle: TextStyle(fontSize: 18),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        FlatButton(
                            onPressed: () {},
                            shape: StadiumBorder(),
                            color: Colors.pinkAccent,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 80.0,vertical: 18.0),
                              child: Text('Pay',style: TextStyle(fontSize: 18,color: Colors.white),),
                            ))
                      ],
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
