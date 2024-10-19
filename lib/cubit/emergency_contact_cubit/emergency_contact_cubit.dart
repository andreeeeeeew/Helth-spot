import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'emergency_contact_state.dart';

class EmergencyContactCubit extends Cubit<EmergencyContactState> {
  EmergencyContactCubit() : super(EmergencyContactInitial());
  String emergencyContact = '';
  PlatformFile? pickedFile;

  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;
      pickedFile = result.files.first;
      emit(EmergencyContactSuccess());
  }


}
