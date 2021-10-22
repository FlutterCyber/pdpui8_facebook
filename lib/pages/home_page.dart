import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "facebook",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.blueAccent),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.grey[800],
            onPressed: () {
              print("sfgsf");
            },
          ),
          IconButton(
            icon: Icon(Icons.camera_alt),
            color: Colors.grey[800],
            onPressed: () {
              print("sfgsf");
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          //post create
          Container(
            height: 120,
            color: Colors.white,
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Column(
              children: [
                //search qismi
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/images/user_5.jpeg"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          height: 46,
                          padding: EdgeInsets.only(
                            left: 15,
                            right: 15,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            border: Border.all(
                              width: 1,
                              color: Colors.grey[500]!,
                            ),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "What's on your mind",
                              // textfieldni o'zini chizig'i bo'ladi shuni
                              // yo'qotish un kk bu
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                color: Colors.grey[700]!,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.video_call,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Live"),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 14, bottom: 14),
                        width: 2,
                        color: Colors.grey[200],
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.photo,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Photo"),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 14, bottom: 14),
                        width: 2,
                        color: Colors.grey[200],
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Check in"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //post stories
          Container(
            height: 200,
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(top: 10, bottom: 10),
            color: Colors.white,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: 10,
                ),
                makeStory(
                  storyImage: "assets/images/story_1.jpeg",
                  userImage: "assets/images/user_1.jpeg",
                  userName: "User One",
                ),
                makeStory(
                  storyImage: "assets/images/story_2.jpeg",
                  userImage: "assets/images/user_2.jpeg",
                  userName: "User Two",
                ),
                makeStory(
                  storyImage: "assets/images/story_3.jpeg",
                  userImage: "assets/images/user_3.jpeg",
                  userName: "User Three",
                ),
                makeStory(
                  storyImage: "assets/images/story_4.jpeg",
                  userImage: "assets/images/user_4.jpeg",
                  userName: "User Four",
                ),
                makeStory(
                  storyImage: "assets/images/story_5.jpeg",
                  userImage: "assets/images/user_5.jpeg",
                  userName: "User Five",
                ),
              ],
            ),
          ),

          //post feed
          makeFeed(
              userName: "User Two",
              userImage: "assets/images/user_2.jpeg",
              feedTime: "1 hr age",
              feedText:
                  "baipebfajf dfvadfv dfvbsfs dafafa adfaraf argqaergqa argqaregqer aregqaer",
              feedImage: "assets/images/story_3.jpeg"),
          makeFeed(
              userName: "User three",
              userImage: "assets/images/user_3.jpeg",
              feedTime: "1 hr age",
              feedText:
                  "baipebfajf dfvadfv dfvbsfs dafafa adfaraf argqaergqa argqaregqer aregqaer",
              feedImage: "assets/images/story_4.jpeg"),
          makeFeed(
              userName: "User four",
              userImage: "assets/images/user_4.jpeg",
              feedTime: "1 hr age",
              feedText:
                  "baipebfajf dfvadfv dfvbsfs dafafa adfaraf argqaergqa argqaregqer aregqaer",
              feedImage: "assets/images/story_5.jpeg"),
        ],
      ),
    );
  }

  Widget makeStory({storyImage, userImage, userName}) {
    return AspectRatio(
      aspectRatio: 1.3 / 2,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(storyImage),
              fit: BoxFit.cover,
            )),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.1),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.blue, width: 2),
                    image: DecorationImage(
                      image: AssetImage(userImage),
                      fit: BoxFit.cover,
                    )),
              ),
              Text(
                userName,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeFeed({userName, userImage, feedTime, feedText, feedImage}) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //header
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(userImage),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              userName,
                              style: TextStyle(
                                  color: Colors.grey[900],
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              feedTime,
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.more_horiz,
                        size: 30,
                        color: Colors.grey[600],
                      ),
                      onPressed: () {
                        print("more icon button");
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  feedText,
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 15,
                      height: 1.5,
                      letterSpacing: 0.7),
                ),
                //photo
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //photo
          Container(
              height: 240,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(feedImage),
                fit: BoxFit.cover,
              ))),

          SizedBox(
            height: 20,
          ),
          //likes
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    makeLike(),
                    Transform.translate(
                      offset: Offset(-5, 0),
                      child: makeLove(),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "2.5K",
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Text(
                  "400 comments",
                  style: TextStyle(color: Colors.grey[800], fontSize: 13),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          //like, comments, share
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              makeLikeButton(isActive: true),
              makeCommentButton(),
              makeSharebutton(),
            ],
          ),

          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }

  Widget makeLike() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)),
      child: Center(
        child: Icon(
          Icons.thumb_up,
          color: Colors.white,
          size: 12,
        ),
      ),
    );
  }

  Widget makeLove() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)),
      child: Center(
        child: Icon(
          Icons.favorite,
          color: Colors.white,
          size: 12,
        ),
      ),
    );
  }

  Widget makeLikeButton({isActive}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.thumb_up,
              color: isActive ? Colors.blue : Colors.grey,
              size: 18,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Like",
              style: TextStyle(color: isActive ? Colors.blue : Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeCommentButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.chat,
              color: Colors.grey,
              size: 18,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Comment",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeSharebutton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.share,
              color: Colors.grey,
              size: 18,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Share",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
