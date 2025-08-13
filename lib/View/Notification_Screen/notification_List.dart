import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:mechinenoti/ViewModel/Notify_Bloc/bloc/notify_bloc.dart';

class NotificationList extends StatelessWidget {
  const NotificationList({super.key});
   
   //This fuction for formating the date(12/10/2025 10:45 pm to 12/10/2025 or time is also)
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
              return Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                    child: Image.network(
                      notifyOne.image!,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) =>
                          Icon(Icons.broken_image),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          notifyOne.title!,
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(notifyOne.body!,maxLines: 1,overflow:TextOverflow.ellipsis),
                      SizedBox(height: 10),
                      Text(formatTime(notifyOne.timestamp!)),
                    ],
                                    )
                      ],
                    ),
                  ),
                  
                    ],
                  ),
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
