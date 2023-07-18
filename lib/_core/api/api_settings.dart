class ApiSettings {
  static const String baseUrl = "http://extreme.cx/public/api";

  //==========================================> Login
  static const String LOGIN = "$baseUrl/login";
  static const String REGISTER = "$baseUrl/register";
  static const String LOGOUT = "$baseUrl/logout";
  static const String UPDATELOCATION = "$baseUrl/updateLatLong";

  //=========================================> User api's
  static const String CREATEREQUEST = "$baseUrl/request/createRequest";


  static String getHomeGames({required int currentPage}) =>
      "$baseUrl/games?page=$currentPage";

  //=========================================> Coffee
  static const String GETALLCOFFEE = "$baseUrl/getAllCafe";
  static const String TICKET = "$baseUrl/ticket";
  static const String GETDRINKS = "$baseUrl/getProducts";
  static const String GETCATEGORIES = "$baseUrl/getCategories";

  static String getAllDrinks({required int cafeId, required int categoryId}) =>
      "$GETDRINKS?cafeid=$cafeId&categoryid=$categoryId";

  static String getAllCoffee({required int currentPage, required int gameId}) =>
      "$baseUrl/getAllCafe?gameid=$gameId&page=$currentPage";

  //=========================================> Profile
  static const String GETPROFILE = "$baseUrl/profile";
  static const String UPDATEPROFILE = "$baseUrl/users/profile/update";
  static const String FORGETPASSWORD = "$baseUrl/users/forgotPassword";
  static const String VERIFYCODE = "$baseUrl/users/verifyCode";
  static const String CHANGEPASSWORD = "$baseUrl/users/changePassword";

  //=========================================> Notification
  static const String NOTIFICATION = "$baseUrl/notifications";

  //=========================================> Terms
  static const String TERMS = "$baseUrl/terms";
}
