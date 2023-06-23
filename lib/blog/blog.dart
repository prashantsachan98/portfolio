import 'package:flutter/material.dart';
import 'package:portfolio/blog/model.dart';
import 'package:portfolio/main.dart';

class BlogTab extends StatelessWidget {
  final blogPosts = [
    ModelBlogPost(
      title: 'Blog Post 1',
      date: '2022-01-01',
      imageUrl: 'https://picsum.photos/seed/picsum/200/300',
      content:
          'This is the content of Blog Post 1. It is a short description of the blog post.',
    ),
    ModelBlogPost(
      title: 'Blog Post 2',
      date: '2022-02-01',
      imageUrl: 'https://picsum.photos/200/300',
      content:
          'This is the content of Blog Post 2. It is a short description of the blog post.',
    ),
    ModelBlogPost(
      title: 'Blog Post 3',
      date: '2022-03-01',
      imageUrl: 'https://picsum.photos/seed/picsum/200/300',
      content:
          'This is the content of Blog Post 3. It is a short description of the blog post.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: blogPosts.length,
      itemBuilder: (context, index) {
        final blogPost = blogPosts[index];
        return BlogCard(blogPost: blogPost);
      },
    );
  }
}

class BlogCard extends StatelessWidget {
  final ModelBlogPost blogPost;

  const BlogCard({
    required this.blogPost,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: InkWell(
        onTap: () {
          // Handle tap
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.network(
                blogPost.imageUrl,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    blogPost.title,
                    style: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    blogPost.date,
                    style: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(blogPost.content),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
