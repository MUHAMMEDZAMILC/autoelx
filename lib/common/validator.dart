
class Validate {

  static String? userNameValidator(String value) {
    if (value.toString() == "") {
      return " User Name is Invalid ";
    } else {
      return null;
    }
  }
  static String? emailValidator(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern.toString());
    if (!regex.hasMatch(value)) {
      return 'Email format is invalid';
    } else {
      return null;
    }
  }

  static String? passwordValidator(String value) {
    if (value.length < 10 || num.tryParse(value) == null) {
      return 'Password should contain atleast 10 digits';
    } else {
      return null;
    }
  }

  static String? numberValidator(String value) {
    if (value.length < 10 || num.tryParse(value) == null) {
      return 'Phone number should contain atleast 10 digits';
    } else {
      return null;
    }
  }
  static String? addressValidator(String value) {
    if (value.toString() == "") {
      return " Please fiil your adress ";
    } else {
      return null;
    }
  }
  static String? pinValidator(String value) {
    if (value.length < 6 || num.tryParse(value) == null) {
      return 'Pin number should contain atleast 6 digits';
    } 
    else if( value.length > 6){
      return 'Pin number invalid!';
    } 
    else
    {
      return null;
    }
  }

}