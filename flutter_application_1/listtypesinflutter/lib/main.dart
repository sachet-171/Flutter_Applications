import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(MyApp());
}

class Video {
  final String title;
  final String userName;
  final String thumbnailUrl;
  final String videoUrl;

  Video({
    required this.title,
    required this.userName,
    required this.thumbnailUrl,
    required this.videoUrl,
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parba Bazzar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<Video> videos = [
    Video(
      title: "Decorative",
      userName: "Maya Decorative",
      thumbnailUrl: "assets/girl.jpg",
      videoUrl: "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4",
    ),
    Video(
      title: "pandit",
      userName: "Rajaram",
      thumbnailUrl: "https://via.placeholder.com/150",
      videoUrl: "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4",
    ),
    Video(
      title: "singer",
      userName: "Nepatya",
      thumbnailUrl: "assets/girl.jpg",
      videoUrl: "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4",
    ),
    Video(
      title: "Hotel",
      userName: "Siraichuli",
      thumbnailUrl: "https://via.placeholder.com/150",
      videoUrl: "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4",
    ),
    Video(
      title: "Restaurant",
      userName: "Mimosa",
      thumbnailUrl: "assets/girl.jpg",
      videoUrl: "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4",
    ),
    Video(
      title: "Decorative",
      userName: "Maya Decorative",
      thumbnailUrl: "https://via.placeholder.com/150",
      videoUrl: "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4",
    ),
    // Add more videos as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade400,
        title: Row(
          children: [
            ClipOval(
              child: Image.asset(
                'assets/girl.jpg',
                height: 32,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              child: Text(
                'Parba Bazzar',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: videos.length,
        itemBuilder: (context, index) {
          final video = videos[index];
          return GestureDetector(
            onTap: () {
              // Handle video tap, maybe navigate to video detail page
            },
            child: Card(
              color: Colors.blue.shade100,
              margin: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  if (video.videoUrl != null && video.thumbnailUrl != null)
                    ChewieListItem(video: video),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          video.title,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'by ${video.userName}',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
            backgroundColor: Colors.blue.shade300,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: "Logout",
          )
        ],
        onTap: (int index) {
          // Handle navigation
          if (index == 1) {
            // Navigate to categories screen
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CategoriesScreen()),
            );
          }
        },
      ),
    );
  }
}

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
            backgroundColor: Colors.blue.shade300,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: "Logout",
          )
        ],
        onTap: (int index) {
          // Handle navigation
          if (index == 0) {
            // Navigate to home screen
            Navigator.pop(context); // Go back to previous screen
          } else if (index == 2) {
            // Perform logout
            // For example, pop all the routes and go to the login screen
            Navigator.pushNamedAndRemoveUntil(
              context,
              '/login',
              (Route<dynamic> route) => false,
            );
          }
        },
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(20, (index) {
          return Center(
            child: Text(
              'Category ${index + 1}',
              style: TextStyle(fontSize: 20),
            ),
          );
        }),
      ),
    );
  }
}

class ChewieListItem extends StatefulWidget {
  final Video video;

  ChewieListItem({required this.video});

  @override
  _ChewieListItemState createState() => _ChewieListItemState();
}

class _ChewieListItemState extends State<ChewieListItem> {
  late ChewieController _chewieController;
  late VideoPlayerController _videoPlayerController;
  bool _isVideoReady = false;

  @override
  void initState() {
    super.initState();
    if (widget.video.videoUrl != null) {
      _videoPlayerController = VideoPlayerController.network(
        widget.video.videoUrl,
      );
      _chewieController = ChewieController(
        videoPlayerController: _videoPlayerController,
        autoPlay: false,
        looping: false,
        errorBuilder: (context, errorMessage) {
          return Center(
            child: Text(
              errorMessage ?? 'An error occurred',
              style: TextStyle(color: Colors.white),
            ),
          );
        },
        // Add a custom placeholder while the video is loading
        placeholder: Container(
          color: Colors.grey[300],
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      );

      // Listen for video player controller changes
      _videoPlayerController.addListener(() {
        if (_videoPlayerController.value.isInitialized &&
            !_videoPlayerController.value.isPlaying) {
          setState(() {
            _isVideoReady = true;
          });
        }
      });
    } else {
      // Handle null video URL
      print("Error: Video URL is null.");
    }
  }

  @override
  void dispose() {
    super.dispose();
    _chewieController.dispose();
    _videoPlayerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.video.videoUrl != null && _isVideoReady) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Chewie(
          controller: _chewieController,
        ),
      );
    } else {
      // If the video URL is null or video is not ready, show a placeholder or error message
      return Container(
        height: 200, // Placeholder height
        color: Colors.grey[300],
        child: Center(
          child: Text(
            "Video not available",
            style: TextStyle(fontSize: 16.0),
          ),
        ),
      );
    }
  }
}
