

extension StringExtension on String? {

  

   bool notNullNotEmpty(){
    return this != null && this!.isNotEmpty;
  }
}

extension BooleanEx on bool? {

   bool notNullAndTrue(){
    return this != null && this! == true;
  }

  bool notNullAndFalse(){
    return this != null && this! == false;
  }
}