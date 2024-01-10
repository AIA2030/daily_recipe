import 'package:daily_recipe/models/ads.model.dart';
import 'package:equatable/equatable.dart';

abstract class AdsState extends Equatable {
  const AdsState();

  @override
  List<Object> get props => [];
}

class AdsLoading extends AdsState {}

class AdsLoaded extends AdsState {
  final List<Ads> adsList;
  const AdsLoaded(this.adsList);

  @override
  List<Object> get props => [adsList];
}

class AdsError extends AdsState {}

// class AdsInitial extends AdsState {}
