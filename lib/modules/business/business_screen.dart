import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nwes_ap/layout/cubit/cubit.dart';
import 'package:nwes_ap/layout/cubit/states.dart';
import 'package:nwes_ap/shared/components/components.dart';

class BusinessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {},
      builder: (context, state)
      {
        var list = NewsCubit.get(context).business;

        return articleBuilder(list);
      },
    );
  }
}