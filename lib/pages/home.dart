import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'facebook',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.grey.shade800,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt,
              color: Colors.grey.shade800,
            ),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          //post create
          Container(
            height: 120,
            color: Colors.white,
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/user_5.jpeg'),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          height: 46,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            border: Border.all(
                              color: Colors.grey.shade500,
                              width: 1,
                            ),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "What's on your mind?",
                              hintStyle: TextStyle(
                                color: Colors.grey.shade700,
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
                          children: const [
                            Icon(
                              Icons.video_call,
                              color: Colors.red,
                            ),
                            SizedBox(width: 5),
                            Text('Live'),
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        color: Colors.grey.shade700,
                        margin: const EdgeInsets.symmetric(vertical: 14),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.photo,
                              color: Colors.green,
                            ),
                            SizedBox(width: 5),
                            Text('Photo'),
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        color: Colors.grey.shade700,
                        margin: const EdgeInsets.symmetric(vertical: 14),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.location_on,
                              color: Colors.red,
                            ),
                            SizedBox(width: 5),
                            Text('Check in'),
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
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.symmetric(vertical: 10),
            color: Colors.white,
            height: 200,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(width: 10),
                makeStories(
                  storyImage: 'assets/images/story_1.jpeg',
                  userImage: 'assets/images/user_1.jpeg',
                  userName: 'User One',
                ),
                makeStories(
                  storyImage: 'assets/images/story_2.jpeg',
                  userImage: 'assets/images/user_2.jpeg',
                  userName: 'User Two',
                ),
                makeStories(
                  storyImage: 'assets/images/story_3.jpeg',
                  userImage: 'assets/images/user_3.jpeg',
                  userName: 'User Three',
                ),
                makeStories(
                  storyImage: 'assets/images/story_4.jpeg',
                  userImage: 'assets/images/user_4.jpeg',
                  userName: 'User Four',
                ),
                makeStories(
                  storyImage: 'assets/images/story_5.jpeg',
                  userImage: 'assets/images/user_5.jpeg',
                  userName: 'User Five',
                ),
              ],
            ),
          ),

          //post feed
          makeFeed(
            userName: 'User Two',
            userImage: 'assets/images/user_1.jpeg',
            feedTime: '1 hr ago',
            feedText:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            feedImage: 'assets/images/story_1.jpeg',
          ),
          makeFeed(
            userName: 'User Two',
            userImage: 'assets/images/user_2.jpeg',
            feedTime: '1 hr ago',
            feedText:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            feedImage: 'assets/images/story_2.jpeg',
          ),
          makeFeed(
            userName: 'User Two',
            userImage: 'assets/images/user_3.jpeg',
            feedTime: '1 hr ago',
            feedText:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            feedImage: 'assets/images/story_3.jpeg',
          ),
          makeFeed(
            userName: 'User Two',
            userImage: 'assets/images/user4.jpeg',
            feedTime: '1 hr ago',
            feedText:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            feedImage: 'assets/images/story_4.jpeg',
          ),
        ],
      ),
    );
  }

  Widget makeStories({storyImage, userImage, userName}) {
    return AspectRatio(
      aspectRatio: 1.3 / 2,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(storyImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
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
                    border: Border.all(
                      color: Colors.blue,
                      width: 2,
                    ),
                    image: DecorationImage(
                      image: AssetImage(userImage),
                    )),
              ),
              Text(
                userName,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeFeed({userName, userImage, feedTime, feedText, feedImage}) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //header
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(userImage),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              userName,
                              style: TextStyle(
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              feedTime,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_horiz,
                        color: Colors.grey.shade700,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  feedText,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.shade800,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          //photo
          Container(
            height: 240,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(feedImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 20),

          //like and comment
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    makeLike(),
                    Transform.translate(
                      offset: const Offset(-5, 0),
                      child: makeLove(),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      '2.5K',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade800,
                      ),
                    ),
                  ],
                ),
                Text(
                  '400 Comment',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey.shade800,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),

          //like,comment and share
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              makeLikeButton(isActive: true),
              makeCommentButton(),
              makeShareButton(),
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget makeLike() {
    return Container(
      width: 25,
      height: 25,
      decoration: const BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
      ),
      child: const Center(
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
      decoration: const BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
      ),
      child: const Center(
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
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.thumb_up,
              color: isActive ? Colors.blue : Colors.grey,
              size: 18,
            ),
            const SizedBox(width: 5),
            Text(
              'Like',
              style: TextStyle(color: isActive ? Colors.blue : Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeCommentButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.comment,
              color: Colors.grey,
              size: 18,
            ),
            SizedBox(width: 5),
            Text(
              'Comment',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeShareButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.share,
              color: Colors.grey,
              size: 18,
            ),
            SizedBox(width: 5),
            Text(
              'Share',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
