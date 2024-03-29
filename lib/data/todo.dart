class Todo {
  final String title;
  final String subtitle;
  bool isDone;

  Todo({
    this.title = '',
    this.subtitle = '',
    this.isDone = false,
  });

  // copyWith function
  Todo copyWith({
    String? title,
    String? subtitle,
    bool? isDone,
  }) {
    return Todo(
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      isDone: isDone ?? this.isDone,
    );
  }

  // from json function
  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      title: json['title'],
      subtitle: json['subtitle'],
      isDone: json['isDone'],
    );
  }

  // to json function
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'subtitle': subtitle,
      'isDone': isDone,
    };
  }

  @override
  String toString() {
    return '''Todo: {
      title: $title\n
      subtitle: $subtitle\n
      isDone: $isDone\n
    }''';
  }
}
