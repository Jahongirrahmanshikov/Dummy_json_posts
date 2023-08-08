class PostModel {
  List<Post>? posts;
  int? total;
  int? skip;
  int? limit;

  PostModel({
    this.posts,
    this.total,
    this.skip,
    this.limit,
  });

  factory PostModel.fromJson(Map<String, Object?> json) {
    return PostModel(
      posts: (json['posts'] as List).map((e) => Post.fromJson(e)).toList(),
      total: json['total'] as int?,
      skip: json['skip'] as int?,
      limit: json['limit'] as int?,
    );
  }

  @override
  String toString() {
    return 'PostModel(posts: $posts, total: $total, skip: $skip, limit: $limit)';
  }
}

class Post {
  int? id;
  String? title;
  String? body;
  int? userId;
  List<Object?>? tags;
  int? reactions;

  Post({
    this.id,
    this.title,
    this.body,
    this.userId,
    this.tags,
    this.reactions,
  });

 factory Post.fromJson(Map<String, Object?> json) {
  return Post(
    id: json['id'] as int?,
    title: json['title'] as String?,
    body: json['body'] as String?,
    userId: json['userId'] as int?,
    tags: (json['tags'] as List<Object?>?)?.toList(),
    reactions: json['reactions'] as int?,
  );
}

  @override
  String toString() {
    return 'Post(id: $id, title: $title, body: $body, userId: $userId, tags: $tags, reaction: $reactions)';
  }
}
