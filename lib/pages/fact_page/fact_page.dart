import 'package:auto_size_text/auto_size_text.dart';
import 'package:cat_facts/layouts/main_layout.dart';
import 'package:cat_facts/pages/fact_page/bloc/cat_fact_bloc.dart';
import 'package:cat_facts/theme/app_text_styles.dart';
import 'package:cat_facts/widgets/buttons/general_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FactPage extends StatefulWidget {
  const FactPage({
    Key? key,
  }) : super(key: key);

  @override
  State<FactPage> createState() => _FactPageState();
}

class _FactPageState extends State<FactPage> {
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      appbar: AppBar(
        backgroundColor: Colors.orangeAccent,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<CatFactBloc, CatFactState>(
          builder: (context, state) {
            if (state is CatFactLoadingState) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is CatFactErrorState) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Something went wrong',
                    style: AppTextStyles.textStyle20bold,
                  ),
                  const SizedBox(height: 32.0),
                  GeneralButton(
                    child: const AutoSizeText('Retry'),
                    onTap: () {
                      context.read<CatFactBloc>().add(const GetCatFactEvent());
                    },
                  ),
                ],
              );
            }
            if (state is CatFactSuccessState) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.network(state.currentCatFact.img),
                  ),
                  AutoSizeText(
                    state.currentCatFact.fact,
                    minFontSize: 10,
                    style: AppTextStyles.textStyle20w400,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: GeneralButton(
                            child: const AutoSizeText('Get new fact!'),
                            onTap: () {
                              context
                                  .read<CatFactBloc>()
                                  .add(const GetCatFactEvent());
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
