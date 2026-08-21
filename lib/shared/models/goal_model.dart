class GoalModel {
  final String id;
  final String userId;
  final String name;
  final double targetAmount;
  final double currentAmount;
  final DateTime targetDate;
  final String priority; // low, medium, high
  final String color;
  final String? icon;
  final String? notes;
  final String status; // active, completed, abandoned
  final DateTime createdAt;
  final DateTime? updatedAt;
  final DateTime? completedDate;

  const GoalModel({
    required this.id,
    required this.userId,
    required this.name,
    required this.targetAmount,
    required this.currentAmount,
    required this.targetDate,
    this.priority = 'medium',
    required this.color,
    this.icon,
    this.notes,
    this.status = 'active',
    required this.createdAt,
    this.updatedAt,
    this.completedDate,
  });

  double get progress {
    if (targetAmount <= 0) return 0;
    final p = (currentAmount / targetAmount) * 100;
    return p > 100 ? 100 : p < 0 ? 0 : p;
  }

  double get remaining => targetAmount - currentAmount;
  bool get isCompleted => currentAmount >= targetAmount || status == 'completed';
  bool get isOverdue => DateTime.now().isAfter(targetDate) && status != 'completed';

  GoalModel copyWith({
    String? id,
    String? userId,
    String? name,
    double? targetAmount,
    double? currentAmount,
    DateTime? targetDate,
    String? priority,
    String? color,
    String? icon,
    String? notes,
    String? status,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? completedDate,
  }) {
    return GoalModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      name: name ?? this.name,
      targetAmount: targetAmount ?? this.targetAmount,
      currentAmount: currentAmount ?? this.currentAmount,
      targetDate: targetDate ?? this.targetDate,
      priority: priority ?? this.priority,
      color: color ?? this.color,
      icon: icon ?? this.icon,
      notes: notes ?? this.notes,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      completedDate: completedDate ?? this.completedDate,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'name': name,
    'targetAmount': targetAmount,
    'currentAmount': currentAmount,
    'targetDate': targetDate.toIso8601String(),
    'priority': priority,
    'color': color,
    'icon': icon,
    'notes': notes,
    'status': status,
    'createdAt': createdAt.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
    'completedDate': completedDate?.toIso8601String(),
  };

  factory GoalModel.fromJson(Map<String, dynamic> json) => GoalModel(
    id: json['id'] as String,
    userId: json['userId'] as String,
    name: json['name'] as String,
    targetAmount: (json['targetAmount'] as num).toDouble(),
    currentAmount: (json['currentAmount'] as num).toDouble(),
    targetDate: DateTime.parse(json['targetDate'] as String),
    priority: json['priority'] as String? ?? 'medium',
    color: json['color'] as String,
    icon: json['icon'] as String?,
    notes: json['notes'] as String?,
    status: json['status'] as String? ?? 'active',
    createdAt: DateTime.parse(json['createdAt'] as String),
    updatedAt: json['updatedAt'] != null ? DateTime.parse(json['updatedAt'] as String) : null,
    completedDate: json['completedDate'] != null ? DateTime.parse(json['completedDate'] as String) : null,
  );

  @override
  String toString() => 'GoalModel(id: $id, name: $name, progress: ${progress.toStringAsFixed(1)}%)';
}
