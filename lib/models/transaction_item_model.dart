class TransactionItemModel {
  final String title;
  final String date;
  final String amount;
  final bool isWithdrawal;

  const TransactionItemModel({
    required this.title,
    required this.date,
    required this.amount,
    required this.isWithdrawal,
  });
}
