import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import 'package:shaded_app_freelancer/_core/api/api_settings.dart';

part 'quick_state.dart';

class QuickCubit extends Cubit<QuickState> {
  QuickCubit() : super(QuickInitial());

  static QuickCubit get(context) => BlocProvider.of(context);

  final GlobalKey<FormState> quickFormKey = GlobalKey<FormState>();
  final TextEditingController quickFieldController = TextEditingController();
  final TextEditingController fromAddressController = TextEditingController();
  final TextEditingController toAddressController = TextEditingController();

  int staffIndex = 0;

  void increaseQuickStaff(int staffIndex) {
    emit(QuickIncreaseStaffState(staffIndex + 1));
  }

  void decreaseQuickStaff(int staffIndex) {
    emit(QuickDecreaseStaffState(staffIndex - 1));
  }

  int conditionIndex = 0;

  void increaseQuickCondition(int conditionIndex) {
    emit(QuickIncreaseConditionState(conditionIndex + 1));
  }

  void decreaseQuickCondition(int conditionIndex) {
    emit(QuickDecreaseConditionState(conditionIndex - 1));
  }

  int createIndex = 0;

  Future<void> increaseQuickCreate(int createIndex) async {
    createIndex++;
    emit(QuickIncreaseCreateState(createIndex));
  }

  void decreaseQuickCreate(int createIndex) {
    createIndex++;
    emit(QuickDecreaseCreateState(createIndex));
  }

  Future<void> changeCheckBox(value) async {
    value = true;
    emit(ChangeCheckBox(value));
  }

  Future<void> createRequest() async {
    final url = '${ApiSettings.baseUrl}/request/createRequest';
    try {
      final response = await http.post(Uri.parse(url));
      if (response.statusCode == 201) {
        final jsonResponse = json.decode(response.body);
        // Parse the JSON response
        final success = jsonResponse['status'];
        final code = jsonResponse['code'];
        final message = jsonResponse['message'];
        final data = jsonResponse['data'];
        if (success == true && code == 201) {
          // Handle successful response
          emit(CreateRequestSuccess(data));
        } else {
          // Handle error response
          emit(
              CreateRequestFailure('Request failed with code $code: $message'));
        }
      } else {
        // Handle error response
        emit(CreateRequestFailure(
            'Request failed with status: ${response.statusCode}'));
      }
    } catch (e) {
      // Handle network or API error
      emit(CreateRequestFailure('Error: $e'));
    }
  }
}
