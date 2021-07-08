// DO NOT EDIT. 

import 'dart:async';

import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

import 'string_i18n_copies_all.dart';

class StringGeneratedManifest {
 
  static const GeneratedLocalizationsDelegate delegate = GeneratedLocalizationsDelegate();

  static StringGeneratedManifest of(BuildContext context) {
    return Localizations.of<StringGeneratedManifest>(context, StringGeneratedManifest);
  }
  
  static Future<StringGeneratedManifest> load(Locale locale) {
    final String name = locale.countryCode == null ? locale.languageCode : locale.toString();

    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      return new StringGeneratedManifest();
    });
  }
  
  String get selectLanguageTitle {
    return Intl.message("Choose a Language you want the app to launch in:", name: 'selectLanguageTitle');
  }

  String get selectLanguageEnglish {
    return Intl.message("English", name: 'selectLanguageEnglish');
  }

  String get selectLanguageArabic {
    return Intl.message("Arabic", name: 'selectLanguageArabic');
  }

  String get selectLanguageNext {
    return Intl.message("Next", name: 'selectLanguageNext');
  }

  String get onBoardSkip {
    return Intl.message("Skip", name: 'onBoardSkip');
  }

  String get onBoardTitle1 {
    return Intl.message("Find best event for your children 1", name: 'onBoardTitle1');
  }

  String get onBoardTitle2 {
    return Intl.message("Find best event for your children 2", name: 'onBoardTitle2');
  }

  String get onBoardTitle3 {
    return Intl.message("Find best event for your children 3", name: 'onBoardTitle3');
  }

  String get onBoardDescription1 {
    return Intl.message("Lorem Ipsum is simply dummy text of the printing and typesetting industry. 1", name: 'onBoardDescription1');
  }

  String get onBoardDescription2 {
    return Intl.message("Lorem Ipsum is simply dummy text of the printing and typesetting industry. 2", name: 'onBoardDescription2');
  }

  String get onBoardDescription3 {
    return Intl.message("Lorem Ipsum is simply dummy text of the printing and typesetting industry. 3", name: 'onBoardDescription3');
  }

  String get onBoardCtaSkip {
    return Intl.message("Skip", name: 'onBoardCtaSkip');
  }

  String get loginEnterYourMobileNumber {
    return Intl.message("Enter your mobile number.*", name: 'loginEnterYourMobileNumber');
  }

  String get loginPassword {
    return Intl.message("Password*", name: 'loginPassword');
  }

  String get loginTitle {
    return Intl.message("Let's Sign You In", name: 'loginTitle');
  }

  String get loginSubTitle {
    return Intl.message("Welcome back, you've been missed!", name: 'loginSubTitle');
  }

  String get loginForgotPassword {
    return Intl.message("Forgot password?", name: 'loginForgotPassword');
  }

  String get loginCtaSubmit {
    return Intl.message("Sign In", name: 'loginCtaSubmit');
  }

  String get loginNewUser1 {
    return Intl.message("Don't have an account? ", name: 'loginNewUser1');
  }

  String get loginNewUser2 {
    return Intl.message("Sign Up", name: 'loginNewUser2');
  }

  String get loginPleaseEnterValidMobileNumber {
    return Intl.message("Please enter a valid mobile number", name: 'loginPleaseEnterValidMobileNumber');
  }

  String get loginPleaseEnterPassword {
    return Intl.message("Please enter a valid password", name: 'loginPleaseEnterPassword');
  }

  String get loginGrantPermission {
    return Intl.message("Please grant permission first", name: 'loginGrantPermission');
  }

  String get registerTitle {
    return Intl.message("Register", name: 'registerTitle');
  }

  String get forgetPasswordTitle {
    return Intl.message("Forget Password", name: 'forgetPasswordTitle');
  }

  String get forgetPasswordButton {
    return Intl.message("Request OTP", name: 'forgetPasswordButton');
  }

  String get resetPasswordTitle {
    return Intl.message("Forget Password", name: 'resetPasswordTitle');
  }

  String get resetPasswordButton {
    return Intl.message("Submit Changes", name: 'resetPasswordButton');
  }

  String get registerFullName {
    return Intl.message("Full Name*", name: 'registerFullName');
  }

  String get registerEmail {
    return Intl.message("Email Address*", name: 'registerEmail');
  }

  String get registerMobileNumber {
    return Intl.message("Mobile number*", name: 'registerMobileNumber');
  }

  String get registerPassword {
    return Intl.message("Password*", name: 'registerPassword');
  }

  String get registerConfirmationPassword {
    return Intl.message("Confirm Password*", name: 'registerConfirmationPassword');
  }

  String get registerTermOfService {
    return Intl.message("By clicking \"Sign Up\". I agree to the ", name: 'registerTermOfService');
  }

  String get registerTermOfServiceLinked {
    return Intl.message("Terms of Service.", name: 'registerTermOfServiceLinked');
  }

  String get registerSubmit {
    return Intl.message("Sign Up", name: 'registerSubmit');
  }

  String get registerNewUser1 {
    return Intl.message("Already have an account? ", name: 'registerNewUser1');
  }

  String get registerNewUser2 {
    return Intl.message("Sign In", name: 'registerNewUser2');
  }

  String get registerErrorPickImage {
    return Intl.message("Sorry please try again", name: 'registerErrorPickImage');
  }

  String get registerPleaseEnterValidName {
    return Intl.message("Please enter a valid name", name: 'registerPleaseEnterValidName');
  }

  String get registerPleaseEnterValidEmail {
    return Intl.message("Please enter a valid email", name: 'registerPleaseEnterValidEmail');
  }

  String get registerPleaseEnterValidMobileNumber {
    return Intl.message("Please enter a valid mobile number", name: 'registerPleaseEnterValidMobileNumber');
  }

  String get registerPleaseEnterPassword {
    return Intl.message("Please enter a valid password", name: 'registerPleaseEnterPassword');
  }

  String get registerPleaseEnterConfirmationPassword {
    return Intl.message("Please enter a valid confirmation password", name: 'registerPleaseEnterConfirmationPassword');
  }

  String get registerPasswordNotSame {
    return Intl.message("Confirmation Password not same", name: 'registerPasswordNotSame');
  }

  String get registerTitlePickItem {
    return Intl.message("Select Photo", name: 'registerTitlePickItem');
  }

  String get registerPickItemImage {
    return Intl.message("From Gallery", name: 'registerPickItemImage');
  }

  String get registerPickItemCamera {
    return Intl.message("Take Photo", name: 'registerPickItemCamera');
  }

  String get registerSurveyTitle {
    return Intl.message("How did you hear about us?", name: 'registerSurveyTitle');
  }

  String get registerSurveySubmit {
    return Intl.message("Done", name: 'registerSurveySubmit');
  }

  String get otpTitle {
    return Intl.message("Verification Code", name: 'otpTitle');
  }

  String get otpDescription {
    return Intl.message("Please type the verification code sent to\nyour mobile number.", name: 'otpDescription');
  }

  String get otpResendCode {
    return Intl.message("Resend Code", name: 'otpResendCode');
  }

  String get otpGoBack {
    return Intl.message("Go Back", name: 'otpGoBack');
  }

  String get otpResendLoading {
    return Intl.message("Sending Request", name: 'otpResendLoading');
  }

  String get otpVerifyButton {
    return Intl.message("Verify", name: 'otpVerifyButton');
  }

  String get otpVerifyLoading {
    return Intl.message("Verify Request", name: 'otpVerifyLoading');
  }

  String get otpExpired {
    return Intl.message("OTP code expired", name: 'otpExpired');
  }

  String get termAndConditionTitle {
    return Intl.message("Term & Condition", name: 'termAndConditionTitle');
  }

  String get dashboardDrawerLanguage {
    return Intl.message("Language", name: 'dashboardDrawerLanguage');
  }

  String get dashboardDrawerLanguageEnglish {
    return Intl.message("English", name: 'dashboardDrawerLanguageEnglish');
  }

  String get dashboardDrawerLanguageArabic {
    return Intl.message("Arabic", name: 'dashboardDrawerLanguageArabic');
  }

  String get dashboardDrawerLocation {
    return Intl.message("Location", name: 'dashboardDrawerLocation');
  }

  String get dashboardDrawerLoading {
    return Intl.message("Updating", name: 'dashboardDrawerLoading');
  }

  String get dashboardDrawerLogout {
    return Intl.message("Logout", name: 'dashboardDrawerLogout');
  }

  String get dashboardToolbarSearch {
    return Intl.message("Search your event", name: 'dashboardToolbarSearch');
  }

  String get dashboardTabHome {
    return Intl.message("Home", name: 'dashboardTabHome');
  }

  String get dashboardTabBooking {
    return Intl.message("Booking", name: 'dashboardTabBooking');
  }

  String get dashboardTabBlog {
    return Intl.message("Blog", name: 'dashboardTabBlog');
  }

  String get dashboardTabProfile {
    return Intl.message("Profile", name: 'dashboardTabProfile');
  }

  String get homeActivityTabFeatured {
    return Intl.message("Featured Activities", name: 'homeActivityTabFeatured');
  }

  String get homeActivityTabKidzbox {
    return Intl.message("Kidzbox Activities", name: 'homeActivityTabKidzbox');
  }

  String get homeActivityTabSend {
    return Intl.message("Send Activities", name: 'homeActivityTabSend');
  }

  String get homeCategory {
    return Intl.message("Category", name: 'homeCategory');
  }

  String get homeCategoryViewAll {
    return Intl.message("View all", name: 'homeCategoryViewAll');
  }

  String get activityTitle {
    return Intl.message("Activities", name: 'activityTitle');
  }

  String get activityCategory {
    return Intl.message("Category", name: 'activityCategory');
  }

  String get activityCategoryViewAll {
    return Intl.message("View all", name: 'activityCategoryViewAll');
  }

  String get activitySubCategory {
    return Intl.message("Sub Category", name: 'activitySubCategory');
  }

  String get activitySubCategoryViewAll {
    return Intl.message("View all", name: 'activitySubCategoryViewAll');
  }

  String get notificationTitle {
    return Intl.message("Notification", name: 'notificationTitle');
  }

  String get profileTitle {
    return Intl.message("My Profile", name: 'profileTitle');
  }

  String get profileAccountDetailTitle {
    return Intl.message("Account Details", name: 'profileAccountDetailTitle');
  }

  String get profileAccountDetailSubTitle {
    return Intl.message("View & edit your account details", name: 'profileAccountDetailSubTitle');
  }

  String get profileFavoriteTitle {
    return Intl.message("Favorite Activities", name: 'profileFavoriteTitle');
  }

  String get profileFavoriteSubTitle {
    return Intl.message("See your liked activities", name: 'profileFavoriteSubTitle');
  }

  String get profileNotificationTitle {
    return Intl.message("Notification Settings", name: 'profileNotificationTitle');
  }

  String get profileNotificationSubTitle {
    return Intl.message("Set your notification settings", name: 'profileNotificationSubTitle');
  }

  String get profileEventTitle {
    return Intl.message("Event Organiser? Get in Touch", name: 'profileEventTitle');
  }

  String get profileEventSubTitle {
    return Intl.message("Get in touch with us & organise event", name: 'profileEventSubTitle');
  }

  String get profileRateTitle {
    return Intl.message("Rate Us", name: 'profileRateTitle');
  }

  String get profileRateSubTitle {
    return Intl.message("If you like using Kidzbox then Rate Us", name: 'profileRateSubTitle');
  }

  String get profileAboutUsTitle {
    return Intl.message("About Us", name: 'profileAboutUsTitle');
  }

  String get profileAboutUsSubTitle {
    return Intl.message("Read more about us", name: 'profileAboutUsSubTitle');
  }

  String get profileTermOfServiceTitle {
    return Intl.message("Terms of Services", name: 'profileTermOfServiceTitle');
  }

  String get profileTermOfServiceSubTitle {
    return Intl.message("Read more about our tearms of service", name: 'profileTermOfServiceSubTitle');
  }

  String get profileDetailTitle {
    return Intl.message("Your Details", name: 'profileDetailTitle');
  }

  String get profileDetailSubmitButton {
    return Intl.message("Save Changes", name: 'profileDetailSubmitButton');
  }

  String get profileDetailChangeAvatarLoading {
    return Intl.message("Uploading", name: 'profileDetailChangeAvatarLoading');
  }

  String get profileDetailChangeProfileLoading {
    return Intl.message("Updating data", name: 'profileDetailChangeProfileLoading');
  }

  String get profileChangePasswordTitle {
    return Intl.message("Change Password", name: 'profileChangePasswordTitle');
  }

  String get profileChangePasswordCurrentField {
    return Intl.message("Current Password", name: 'profileChangePasswordCurrentField');
  }

  String get profileChangePasswordNewField {
    return Intl.message("New Password", name: 'profileChangePasswordNewField');
  }

  String get profileChangePasswordReEnterField {
    return Intl.message("Re-enter New Password", name: 'profileChangePasswordReEnterField');
  }

  String get profileChangePasswordSubmitButton {
    return Intl.message("Save Changes", name: 'profileChangePasswordSubmitButton');
  }

  String get profileChangePasswordLoading {
    return Intl.message("Updating password", name: 'profileChangePasswordLoading');
  }

  String get profileChangePasswordPleaseEnterCurrentPassword {
    return Intl.message("Please enter a valid current password", name: 'profileChangePasswordPleaseEnterCurrentPassword');
  }

  String get profileChangePasswordPleaseEnterNewPassword {
    return Intl.message("Please enter a valid new password", name: 'profileChangePasswordPleaseEnterNewPassword');
  }

  String get profileChangePasswordPleaseEnterConfirmationPassword {
    return Intl.message("Please enter a valid new confirmation password", name: 'profileChangePasswordPleaseEnterConfirmationPassword');
  }

  String get profileKidsInfoTitle {
    return Intl.message("My Kids Info", name: 'profileKidsInfoTitle');
  }

  String get profileKidsInfoNameField {
    return Intl.message("Full Name*", name: 'profileKidsInfoNameField');
  }

  String get profileKidsInfoAgeField {
    return Intl.message("Age", name: 'profileKidsInfoAgeField');
  }

  String get profileKidsInfoOneYear {
    return Intl.message("1 Year", name: 'profileKidsInfoOneYear');
  }

  String get profileKidsInfoTwoYear {
    return Intl.message("2 Year", name: 'profileKidsInfoTwoYear');
  }

  String get profileKidsInfoThreeYear {
    return Intl.message("3 Year", name: 'profileKidsInfoThreeYear');
  }

  String get profileKidsInfoGenderField {
    return Intl.message("Gender", name: 'profileKidsInfoGenderField');
  }

  String get profileKidsInfoBoy {
    return Intl.message("Boy", name: 'profileKidsInfoBoy');
  }

  String get profileKidsInfoGirl {
    return Intl.message("Girl", name: 'profileKidsInfoGirl');
  }

  String get profileKidsInfoAddMoreButton {
    return Intl.message("Add More", name: 'profileKidsInfoAddMoreButton');
  }

  String get profileKidsInfoSubmitButton {
    return Intl.message("Done", name: 'profileKidsInfoSubmitButton');
  }

  String get profileNotificationSettingTitle {
    return Intl.message("Notification Settings", name: 'profileNotificationSettingTitle');
  }

  String get profileNotificationSettingTurnOffAll {
    return Intl.message("Turn off all notification", name: 'profileNotificationSettingTurnOffAll');
  }

  String get profileNotificationSettingTurnOnEvent {
    return Intl.message("Turn on event notification", name: 'profileNotificationSettingTurnOnEvent');
  }

  String get profileNotificationSettingTurnOnMessage {
    return Intl.message("Turn on message notification", name: 'profileNotificationSettingTurnOnMessage');
  }

  String get profileNotificationSettingSubmitButton {
    return Intl.message("Save Changes", name: 'profileNotificationSettingSubmitButton');
  }

  String get mapTitle {
    return Intl.message("Map", name: 'mapTitle');
  }


}

class GeneratedLocalizationsDelegate extends LocalizationsDelegate<StringGeneratedManifest> {
  const GeneratedLocalizationsDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
			Locale("en", ""),
			Locale("ar", ""),

    ];
  }

  LocaleListResolutionCallback listResolution({Locale fallback}) {
    return (List<Locale> locales, Iterable<Locale> supported) {
      if (locales == null || locales.isEmpty) {
        return fallback ?? supported.first;
      } else {
        return _resolve(locales.first, fallback, supported);
      }
    };
  }

  LocaleResolutionCallback resolution({Locale fallback}) {
    return (Locale locale, Iterable<Locale> supported) {
      return _resolve(locale, fallback, supported);
    };
  }

  Locale _resolve(Locale locale, Locale fallback, Iterable<Locale> supported) {
    if (locale == null || !isSupported(locale)) {
      return fallback ?? supported.first;
    }

    final Locale languageLocale = Locale(locale.languageCode, "");
    if (supported.contains(locale)) {
      return locale;
    } else if (supported.contains(languageLocale)) {
      return languageLocale;
    } else {
      final Locale fallbackLocale = fallback ?? supported.first;
      return fallbackLocale;
    }
  }

  @override
  Future<StringGeneratedManifest> load(Locale locale) {
    return StringGeneratedManifest.load(locale);
  }

  @override
  bool isSupported(Locale locale) =>
    locale != null && supportedLocales.contains(locale);

  @override
  bool shouldReload(GeneratedLocalizationsDelegate old) => false;
}

// ignore_for_file: unnecessary_brace_in_string_interps
