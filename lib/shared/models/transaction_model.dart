class TransactionModel {
  final String id;
  final String userId;
  final String type; // income, expense, transfer, loan_received, loan_given, loan_repayment, refund, adjustment
  final double amount;
  final String category;
  final String? wallet;
  final String? targetWallet; // For transfers
  final DateTime date;
  final String? description;
  final String? notes;
  final List<String>? tags;
  final String? location;
  final List<String>? attachmentIds; // Receipt images, etc.
  final bool isRecurring;
  final String? recurringPattern; // daily, weekly, monthly, yearly, custom
  final String? originalCurrency;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt; // Soft delete
  final bool? isSynced;

  const TransactionModel({
    required this.id,
    required this.userId,
    required this.type,
    required this.amount,
    required this.category,
    this.wallet,
    this.targetWallet,
    required this.date,
    this.description,
    this.notes,
    this.tags,
    this.location,
    this.attachmentIds,
    this.isRecurring = false,
    this.recurringPattern,
    this.originalCurrency = 'LKR',
    required this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.isSynced = false,
  });

  TransactionModel copyWith({
    String? id,
    String? userId,
    String? type,
    double? amount,
    String? category,
    String? wallet,
    String? targetWallet,
    DateTime? date,
    String? description,
    String? notes,
    List<String>? tags,
    String? location,
    List<String>? attachmentIds,
    bool? isRecurring,
    String? recurringPattern,
    String? originalCurrency,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    bool? isSynced,
  }) {
    return TransactionModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      type: type ?? this.type,
      amount: amount ?? this.amount,
      category: category ?? this.category,
      wallet: wallet ?? this.wallet,
      targetWallet: targetWallet ?? this.targetWallet,
      date: date ?? this.date,
      description: description ?? this.description,
      notes: notes ?? this.notes,
      tags: tags ?? this.tags,
      location: location ?? this.location,
      attachmentIds: attachmentIds ?? this.attachmentIds,
      isRecurring: isRecurring ?? this.isRecurring,
      recurringPattern: recurringPattern ?? this.recurringPattern,
      originalCurrency: originalCurrency ?? this.originalCurrency,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      isSynced: isSynced ?? this.isSynced,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'type': type,
    'amount': amount,
    'category': category,
    'wallet': wallet,
    'targetWallet': targetWallet,
    'date': date.toIso8601String(),
    'description': description,
    'notes': notes,
    'tags': tags,
    'location': location,
    'attachmentIds': attachmentIds,
    'isRecurring': isRecurring,
    'recurringPattern': recurringPattern,
    'originalCurrency': originalCurrency,
    'createdAt': createdAt.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
    'deletedAt': deletedAt?.toIso8601String(),
    'isSynced': isSynced,
  };

  factory TransactionModel.fromJson(Map<String, dynamic> json) => TransactionModel(
    id: json['id'] as String,
    userId: json['userId'] as String,
    type: json['type'] as String,
    amount: (json['amount'] as num).toDouble(),
    category: json['category'] as String,
    wallet: json['wallet'] as String?,
    targetWallet: json['targetWallet'] as String?,
    date: DateTime.parse(json['date'] as String),
    description: json['description'] as String?,
    notes: json['notes'] as String?,
    tags: List<String>.from(json['tags'] as List? ?? []),
    location: json['location'] as String?,
    attachmentIds: List<String>.from(json['attachmentIds'] as List? ?? []),
    isRecurring: json['isRecurring'] as bool? ?? false,
    recurringPattern: json['recurringPattern'] as String?,
    originalCurrency: json['originalCurrency'] as String? ?? 'LKR',
    createdAt: DateTime.parse(json['createdAt'] as String),
    updatedAt: json['updatedAt'] != null ? DateTime.parse(json['updatedAt'] as String) : null,
    deletedAt: json['deletedAt'] != null ? DateTime.parse(json['deletedAt'] as String) : null,
    isSynced: json['isSynced'] as bool? ?? false,
  );

  @override
  String toString() => 'TransactionModel(id: $id, type: $type, amount: $amount, date: $date)';
}
