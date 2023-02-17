import 'package:flutter/material.dart';

void main() => runApp(ContactProfilePage());

class ContactProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // Scaffold form home property
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            actions: <Widget>[
              IconButton(
                  onPressed: () => print("Contact is starred"),
                  icon: Icon(Icons.star_border),
                  color: Colors.black)
            ],
          ),
          body: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    child: Image.network(
                        "https://avatars.githubusercontent.com/u/79701278?v=4",
                        height: 300,
                        fit: BoxFit.cover),
                  )
                ],
              ),
              Container(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Matheus Cruz",
                        style: TextStyle(fontSize: 30),
                      ),
                    )
                  ],
                ),
              ),
			dividerSeparator(),
              Container(
                margin: const EdgeInsets.only(top: 8, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    buildCallButton(),
                    buildTextButton(),
                    buildVideoButton(),
                    buildEmailButton(),
                    buildDirectionsButton(),
                    buildPayButton()
                  ],
                ),
              ),
			dividerSeparator(),
			  mobilePhoneListTile(),
			  otherPhoneListTile(),
			dividerSeparator(),
			  emailListTile(),
			dividerSeparator(),
			  addressListTile()
            ],
          )),
    );
  }
}

// ========================================= //
//                  WIDGETS                  //

// Divider
Widget dividerSeparator() {
	return Divider(color: Colors.grey);
}

Widget buildCallButton() {
  return Column(
    children: <Widget>[
      IconButton(
        icon: Icon(Icons.call, color: Colors.indigo.shade800),
        onPressed: () {},
      ),
      Text("Call")
    ],
  );
}

Widget buildTextButton() {
  return Column(
    children: <Widget>[
      IconButton(
        icon: Icon(Icons.message, color: Colors.indigo.shade800),
        onPressed: () {},
      ),
      Text("Text")
    ],
  );
}

// Video
Widget buildVideoButton() {
  return Column(
    children: <Widget>[
      IconButton(
        icon: Icon(Icons.video_call, color: Colors.indigo.shade800),
        onPressed: () {},
      ),
      Text("Video")
    ],
  );
}

// Email
Widget buildEmailButton() {
  return Column(children: <Widget>[
    IconButton(
      icon: Icon(Icons.email, color: Colors.indigo.shade800),
      onPressed: () {},
    ),
    Text("Email")
  ]);
}

// Directions
Widget buildDirectionsButton() {
  return Column(
    children: <Widget>[
      IconButton(
        icon: Icon(Icons.directions, color: Colors.indigo.shade800),
        onPressed: () {},
      ),
      Text("Directions")
    ],
  );
}

// Pay
Widget buildPayButton() {
  return Column(children: <Widget>[
	IconButton(
		icon: Icon(Icons.attach_money, color: Colors.indigo.shade800),
		onPressed: () {},
	),
	Text("Pay")
  ]);
}

Widget mobilePhoneListTile() {
	return ListTile(
		leading: Icon(Icons.call),
		title: Text("330-803-3390"),
		subtitle: Text("Mobile"),
		trailing: IconButton(
			icon: Icon(Icons.message),
			color: Colors.indigo.shade800,
			onPressed: () {}, 
		),
	);
}

Widget otherPhoneListTile() {
 return ListTile(
   leading: Text(""),
   title: Text("440-440-3390"),
   subtitle: Text("other"),
   trailing: IconButton(
     icon: Icon(Icons.message),
     color: Colors.indigo.shade500,
     onPressed: () {},
   ),
 );
}

Widget emailListTile() {
	return ListTile(
		leading: Icon(Icons.email),
		title: Text("matheusc039@hotmail.com"),
		subtitle: Text("Work")
	);
}

Widget addressListTile() {
	return ListTile(
		leading: Icon(Icons.location_on),
		title: Text("Toronto, Canada"),
		subtitle: Text("Home"),
		trailing: IconButton(
			icon: Icon(Icons.directions),
			color: Colors.indigo.shade500,
			onPressed: () {},
		),
	);
}