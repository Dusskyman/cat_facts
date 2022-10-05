import 'package:cat_facts/bloc/cat_fact_bloc/cat_fact_bloc.dart';
import 'package:cat_facts/config/app_router.dart';
import 'package:cat_facts/layouts/main_layout.dart';
import 'package:cat_facts/pages/fact_history_page/widgets/fact_history_cart.dart';
import 'package:cat_facts/theme/app_text_styles.dart';
import 'package:cat_facts/widgets/buttons/general_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FactHistoryPage extends StatefulWidget {
  const FactHistoryPage({
    Key? key,
  }) : super(key: key);

  @override
  State<FactHistoryPage> createState() => _FactHistoryPageState();
}

class _FactHistoryPageState extends State<FactHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      appbar: AppBar(
        backgroundColor: Colors.orangeAccent,
        leading: GeneralButton(
          borderRadius: BorderRadius.circular(64.0),
          width: 48.0,
          height: 48.0,
          child: const Icon(
            Icons.exit_to_app,
            size: 20.0,
          ),
          onTap: () {
            RouteService.instance.pop();
          },
        ),
      ),
      child: Builder(
        builder: (context) {
          if (context.read<CatFactBloc>().state.listSavedCatFacts!.isEmpty) {
            Center(
              child: Text(
                'There is no saved facts yet',
                style: AppTextStyles.textStyle16bold,
              ),
            );
          }
          return ListView.builder(
            itemCount: context.read<CatFactBloc>().state.listSavedCatFacts!.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: FactHistoryCard(
                  catFactDto: context.read<CatFactBloc>().state.listSavedCatFacts![index],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
