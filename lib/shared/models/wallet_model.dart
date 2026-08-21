class WalletModel {
  final String id;
  final String userId;
  final String name;
  final String type; // cash, bank, savings, credit_card, e_wallet, other
  final String color; // Hex color
  final String? icon; // Icon name
  final double initialBalance;
  final String currency;
  final bool isHidden;
  final bool isArchived;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final DateTime? archivedAt;

  const WalletModel({
    required this.id,
    required this.userId,
    required this.name,
    required this.type,
    required this.color,
    this.icon,
    required this.initialBalance,
    this.currency = 'LKR',
    this.isHidden = false,
    this.isArchived = false,
    required this.createdAt,
    this.updatedAt,
    this.archivedAt,
  });

  WalletModel copyWith({
    String? id,
    String? userId,
    String? name,
    String? type,
    String? color,
    String? icon,
    double? initialBalance,
    String? currency,
    bool? isHidden,
    bool? isArchived,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? archivedAt,
  }) {
    return WalletModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      name: name ?? this.name,
      type: type ?? this.type,
      color: color ?? this.color,
      icon: icon ?? this.icon,
      initialBalance: initialBalance ?? this.initialBalance,
      currency: currency ?? this.currency,
      isHidden: isHidden ?? this.isHidden,
      isArchived: isArchived ?? this.isArchived,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      archivedAt: archivedAt ?? this.archivedAt,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'name': name,
    'type': type,
    'color': color,
    'icon': icon,
    'initialBalance': initialBalance,
    'currency': currency,
    'isHidden': isHidden,
    'isArchived': isArchived,
    'createdAt': createdAt.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
    'archivedAt': archivedAt?.toIso8601String(),
  };

  factory WalletModel.fromJson(Map<String, dynamic> json) => WalletModel(
    id: json['id'] as String,
    userId: json['userId'] as String,
    name: json['name'] as String,
    type: json['type'] as String,
    color: json['color'] as String,
    icon: json['icon'] as String?,
    initialBalance: (json['initialBalance'] as num).toDouble(),
    currency: json['currency'] as String? ?? 'LKR',
    isHidden: json['isHidden'] as bool? ?? false,
    isArchived: json['isArchived'] as bool? ?? false,
    createdAt: DateTime.parse(json['createdAt'] as String),
    updatedAt: json['updatedAt'] != null ? DateTime.parse(json['updatedAt'] as String) : null,
    archivedAt: json['archivedAt'] != null ? DateTime.parse(json['archivedAt'] as String) : null,
  );

  @override
  String toString() => 'WalletModel(id: $id, name: $name, type: $type)';
}
