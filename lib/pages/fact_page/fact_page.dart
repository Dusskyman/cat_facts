import 'package:auto_size_text/auto_size_text.dart';
import 'package:cat_facts/bloc/cat_fact_bloc/cat_fact_bloc.dart';
import 'package:cat_facts/config/app_router.dart';
import 'package:cat_facts/config/app_routes.dart';
import 'package:cat_facts/layouts/main_layout.dart';
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
        leading: GeneralButton(
          borderRadius: BorderRadius.circular(64.0),
          width: 48.0,
          height: 48.0,
          child: const Icon(
            Icons.history,
            size: 20.0,
          ),
          onTap: () {
            RouteService.instance.pushNamed(AppRoutes.routeHistoryFactScreen);
          },
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<CatFactBloc, CatFactState>(
          builder: (context, state) {
            if (context.read<CatFactBloc>().state.currentCatFactStatus == CatFactStatus.loading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (context.read<CatFactBloc>().state.currentCatFactStatus == CatFactStatus.error) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Something went wrong',
                    style: AppTextStyles.textStyle20bold,
                  ),
                  const SizedBox(height: 32.0),
                  GeneralButton(
                    child: AutoSizeText('Retry'),
                    onTap: () {
                      context.read<CatFactBloc>().add(GetCatFactEvent());
                    },
                  ),
                ],
              );
            }
            return AnimatedOpacity(
              duration: Duration(milliseconds: 500),
              opacity: context.read<CatFactBloc>().state.currentCatFactStatus == CatFactStatus.loading ? 0 : 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.network(context.read<CatFactBloc>().state.currentCatFact!.img!),
                  ),
                  AutoSizeText(
                    context.read<CatFactBloc>().state.currentCatFact!.fact!,
                    minFontSize: 10,
                    style: AppTextStyles.textStyle20w400,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: GeneralButton(
                            child: AutoSizeText('Get new fact!'),
                            onTap: () {
                              context.read<CatFactBloc>().add(GetCatFactEvent());
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
