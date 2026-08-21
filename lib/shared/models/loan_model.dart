class LoanModel {
  final String id;
  final String userId;
  final String person;
  final String? phone;
  final String type; // lent, borrowed
  final double totalAmount;
  final double paidAmount;
  final String currency;
  final double? interestRate;
  final DateTime dueDate;
  final String? notes;
  final String status; // active, partial, paid, overdue
  final DateTime createdAt;
  final DateTime? updatedAt;
  final DateTime? paidDate;

  const LoanModel({
    required this.id,
    required this.userId,
    required this.person,
    this.phone,
    required this.type,
    required this.totalAmount,
    required this.paidAmount,
    this.currency = 'LKR',
    this.interestRate,
    required this.dueDate,
    this.notes,
    this.status = 'active',
    required this.createdAt,
    this.updatedAt,
    this.paidDate,
  });

  double get remaining => totalAmount - paidAmount;
  double get progress => totalAmount > 0 ? (paidAmount / totalAmount) * 100 : 0;
  bool get isOverdue => DateTime.now().isAfter(dueDate) && status != 'paid';

  LoanModel copyWith({
    String? id,
    String? userId,
    String? person,
    String? phone,
    String? type,
    double? totalAmount,
    double? paidAmount,
    String? currency,
    double? interestRate,
    DateTime? dueDate,
    String? notes,
    String? status,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? paidDate,
  }) {
    return LoanModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      person: person ?? this.person,
      phone: phone ?? this.phone,
      type: type ?? this.type,
      totalAmount: totalAmount ?? this.totalAmount,
      paidAmount: paidAmount ?? this.paidAmount,
      currency: currency ?? this.currency,
      interestRate: interestRate ?? this.interestRate,
      dueDate: dueDate ?? this.dueDate,
      notes: notes ?? this.notes,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      paidDate: paidDate ?? this.paidDate,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'person': person,
    'phone': phone,
    'type': type,
    'totalAmount': totalAmount,
    'paidAmount': paidAmount,
    'currency': currency,
    'interestRate': interestRate,
    'dueDate': dueDate.toIso8601String(),
    'notes': notes,
    'status': status,
    'createdAt': createdAt.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
    'paidDate': paidDate?.toIso8601String(),
  };

  factory LoanModel.fromJson(Map<String, dynamic> json) => LoanModel(
    id: json['id'] as String,
    userId: json['userId'] as String,
    person: json['person'] as String,
    phone: json['phone'] as String?,
    type: json['type'] as String,
    totalAmount: (json['totalAmount'] as num).toDouble(),
    paidAmount: (json['paidAmount'] as num).toDouble(),
    currency: json['currency'] as String? ?? 'LKR',
    interestRate: (json['interestRate'] as num?)?.toDouble(),
    dueDate: DateTime.parse(json['dueDate'] as String),
    notes: json['notes'] as String?,
    status: json['status'] as String? ?? 'active',
    createdAt: DateTime.parse(json['createdAt'] as String),
    updatedAt: json['updatedAt'] != null ? DateTime.parse(json['updatedAt'] as String) : null,
    paidDate: json['paidDate'] != null ? DateTime.parse(json['paidDate'] as String) : null,
  );

  @override
  String toString() => 'LoanModel(id: $id, person: $person, type: $type, remaining: $remaining)';
}
