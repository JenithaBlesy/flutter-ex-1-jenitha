import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Comics Reader',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Comics Reader', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.indigo,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Welcome Section
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Welcome User!!',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.call, color: Colors.green),
                        SizedBox(width: 20),
                        Icon(Icons.person, color: Colors.blue),
                      ],
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white,
                      ),
                      child: Text('Submit'),
                    ),
                  ],
                ),

                SizedBox(height: 20),

                // Search Section
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),

                SizedBox(height: 20),

                // Image Section
                Center(
                  child: Column(
                    children: [
                      Image.network(
                        'https://png.pngtree.com/png-vector/20230815/ourmid/pngtree-cartoon-grandmother-with-hat-reading-comic-book-sticker-art-clipart-vector-png-image_6954902.png',
                        height: 180,
                      ),
                      SizedBox(height: 10),
                      Text("Enjoy your comics!",
                          style: TextStyle(
                              fontSize: 16, fontStyle: FontStyle.italic)),
                    ],
                  ),
                ),

                SizedBox(height: 20),

                // Popular Genres Header
                Text("Popular Genres",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

                SizedBox(height: 10),

                // Genres in multiple rows
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: _buildGenreTile("Romantic Tales ❤️",
                                "Love stories & heartwarming moments", Colors.pink)),
                        SizedBox(width: 10),
                        Expanded(
                            child: _buildGenreTile("Mystery Chronicles 🕵️‍♂️",
                                "Detective cases & thrilling secrets", Colors.deepPurple)),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                            child: _buildGenreTile("Sci-Fi Adventures 🚀",
                                "Explore galaxies & beyond", Colors.blue)),
                        SizedBox(width: 10),
                        Expanded(
                            child: _buildGenreTile("Horror Nights 👻",
                                "Spooky stories that will give you chills", Colors.red)),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                            child: _buildGenreTile("Fantasy World 🧚‍♂️",
                                "Magic, myths & wonders", Colors.green)),
                        SizedBox(width: 10),
                        Expanded(
                            child: _buildGenreTile("Comedy Funnies 😂",
                                "Laugh-out-loud stories", Colors.orange)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Custom Genre Tile Widget
  Widget _buildGenreTile(String title, String subtitle, Color color) {
    return Card(
      color: color.withOpacity(0.2),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Icon(Icons.book, color: color, size: 30),
        title: Text(title,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.black54),
        onTap: () {
          // TODO: Navigate to Genre Page
        },
      ),
    );
  }
}