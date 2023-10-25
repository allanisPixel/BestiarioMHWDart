import 'package:bloc/bloc.dart';
import 'search_event.dart';

class UpdateSearch extends Bloc<SearchEvent, String> {
  String inputText = "";

  UpdateSearch(super.initialState);

  Stream<String> mapEventToState(SearchEvent event) async* {
    String result = event.input;

    yield result;
  }
}
