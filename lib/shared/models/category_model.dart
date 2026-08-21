class CategoryModel {
  final String id;
  final String userId;
  final String name;
  final String type; // income, expense
  final String color;
  final String? icon;
  final bool isDefault;
  final bool isArchived;
  final DateTime createdAt;
  final DateTime? updatedAt;

  const CategoryModel({
    required this.id,
    required this.userId,
    required this.name,
    required this.type,
    required this.color,
    this.icon,
    this.isDefault = false,
    this.isArchived = false,
    required this.createdAt,
    this.updatedAt,
  });

  CategoryModel copyWith({
    String? id,
    String? userId,
    String? name,
    String? type,
    String? color,
    String? icon,
    bool? isDefault,
    bool? isArchived,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return CategoryModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      name: name ?? this.name,
      type: type ?? this.type,
      color: color ?? this.color,
      icon: icon ?? this.icon,
      isDefault: isDefault ?? this.isDefault,
      isArchived: isArchived ?? this.isArchived,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'name': name,
    'type': type,
    'color': color,
    'icon': icon,
    'isDefault': isDefault,
    'isArchived': isArchived,
    'createdAt': createdAt.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
  };

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
    id: json['id'] as String,
    userId: json['userId'] as String,
    name: json['name'] as String,
    type: json['type'] as String,
    color: json['color'] as String,
    icon: json['icon'] as String?,
    isDefault: json['isDefault'] as bool? ?? false,
    isArchived: json['isArchived'] as bool? ?? false,
    createdAt: DateTime.parse(json['createdAt'] as String),
    updatedAt: json['updatedAt'] != null ? DateTime.parse(json['updatedAt'] as String) : null,
  );

  @override
  String toString() => 'CategoryModel(id: $id, name: $name, type: $type)';
}
