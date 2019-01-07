import 'package:flutter/material.dart';
import 'package:instagram_clone/insta_stories.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => index == 0
          ? SizedBox(
              child: InstaStories(),
              height: deviceSize.height * 0.2,
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                  "https://media.licdn.com/dms/image/C4E03AQH11ErhrzvILA/profile-displayphoto-shrink_200_200/0?e=1552521600&v=beta&t=YylvrrSwGJtCiL2tIzAEN6J2f8XjKVU_hPhO2MsUXL0",
                                  //"https://www.carandclassic.co.uk/uploads/cars/yamaha/9874913.jpg"
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "Clayton Andrade",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: null,
                      ),
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: Image.network(
                    "https://www.carandclassic.co.uk/uploads/cars/yamaha/9874913.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.heart,
                          ),
                          SizedBox(
                            width: 16.0,
                          ),
                          Icon(
                            FontAwesomeIcons.comment,
                          ),
                          SizedBox(
                            width: 16.0,
                          ),
                          Icon(
                            FontAwesomeIcons.paperPlane,
                          ),
                        ],
                      ),
                      Icon(
                        FontAwesomeIcons.bookmark,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Liked by pawankumar, pk and 528,331 others",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                              "https://media.licdn.com/dms/image/C4E03AQH11ErhrzvILA/profile-displayphoto-shrink_200_200/0?e=1552521600&v=beta&t=YylvrrSwGJtCiL2tIzAEN6J2f8XjKVU_hPhO2MsUXL0",
                            )
                          )
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Add a comment...",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "1 Day Ago",
                      style: TextStyle(
                        color: Colors.grey
                      ),
                  ),
                ),
              ],
            ),
    );
  }
}
