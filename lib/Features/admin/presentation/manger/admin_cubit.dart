import 'package:ecommers/Features/admin/presentation/manger/admin_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminCubit extends Cubit<AdminStates> {
  AdminCubit() : super(InitAdminStates());
  static AdminCubit get(context) => BlocProvider.of(context);
}
