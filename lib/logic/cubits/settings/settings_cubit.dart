import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(const SettingsState(tempUnit: TempUnits.celcius));

  void toggleTemperature() {
    if (state.tempUnit == TempUnits.celcius) {
      emit(const SettingsState(tempUnit: TempUnits.fahrenheit));
    } else {
      emit(const SettingsState(tempUnit: TempUnits.celcius));
    }
  }
}
