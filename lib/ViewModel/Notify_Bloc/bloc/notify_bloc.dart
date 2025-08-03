import 'package:bloc/bloc.dart';
import 'package:mechinenoti/Model/notification_Model.dart';
import 'package:mechinenoti/Repository/notify_Repository.dart';
import 'package:meta/meta.dart';

part 'notify_event.dart';
part 'notify_state.dart';

class NotifyBloc extends Bloc<NotifyEvent, NotifyState> {
  final NotifyRepository notifyRepository;
  NotifyBloc(this.notifyRepository) : super(NotifyInitial()) {
    on<FetchNotifyEvent>((event, emit)async{
      emit(NotifyLoading());
      try {
        final notify = await notifyRepository.fetchNotify();
        emit(NotifyLoaded(notify));
      } catch (e) {
        emit(NotifyError(e.toString()));
      }
    });
  }
}
