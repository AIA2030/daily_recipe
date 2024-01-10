part of 'ads_bloc.dart';

abstract class AdsEvent extends Equatable {
  const AdsEvent();
}

class AdsEventStarted extends AdsEvent {
  final int adsId;
  final String query;

  const AdsEventStarted(this.adsId, this.query);

  @override
  List<Object> get props => [];
}
