import 'package:flutter_bloc/flutter_bloc.dart';

class SetPageCubit extends Cubit<int> {
  SetPageCubit() : super(0);

  void setPage(int newPage) {
    emit(newPage);
  }
}
