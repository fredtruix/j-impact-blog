abstract class AppUrls {
  //! baseUrl
  static const String _baseUrl = "https://popup-backend-services.onrender.com";
  static const String _accountBaseUrl = "$_baseUrl/account";

  //! auth
  static const String userSignUp = '$_accountBaseUrl/signup/';
  static const String userLogin = '$_accountBaseUrl/login/';
  static const String verifyEmailOTP = '$_accountBaseUrl/verify/';
}
