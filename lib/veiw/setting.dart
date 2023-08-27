import 'package:cafea/mangment/mange.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

class setting extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _setting();
  }
}

class _setting extends State<setting> {
  int num = 5;
  int num1 = 1;
  int num2 = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('home')),
      backgroundColor: Colors.grey.shade300,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        //color: Colors.white,
        child: Row(children: [
          Expanded(
              flex: 7,
              child: Container(
                color: Colors.grey.shade300,
                child: Column(children: [
                  //table bookedup////////////////////////////////////////
                  Expanded(
                    flex: 1,
                    child: Consumer<mange>(builder: (context, val, child) {
                      return Container(
                          padding: EdgeInsets.all(10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.brown.shade200,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(50),
                                  bottomRight: Radius.circular(50))),
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: num + 1,
                              itemBuilder: (context, i) {
                                return i < num
                                    ? Container(
                                        margin: EdgeInsets.all(5),
                                        padding: EdgeInsets.all(5),
                                        height: 100,
                                        width: 150,
                                        decoration: BoxDecoration(
                                            color: Colors.grey.shade300
                                                .withOpacity(0.5),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30))),
                                        child: Center(
                                            child: SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                'images/notbookedup.png',
                                                height: 100,
                                                width: 100,
                                              ),
                                              Text(
                                                '$i',
                                                style: TextStyle(fontSize: 30),
                                              )
                                            ],
                                          ),
                                        )))
                                    : Container(
                                        margin: EdgeInsets.all(5),
                                        padding: EdgeInsets.all(5),
                                        height: 100,
                                        width: 150,
                                        decoration: BoxDecoration(
                                            color: Colors.grey.shade300
                                                .withOpacity(0.5),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30))),
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CircleAvatar(
                                                  backgroundColor: Colors.white,
                                                  child: IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.add,
                                                        color: Colors.black,
                                                      ))),
                                              Text(
                                                'Add Table',
                                                style: TextStyle(fontSize: 20),
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                              }));
                    }),
                  ),
                  //table free//////////////////////////
                  Expanded(
                    flex: 3,
                    child: Consumer<mange>(builder: (context, val, child) {
                      return Container(
                        padding: EdgeInsets.all(10),
                        child: GridView.builder(
                            scrollDirection: Axis.vertical,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2),
                            itemCount: num1 + 1,
                            itemBuilder: (context, i) {
                              return i < num1
                                  ? Container(
                                      margin: EdgeInsets.all(5),
                                      padding: EdgeInsets.all(5),
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.5),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30))),
                                      child: Center(
                                          child: Column(
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Text(
                                              'Type Drink',
                                              style: TextStyle(fontSize: 30),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 9,
                                            child: Container(
                                              padding: EdgeInsets.all(10),
                                              child: ListView.builder(
                                                  itemCount: num2 + 1,
                                                  itemBuilder: (context, i) {
                                                    return i < num2
                                                        ? Card(
                                                            margin:
                                                                EdgeInsets.all(
                                                                    10),
                                                            color: Colors
                                                                .grey.shade300,
                                                            child: ListTile(
                                                              title: Text(
                                                                  'drink $i',style: TextStyle(color: Colors.black,),),
                                                              leading:
                                                                  CircleAvatar(
                                                                backgroundColor:
                                                                    Colors
                                                                        .white,
                                                                child: Image.asset(
                                                                    'images/logo.png'),
                                                              ),
                                                              subtitle:
                                                                  Text('5 \$ '),
                                                                  //to delete drink ////////////////////////////////////
                                                              trailing:IconButton(
                                                                  onPressed:
                                                                      () {},
                                                                  icon:
                                                                      Icon(
                                                                    Icons
                                                                        .delete,
                                                                    color: Colors
                                                                        .black,
                                                                  )),
                                                                  //to edit drink price name///////////////////////////////////
                                                                  onTap: (){},
                                                            ),
                                                            //add drink/////////////////////////////////////
                                                          )
                                                        : Center(
                                                            child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                CircleAvatar(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .white,
                                                                    child: IconButton(
                                                                        onPressed: () {},
                                                                        icon: Icon(
                                                                          Icons
                                                                              .add,
                                                                          color:
                                                                              Colors.black,
                                                                        ))),
                                                                Text(
                                                                  'Add Drink',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          20),
                                                                )
                                                              ],
                                                            ),
                                                          );
                                                  }),
                                            ),
                                          )
                                        ],
                                      )))
                                  : Container(
                                      margin: EdgeInsets.all(5),
                                      padding: EdgeInsets.all(5),
                                      height: 100,
                                      width: 150,
                                      decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.5),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30))),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CircleAvatar(
                                                backgroundColor: Colors.white,
                                                child: IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.add,
                                                      color: Colors.black,
                                                    ))),
                                            Text(
                                              'Add Type Drink',
                                              style: TextStyle(fontSize: 20),
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                            }),
                      );
                    }),
                  )
                ]),
              )),
          //sideBar ////////////////////////////////////////////////////////////
          Expanded(
              flex: 2,
              child: Consumer<mange>(builder: (context, val, child) {
                return Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Card(
                        margin: EdgeInsets.only(
                          top: 20,
                        ),
                        color: val.screen == 0
                            ? Colors.white
                            : Colors.grey.shade300,
                        elevation: 10,
                        child: ListTile(
                          leading: Icon(
                            Icons.home,
                            color: Colors.black,
                          ),
                          title: Text('Home'),
                          onTap: () {
                            val.screenhome();
                            Navigator.of(context).pushReplacementNamed('home');
                          },
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.only(
                          top: 20,
                        ),
                        color: val.screen == 1
                            ? Colors.white
                            : Colors.grey.shade300,
                        elevation: 10,
                        child: ListTile(
                          leading: Icon(
                            Icons.today,
                            color: Colors.black,
                          ),
                          title: Text('ToDay'),
                          onTap: () {
                            val.screentoday();
                            Navigator.of(context).pushReplacementNamed('today');
                          },
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.only(
                          top: 20,
                        ),
                        color: val.screen == 2
                            ? Colors.white
                            : Colors.grey.shade300,
                        elevation: 10,
                        child: ListTile(
                          leading: Icon(
                            Icons.all_inbox,
                            color: Colors.black,
                          ),
                          title: Text('All'),
                          onTap: () {
                            val.screenall();
                            Navigator.of(context).pushReplacementNamed('all');
                          },
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.only(
                          top: 20,
                        ),
                        color: val.screen == 3
                            ? Colors.white
                            : Colors.grey.shade300,
                        elevation: 10,
                        child: ListTile(
                          leading: Icon(
                            Icons.settings,
                            color: Colors.black,
                          ),
                          title: Text('Setting'),
                          onTap: () {
                            val.screensetting();
                            Navigator.of(context)
                                .pushReplacementNamed('setting');
                          },
                        ),
                      )
                    ],
                  ),
                );
              })),
        ]),
      ),
    );
  }
}
