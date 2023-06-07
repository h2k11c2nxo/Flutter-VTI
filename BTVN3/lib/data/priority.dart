enum PriorityTodo {
  high,
  medium,
  low,
}

extension PriorityExtension on PriorityTodo {
  String get label {
    switch (this) {
      case PriorityTodo.high:
        return 'High';
      case PriorityTodo.medium:
        return 'Medium';
      case PriorityTodo.low:
        return 'Low';
      default:
        return '';
    }
  }

  static PriorityTodo fromString(String value) {
    switch (value) {
      case 'high':
        return PriorityTodo.high;
      case 'medium':
        return PriorityTodo.medium;
      case 'low':
        return PriorityTodo.low;
      default:
        return PriorityTodo.low;
    }
  }
}
