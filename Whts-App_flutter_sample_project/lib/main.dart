import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => new _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  TabController _tabController;
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
          title: new Text("WhatsApp", style: TextStyle(color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.w600),),
          actions: <Widget>[
            
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Icon(Icons.search),
              
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Icon(Icons.more_vert),
            ),
          ],


      bottom: TabBar(
      tabs: [
        new Tab(icon: new Icon(Icons.chat)),
        new Tab(
          icon: new Icon(Icons.photo_library),
        ),
        new Tab(
          icon: new Icon(Icons.call),
        )
      ], indicatorColor: Colors.white,
      controller: _tabController, 
      ),
      ),
      

      body: TabBarView(      
      children: [
        Text("Chat Screen", textAlign: TextAlign.center,style: TextStyle( fontSize: 22.0, fontWeight: FontWeight.w600)),
        Text("Status Screen", textAlign: TextAlign.center,style: TextStyle( fontSize: 22.0, fontWeight: FontWeight.w600)),
        Text("Call Screen", textAlign: TextAlign.center,style: TextStyle( fontSize: 22.0, fontWeight: FontWeight.w600)),
      ],
      controller: _tabController,       

      ),

    );
  }
}

