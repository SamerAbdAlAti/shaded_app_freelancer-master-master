import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';


class SelectLanguageCubit extends Cubit<Language> {
  SelectLanguageCubit() : super(Language.Arabic);

  static SelectLanguageCubit get(context) => BlocProvider.of(context);

  Future<void> onLanguageChanged(Language language) async {
    emit(language);
  }
}

enum Language { Arabic, English }
