import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:mental_health/core/theme.dart';

class MusicPlayerScreen extends StatelessWidget {
  const MusicPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: DefaultColors.white,
        elevation: 0,
        leading: GestureDetector(
          child: Image.asset('assets/down_arrow.png'),
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          Image.asset('assets/transcript_icon.png'),
          const SizedBox(width: 16),
        ],
      ),
      backgroundColor: DefaultColors.white,
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Artwork
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/child_with_dog.png',
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            // Text(title)
            Text('Rain On Glass', style: Theme.of(context).textTheme.labelLarge,),
            Text('By: Painting with Passion', style: Theme.of(context).textTheme.labelSmall,),
            // Text(autor name)
            // Progress bar
            const Spacer(),
            ProgressBar(
              progress: Duration(milliseconds: 1000),
              total: Duration(milliseconds: 5000),
              baseBarColor: DefaultColors.lightpink,
              thumbColor: DefaultColors.pink,
              progressBarColor: DefaultColors.pink,
              onSeek: (duration) {
                print('User selected a new time: $duration');

              },
            ),
            // Action button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.shuffle, color: DefaultColors.pink,),
                ),
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.skip_previous, color: DefaultColors.pink,),
                ),
                IconButton(
                  iconSize: 80,
                  onPressed: (){},
                  icon: Icon(Icons.pause_circle_filled, color: DefaultColors.pink,),
                ),
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.skip_next, color: DefaultColors.pink,),
                ),
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.repeat, color: DefaultColors.pink,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}