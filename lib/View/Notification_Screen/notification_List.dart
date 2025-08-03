import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:mechinenoti/ViewModel/Notify_Bloc/bloc/notify_bloc.dart';

class NotificationList extends StatelessWidget {
  const NotificationList({super.key});
  
   String formatTime(String dateTimeString) {
    try {
      final dateTime = DateTime.parse(dateTimeString);
      return DateFormat.jm().format(dateTime); 
    } catch (e) {
      return '';
    }
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotifyBloc, NotifyState>(
      builder: (context, state) {
        if (state is NotifyLoading) {
          return Center(child: CircularProgressIndicator(
            color: Color(0xFF2FDF84),
          ));
        }
        if (state is NotifyLoaded) {
          final nofifyState = state.notify;
          return ListView.separated(
            itemBuilder: (context, index) {
              final notifyOne = nofifyState[index];
              return ListTile(
                leading: SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.network(
                    notifyOne.image!,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        Icon(Icons.broken_image),
                  ),
                ),

                title: Text(
                  notifyOne.title!,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(notifyOne.body!),
                    SizedBox(height: 10),
                    Text(formatTime(notifyOne.timestamp!)),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemCount: nofifyState.length,
          );
        }
        return Container();
      },
    );
  }
}
