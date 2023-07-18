import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import 'package:shaded_app_freelancer/_core/widgets/custom_snackbar_toast_widget.dart';

part 'edit_user_state.dart';

class EditUserCubit extends Cubit<EditUserState> {
  EditUserCubit() : super(EditUserInitial());

  static EditUserCubit get(context) => BlocProvider.of(context);

  Future<void> deleteDriver(driverId) async {
    try {
      String apiUrl = 'http://extreme.cx/public/api/profile/deleteDriver';
      var response = await http.post(Uri.parse(apiUrl), body: {
        'driver_id': driverId,
      });

      if (response.statusCode == 200) {
        emit(DriverProfileDeleted());
      } else {
        emit(DriverProfileError('Failed to delete driver account'));
      }
    } catch (e) {
      return errorSnackBar(msg: "An error occurred while deleting driver account");
    }
  }
}
