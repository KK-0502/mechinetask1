import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechinenoti/Common/botton_Navigation.dart';
import 'package:mechinenoti/Repository/notify_Repository.dart';
import 'package:mechinenoti/View/Home_Screen/home_Screen.dart';
import 'package:mechinenoti/ViewModel/Notify_Bloc/bloc/notify_bloc.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final NotifyRepository notifyRepository=NotifyRepository();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NotifyBloc(notifyRepository)..add(FetchNotifyEvent()),
        ),
        
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BottonNavigation(),
      ),
    );
  }
}