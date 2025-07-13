import 'package:counter/core/utils/app_const.dart';
import 'package:counter/core/widgets/app_button.dart';
import 'package:counter/core/widgets/my_app_bar.dart';
import 'package:counter/features/counter/bloc/counter_bloc_bloc.dart';
import 'package:counter/features/counter/presentataion/widgets/counter_reset_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBlocBloc>(context);

    return Scaffold(
      appBar: MyAppBar(AppBarTitleText: AppConst.APPBAR_TITLE),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  AppButton(
                    icon: Icons.remove,
                    onTap: () {
                      counterBloc.add(DecreaseCounterEvent());
                    },
                  ),
                  BlocBuilder<CounterBlocBloc, int>(
                    builder: (context, state) {
                      return Text(
                        state.toString(),
                        style: Theme.of(context).textTheme.headlineLarge,
                      );
                    },
                  ),
                  AppButton(
                    icon: Icons.add,
                    onTap: () {
                      counterBloc.add(IncreaseCounterEvent());
                    },
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: 60.h),
              child: CounterResetButton(counterBloc: counterBloc),
            ),
          ],
        ),
      ),
    );
  }
}
