part of 'notify_bloc.dart';

@immutable
sealed class NotifyState {}

final class NotifyInitial extends NotifyState {}
final class NotifyLoading extends NotifyState {}
final class NotifyLoaded extends NotifyState {
 final List<NotificationModel>notify;
 NotifyLoaded(this.notify);
}
final class NotifyError extends NotifyState {
 final String message;
 NotifyError(this.message);
}