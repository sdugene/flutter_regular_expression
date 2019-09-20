abstract class Constant {
  static final mailRegex = RegExp(
      "^(([^<>()\\[\\]\\\\.,;:\\s@\"]+(\\.[^<>()\\[\\]\\\\.,;:\\s@\"]+)*)|(\".+\"))@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,24}))\$");

  static final frenchPhoneRegex = RegExp("^" +
      "(?:(?:\\+|00)33|0)" +     // Dialing code
      "\\s*[1-9]" +              // First number (from 1 to 9)
      "(?:[\\s.-]*\\d{2}){4}" +  // End of the phone number
      "\$");
}
