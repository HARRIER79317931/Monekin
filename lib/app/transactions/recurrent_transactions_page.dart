import 'package:flutter/material.dart';
import 'package:monekin/app/transactions/transaction_list.dart';
import 'package:monekin/core/presentation/widgets/empty_indicator.dart';
import 'package:monekin/core/presentation/widgets/transaction_filter/transaction_filters.dart';
import 'package:monekin/i18n/translations.g.dart';

class RecurrentTransactionPage extends StatefulWidget {
  const RecurrentTransactionPage({super.key});

  @override
  State<RecurrentTransactionPage> createState() =>
      _RecurrentTransactionPageState();
}

class _RecurrentTransactionPageState extends State<RecurrentTransactionPage> {
  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(t.recurrent_transactions.title)),
      body: TransactionListComponent(
        filters: const TransactionFilters(isRecurrent: true),
        prevPage: const RecurrentTransactionPage(),
        showRecurrentInfo: true,
        showGroupDivider: false,
        onEmptyList: EmptyIndicator(
            title: t.general.empty_warn,
            description: t.recurrent_transactions.empty),
      ),
    );
  }
}
