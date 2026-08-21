class UserModel {
  final String id;
  final String? email;
  final String? name;
  final String? phone;
  final String? bio;
  final String? avatarUrl;
  final String? preferredCurrency;
  final DateTime createdAt;
  final DateTime? updatedAt;

  const UserModel({
    required this.id,
    this.email,
    this.name,
    this.phone,
    this.bio,
    this.avatarUrl,
    this.preferredCurrency = 'LKR',
    required this.createdAt,
    this.updatedAt,
  });

  UserModel copyWith({
    String? id,
    String? email,
    String? name,
    String? phone,
    String? bio,
    String? avatarUrl,
    String? preferredCurrency,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return UserModel(
      id: id ?? this.id,
      email: email ?? this.email,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      bio: bio ?? this.bio,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      preferredCurrency: preferredCurrency ?? this.preferredCurrency,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'email': email,
    'name': name,
    'phone': phone,
    'bio': bio,
    'avatarUrl': avatarUrl,
    'preferredCurrency': preferredCurrency,
    'createdAt': createdAt.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
  };

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    id: json['id'] as String,
    email: json['email'] as String?,
    name: json['name'] as String?,
    phone: json['phone'] as String?,
    bio: json['bio'] as String?,
    avatarUrl: json['avatarUrl'] as String?,
    preferredCurrency: json['preferredCurrency'] as String? ?? 'LKR',
    createdAt: DateTime.parse(json['createdAt'] as String),
    updatedAt: json['updatedAt'] != null ? DateTime.parse(json['updatedAt'] as String) : null,
  );

  @override
  String toString() => 'UserModel(id: $id, name: $name, email: $email)';
}
