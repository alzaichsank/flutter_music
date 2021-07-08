// DO NOT EDIT. 

import 'dart:async';

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';
// ignore: implementation_imports
import 'package:intl/src/intl_helpers.dart';

final _$en = $en();

class $en extends MessageLookupByLibrary {
  get localeName => 'en';
  
  final messages = {
		"select_language_title" : MessageLookupByLibrary.simpleMessage("Choose a Language you want the app to launch in:"),
		"select_language_english" : MessageLookupByLibrary.simpleMessage("English"),
		"select_language_arabic" : MessageLookupByLibrary.simpleMessage("Arabic"),
		"select_language_next" : MessageLookupByLibrary.simpleMessage("Next"),
		"on_board_skip" : MessageLookupByLibrary.simpleMessage("Skip"),
		"on_board_title_1" : MessageLookupByLibrary.simpleMessage("Find best event for your children 1"),
		"on_board_title_2" : MessageLookupByLibrary.simpleMessage("Find best event for your children 2"),
		"on_board_title_3" : MessageLookupByLibrary.simpleMessage("Find best event for your children 3"),
		"on_board_description_1" : MessageLookupByLibrary.simpleMessage("Lorem Ipsum is simply dummy text of the printing and typesetting industry. 1"),
		"on_board_description_2" : MessageLookupByLibrary.simpleMessage("Lorem Ipsum is simply dummy text of the printing and typesetting industry. 2"),
		"on_board_description_3" : MessageLookupByLibrary.simpleMessage("Lorem Ipsum is simply dummy text of the printing and typesetting industry. 3"),
		"on_board_cta_skip" : MessageLookupByLibrary.simpleMessage("Skip"),
		"login_enter_your_mobile_number" : MessageLookupByLibrary.simpleMessage("Enter your mobile number.*"),
		"login_password" : MessageLookupByLibrary.simpleMessage("Password*"),
		"login_title" : MessageLookupByLibrary.simpleMessage("Let's Sign You In"),
		"login_sub_title" : MessageLookupByLibrary.simpleMessage("Welcome back, you've been missed!"),
		"login_forgot_password" : MessageLookupByLibrary.simpleMessage("Forgot password?"),
		"login_cta_submit" : MessageLookupByLibrary.simpleMessage("Sign In"),
		"login_new_user_1" : MessageLookupByLibrary.simpleMessage("Don't have an account? "),
		"login_new_user_2" : MessageLookupByLibrary.simpleMessage("Sign Up"),
		"login_please_enter_valid_mobile_number" : MessageLookupByLibrary.simpleMessage("Please enter a valid mobile number"),
		"login_please_enter_password" : MessageLookupByLibrary.simpleMessage("Please enter a valid password"),
		"login_grant_permission" : MessageLookupByLibrary.simpleMessage("Please grant permission first"),
		"register_title" : MessageLookupByLibrary.simpleMessage("Register"),
		"forget_password_title" : MessageLookupByLibrary.simpleMessage("Forget Password"),
		"forget_password_button" : MessageLookupByLibrary.simpleMessage("Request OTP"),
		"reset_password_title" : MessageLookupByLibrary.simpleMessage("Forget Password"),
		"reset_password_button" : MessageLookupByLibrary.simpleMessage("Submit Changes"),
		"register_full_name" : MessageLookupByLibrary.simpleMessage("Full Name*"),
		"register_email" : MessageLookupByLibrary.simpleMessage("Email Address*"),
		"register_mobile_number" : MessageLookupByLibrary.simpleMessage("Mobile number*"),
		"register_password" : MessageLookupByLibrary.simpleMessage("Password*"),
		"register_confirmation_password" : MessageLookupByLibrary.simpleMessage("Confirm Password*"),
		"register_term_of_service" : MessageLookupByLibrary.simpleMessage("By clicking \"Sign Up\". I agree to the "),
		"register_term_of_service_linked" : MessageLookupByLibrary.simpleMessage("Terms of Service."),
		"register_submit" : MessageLookupByLibrary.simpleMessage("Sign Up"),
		"register_new_user_1" : MessageLookupByLibrary.simpleMessage("Already have an account? "),
		"register_new_user_2" : MessageLookupByLibrary.simpleMessage("Sign In"),
		"register_error_pick_image" : MessageLookupByLibrary.simpleMessage("Sorry please try again"),
		"register_please_enter_valid_name" : MessageLookupByLibrary.simpleMessage("Please enter a valid name"),
		"register_please_enter_valid_email" : MessageLookupByLibrary.simpleMessage("Please enter a valid email"),
		"register_please_enter_valid_mobile_number" : MessageLookupByLibrary.simpleMessage("Please enter a valid mobile number"),
		"register_please_enter_password" : MessageLookupByLibrary.simpleMessage("Please enter a valid password"),
		"register_please_enter_confirmation_password" : MessageLookupByLibrary.simpleMessage("Please enter a valid confirmation password"),
		"register_password_not_same" : MessageLookupByLibrary.simpleMessage("Confirmation Password not same"),
		"register_title_pick_item" : MessageLookupByLibrary.simpleMessage("Select Photo"),
		"register_pick_item_image" : MessageLookupByLibrary.simpleMessage("From Gallery"),
		"register_pick_item_camera" : MessageLookupByLibrary.simpleMessage("Take Photo"),
		"register_survey_title" : MessageLookupByLibrary.simpleMessage("How did you hear about us?"),
		"register_survey_submit" : MessageLookupByLibrary.simpleMessage("Done"),
		"otp_title" : MessageLookupByLibrary.simpleMessage("Verification Code"),
		"otp_description" : MessageLookupByLibrary.simpleMessage("Please type the verification code sent to\nyour mobile number."),
		"otp_resend_code" : MessageLookupByLibrary.simpleMessage("Resend Code"),
		"otp_go_back" : MessageLookupByLibrary.simpleMessage("Go Back"),
		"otp_resend_loading" : MessageLookupByLibrary.simpleMessage("Sending Request"),
		"otp_verify_button" : MessageLookupByLibrary.simpleMessage("Verify"),
		"otp_verify_loading" : MessageLookupByLibrary.simpleMessage("Verify Request"),
		"otp_expired" : MessageLookupByLibrary.simpleMessage("OTP code expired"),
		"term_and_condition_title" : MessageLookupByLibrary.simpleMessage("Term & Condition"),
		"dashboard_drawer_language" : MessageLookupByLibrary.simpleMessage("Language"),
		"dashboard_drawer_language_english" : MessageLookupByLibrary.simpleMessage("English"),
		"dashboard_drawer_language_arabic" : MessageLookupByLibrary.simpleMessage("Arabic"),
		"dashboard_drawer_location" : MessageLookupByLibrary.simpleMessage("Location"),
		"dashboard_drawer_loading" : MessageLookupByLibrary.simpleMessage("Updating"),
		"dashboard_drawer_logout" : MessageLookupByLibrary.simpleMessage("Logout"),
		"dashboard_toolbar_search" : MessageLookupByLibrary.simpleMessage("Search your event"),
		"dashboard_tab_home" : MessageLookupByLibrary.simpleMessage("Home"),
		"dashboard_tab_booking" : MessageLookupByLibrary.simpleMessage("Booking"),
		"dashboard_tab_blog" : MessageLookupByLibrary.simpleMessage("Blog"),
		"dashboard_tab_profile" : MessageLookupByLibrary.simpleMessage("Profile"),
		"home_activity_tab_featured" : MessageLookupByLibrary.simpleMessage("Featured Activities"),
		"home_activity_tab_kidzbox" : MessageLookupByLibrary.simpleMessage("Kidzbox Activities"),
		"home_activity_tab_send" : MessageLookupByLibrary.simpleMessage("Send Activities"),
		"home_category" : MessageLookupByLibrary.simpleMessage("Category"),
		"home_category_view_all" : MessageLookupByLibrary.simpleMessage("View all"),
		"activity_title " : MessageLookupByLibrary.simpleMessage("Activities"),
		"activity_category" : MessageLookupByLibrary.simpleMessage("Category"),
		"activity_category_view_all" : MessageLookupByLibrary.simpleMessage("View all"),
		"activity_sub_category" : MessageLookupByLibrary.simpleMessage("Sub Category"),
		"activity_sub_category_view_all" : MessageLookupByLibrary.simpleMessage("View all"),
		"notification_title " : MessageLookupByLibrary.simpleMessage("Notification"),
		"profile_title " : MessageLookupByLibrary.simpleMessage("My Profile"),
		"profile_account_detail_title" : MessageLookupByLibrary.simpleMessage("Account Details"),
		"profile_account_detail_sub_title" : MessageLookupByLibrary.simpleMessage("View & edit your account details"),
		"profile_favorite_title" : MessageLookupByLibrary.simpleMessage("Favorite Activities"),
		"profile_favorite_sub_title" : MessageLookupByLibrary.simpleMessage("See your liked activities"),
		"profile_notification_title" : MessageLookupByLibrary.simpleMessage("Notification Settings"),
		"profile_notification_sub_title" : MessageLookupByLibrary.simpleMessage("Set your notification settings"),
		"profile_event_title" : MessageLookupByLibrary.simpleMessage("Event Organiser? Get in Touch"),
		"profile_event_sub_title" : MessageLookupByLibrary.simpleMessage("Get in touch with us & organise event"),
		"profile_rate_title" : MessageLookupByLibrary.simpleMessage("Rate Us"),
		"profile_rate_sub_title" : MessageLookupByLibrary.simpleMessage("If you like using Kidzbox then Rate Us"),
		"profile_about_us_title" : MessageLookupByLibrary.simpleMessage("About Us"),
		"profile_about_us_sub_title" : MessageLookupByLibrary.simpleMessage("Read more about us"),
		"profile_term_of_service_title" : MessageLookupByLibrary.simpleMessage("Terms of Services"),
		"profile_term_of_service_sub_title" : MessageLookupByLibrary.simpleMessage("Read more about our tearms of service"),
		"profile_detail_title" : MessageLookupByLibrary.simpleMessage("Your Details"),
		"profile_detail_submit_button" : MessageLookupByLibrary.simpleMessage("Save Changes"),
		"profile_detail_change_avatar_loading" : MessageLookupByLibrary.simpleMessage("Uploading"),
		"profile_detail_change_profile_loading" : MessageLookupByLibrary.simpleMessage("Updating data"),
		"profile_change_password_title" : MessageLookupByLibrary.simpleMessage("Change Password"),
		"profile_change_password_current_field" : MessageLookupByLibrary.simpleMessage("Current Password"),
		"profile_change_password_new_field" : MessageLookupByLibrary.simpleMessage("New Password"),
		"profile_change_password_re_enter_field" : MessageLookupByLibrary.simpleMessage("Re-enter New Password"),
		"profile_change_password_submit_button" : MessageLookupByLibrary.simpleMessage("Save Changes"),
		"profile_change_password_loading" : MessageLookupByLibrary.simpleMessage("Updating password"),
		"profile_change_password_please_enter_current_password" : MessageLookupByLibrary.simpleMessage("Please enter a valid current password"),
		"profile_change_password_please_enter_new_password" : MessageLookupByLibrary.simpleMessage("Please enter a valid new password"),
		"profile_change_password_please_enter_confirmation_password" : MessageLookupByLibrary.simpleMessage("Please enter a valid new confirmation password"),
		"profile_kids_info_title" : MessageLookupByLibrary.simpleMessage("My Kids Info"),
		"profile_kids_info_name_field" : MessageLookupByLibrary.simpleMessage("Full Name*"),
		"profile_kids_info_age_field" : MessageLookupByLibrary.simpleMessage("Age"),
		"profile_kids_info_one_year" : MessageLookupByLibrary.simpleMessage("1 Year"),
		"profile_kids_info_two_year" : MessageLookupByLibrary.simpleMessage("2 Year"),
		"profile_kids_info_three_year" : MessageLookupByLibrary.simpleMessage("3 Year"),
		"profile_kids_info_gender_field" : MessageLookupByLibrary.simpleMessage("Gender"),
		"profile_kids_info_boy" : MessageLookupByLibrary.simpleMessage("Boy"),
		"profile_kids_info_girl" : MessageLookupByLibrary.simpleMessage("Girl"),
		"profile_kids_info_add_more_button" : MessageLookupByLibrary.simpleMessage("Add More"),
		"profile_kids_info_submit_button" : MessageLookupByLibrary.simpleMessage("Done"),
		"profile_notification_setting_title" : MessageLookupByLibrary.simpleMessage("Notification Settings"),
		"profile_notification_setting_turn_off_all" : MessageLookupByLibrary.simpleMessage("Turn off all notification"),
		"profile_notification_setting_turn_on_event" : MessageLookupByLibrary.simpleMessage("Turn on event notification"),
		"profile_notification_setting_turn_on_message" : MessageLookupByLibrary.simpleMessage("Turn on message notification"),
		"profile_notification_setting_submit_button" : MessageLookupByLibrary.simpleMessage("Save Changes"),
		"map_title" : MessageLookupByLibrary.simpleMessage("Map"),

  };
}

final _$ar = $ar();

class $ar extends MessageLookupByLibrary {
  get localeName => 'ar';
  
  final messages = {
		"select_language_title" : MessageLookupByLibrary.simpleMessage("Choose a Language you want the app to launch in:"),
		"select_language_english" : MessageLookupByLibrary.simpleMessage("الانجليزية"),
		"select_language_arabic" : MessageLookupByLibrary.simpleMessage("العربية"),
		"select_language_next" : MessageLookupByLibrary.simpleMessage("التالي"),
		"on_board_skip" : MessageLookupByLibrary.simpleMessage("Skip"),
		"on_board_title_1" : MessageLookupByLibrary.simpleMessage("Find best event for your children 1"),
		"on_board_title_2" : MessageLookupByLibrary.simpleMessage("Find best event for your children 2"),
		"on_board_title_3" : MessageLookupByLibrary.simpleMessage("Find best event for your children 3"),
		"on_board_description_1" : MessageLookupByLibrary.simpleMessage("Lorem Ipsum is simply dummy text of the printing and typesetting industry. 1"),
		"on_board_description_2" : MessageLookupByLibrary.simpleMessage("Lorem Ipsum is simply dummy text of the printing and typesetting industry. 2"),
		"on_board_description_3" : MessageLookupByLibrary.simpleMessage("Lorem Ipsum is simply dummy text of the printing and typesetting industry. 3"),
		"on_board_cta_skip" : MessageLookupByLibrary.simpleMessage("Skip"),
		"login_enter_your_mobile_number" : MessageLookupByLibrary.simpleMessage("الرجاء ادخال رقم الجوال*"),
		"login_password" : MessageLookupByLibrary.simpleMessage("كلمة المرور*"),
		"login_title" : MessageLookupByLibrary.simpleMessage("Let's Sign You In"),
		"login_sub_title" : MessageLookupByLibrary.simpleMessage("Welcome back, you've been missed!"),
		"login_forgot_password" : MessageLookupByLibrary.simpleMessage("هل نسيت كلمة المرور؟"),
		"login_cta_submit" : MessageLookupByLibrary.simpleMessage("إرسال"),
		"login_new_user_1" : MessageLookupByLibrary.simpleMessage("مستخدم  جديد؟"),
		"login_new_user_2" : MessageLookupByLibrary.simpleMessage("Sign Up"),
		"login_please_enter_valid_mobile_number" : MessageLookupByLibrary.simpleMessage("الرجاء ادخال رقم جوال صحيح"),
		"login_please_enter_password" : MessageLookupByLibrary.simpleMessage("يرجى إدخال كلمة المرور"),
		"login_grant_permission" : MessageLookupByLibrary.simpleMessage("Please grant permission first"),
		"forget_password_title" : MessageLookupByLibrary.simpleMessage("Forget Password"),
		"forget_password_button" : MessageLookupByLibrary.simpleMessage("Request OTP"),
		"reset_password_title" : MessageLookupByLibrary.simpleMessage("Forget Password"),
		"reset_password_button" : MessageLookupByLibrary.simpleMessage("Submit Changes"),
		"register_title" : MessageLookupByLibrary.simpleMessage("Register"),
		"register_full_name" : MessageLookupByLibrary.simpleMessage("Full Name*"),
		"register_email" : MessageLookupByLibrary.simpleMessage("Email Address*"),
		"register_mobile_number" : MessageLookupByLibrary.simpleMessage("Mobile number*"),
		"register_password" : MessageLookupByLibrary.simpleMessage("Password*"),
		"register_confirmation_password" : MessageLookupByLibrary.simpleMessage("Confirm Password*"),
		"register_term_of_service" : MessageLookupByLibrary.simpleMessage("By clicking \"Sign Up\". I agree to the "),
		"register_term_of_service_linked" : MessageLookupByLibrary.simpleMessage("Terms of Service."),
		"register_submit" : MessageLookupByLibrary.simpleMessage("Sign Up"),
		"register_new_user_1" : MessageLookupByLibrary.simpleMessage("Already have an account? "),
		"register_new_user_2" : MessageLookupByLibrary.simpleMessage("Sign In"),
		"register_error_pick_image" : MessageLookupByLibrary.simpleMessage("Sorry please try again"),
		"register_please_enter_valid_name" : MessageLookupByLibrary.simpleMessage("Please enter a valid name"),
		"register_please_enter_valid_email" : MessageLookupByLibrary.simpleMessage("Please enter a valid email"),
		"register_please_enter_valid_mobile_number" : MessageLookupByLibrary.simpleMessage("Please enter a valid mobile number"),
		"register_please_enter_password" : MessageLookupByLibrary.simpleMessage("Please enter a valid password"),
		"register_please_enter_confirmation_password" : MessageLookupByLibrary.simpleMessage("Please enter a valid confirmation password"),
		"register_password_not_same" : MessageLookupByLibrary.simpleMessage("Confirmation Password not same"),
		"register_title_pick_item" : MessageLookupByLibrary.simpleMessage("Select Photo"),
		"register_pick_item_image" : MessageLookupByLibrary.simpleMessage("From Gallery"),
		"register_pick_item_camera" : MessageLookupByLibrary.simpleMessage("Take Photo"),
		"register_survey_title" : MessageLookupByLibrary.simpleMessage("How did you hear about us?"),
		"register_survey_submit" : MessageLookupByLibrary.simpleMessage("Done"),
		"otp_title" : MessageLookupByLibrary.simpleMessage("Verification Code"),
		"otp_description" : MessageLookupByLibrary.simpleMessage("Please type the verification code sent to\nyour mobile number."),
		"otp_resend_code" : MessageLookupByLibrary.simpleMessage("Resend Code"),
		"otp_go_back" : MessageLookupByLibrary.simpleMessage("Go Back"),
		"otp_resend_loading" : MessageLookupByLibrary.simpleMessage("Sending Request"),
		"otp_verify_button" : MessageLookupByLibrary.simpleMessage("Verify"),
		"otp_verify_loading" : MessageLookupByLibrary.simpleMessage("Verify Request"),
		"otp_expired" : MessageLookupByLibrary.simpleMessage("OTP code expired"),
		"term_and_condition_title" : MessageLookupByLibrary.simpleMessage("Term & Condition"),
		"dashboard_drawer_language" : MessageLookupByLibrary.simpleMessage("Language Ar"),
		"dashboard_drawer_language_english" : MessageLookupByLibrary.simpleMessage("الانجليزية"),
		"dashboard_drawer_language_arabic" : MessageLookupByLibrary.simpleMessage("العربية"),
		"dashboard_drawer_location" : MessageLookupByLibrary.simpleMessage("Location"),
		"dashboard_drawer_loading" : MessageLookupByLibrary.simpleMessage("Updating"),
		"dashboard_drawer_logout" : MessageLookupByLibrary.simpleMessage("Logout"),
		"dashboard_toolbar_search" : MessageLookupByLibrary.simpleMessage("Search your event"),
		"dashboard_tab_home" : MessageLookupByLibrary.simpleMessage("Home"),
		"dashboard_tab_booking" : MessageLookupByLibrary.simpleMessage("Booking"),
		"dashboard_tab_blog" : MessageLookupByLibrary.simpleMessage("Blog"),
		"dashboard_tab_profile" : MessageLookupByLibrary.simpleMessage("Profile"),
		"home_activity_tab_featured" : MessageLookupByLibrary.simpleMessage("Featured Activities"),
		"home_activity_tab_kidzbox" : MessageLookupByLibrary.simpleMessage("Kidzbox Activities"),
		"home_activity_tab_send" : MessageLookupByLibrary.simpleMessage("Send Activities"),
		"home_category" : MessageLookupByLibrary.simpleMessage("Category"),
		"home_category_view_all" : MessageLookupByLibrary.simpleMessage("View all"),
		"activity_title " : MessageLookupByLibrary.simpleMessage("Activities"),
		"activity_category" : MessageLookupByLibrary.simpleMessage("Category"),
		"activity_category_view_all" : MessageLookupByLibrary.simpleMessage("View all"),
		"activity_sub_category" : MessageLookupByLibrary.simpleMessage("Sub Category"),
		"activity_sub_category_view_all" : MessageLookupByLibrary.simpleMessage("View all"),
		"notification_title " : MessageLookupByLibrary.simpleMessage("Notification"),
		"profile_title " : MessageLookupByLibrary.simpleMessage("My Profile"),
		"profile_account_detail_title" : MessageLookupByLibrary.simpleMessage("Account Details"),
		"profile_account_detail_sub_title" : MessageLookupByLibrary.simpleMessage("View & edit your account details"),
		"profile_favorite_title" : MessageLookupByLibrary.simpleMessage("Favorite Activities"),
		"profile_favorite_sub_title" : MessageLookupByLibrary.simpleMessage("See your liked activities"),
		"profile_notification_title" : MessageLookupByLibrary.simpleMessage("Notification Settings"),
		"profile_notification_sub_title" : MessageLookupByLibrary.simpleMessage("Set your notification settings"),
		"profile_event_title" : MessageLookupByLibrary.simpleMessage("Event Organiser? Get in Touch"),
		"profile_event_sub_title" : MessageLookupByLibrary.simpleMessage("Get in touch with us & organise event"),
		"profile_rate_title" : MessageLookupByLibrary.simpleMessage("Rate Us"),
		"profile_rate_sub_title" : MessageLookupByLibrary.simpleMessage("If you like using Kidzbox then Rate Us"),
		"profile_about_us_title" : MessageLookupByLibrary.simpleMessage("About Us"),
		"profile_about_us_sub_title" : MessageLookupByLibrary.simpleMessage("Read more about us"),
		"profile_term_of_service_title" : MessageLookupByLibrary.simpleMessage("Terms of Services"),
		"profile_term_of_service_sub_title" : MessageLookupByLibrary.simpleMessage("Read more about our tearms of service"),
		"profile_detail_title" : MessageLookupByLibrary.simpleMessage("Your Details"),
		"profile_detail_submit_button" : MessageLookupByLibrary.simpleMessage("Save Changes"),
		"profile_detail_change_avatar_loading" : MessageLookupByLibrary.simpleMessage("Uploading"),
		"profile_detail_change_profile_loading" : MessageLookupByLibrary.simpleMessage("Updating data"),
		"profile_change_password_title" : MessageLookupByLibrary.simpleMessage("Change Password"),
		"profile_change_password_current_field" : MessageLookupByLibrary.simpleMessage("Current Password"),
		"profile_change_password_new_field" : MessageLookupByLibrary.simpleMessage("New Password"),
		"profile_change_password_re_enter_field" : MessageLookupByLibrary.simpleMessage("Re-enter New Password"),
		"profile_change_password_submit_button" : MessageLookupByLibrary.simpleMessage("Save Changes"),
		"profile_change_password_loading" : MessageLookupByLibrary.simpleMessage("Updating password"),
		"profile_change_password_please_enter_current_password" : MessageLookupByLibrary.simpleMessage("Please enter a valid current password"),
		"profile_change_password_please_enter_new_password" : MessageLookupByLibrary.simpleMessage("Please enter a valid new password"),
		"profile_change_password_please_enter_confirmation_password" : MessageLookupByLibrary.simpleMessage("Please enter a valid new confirmation password"),
		"profile_kids_info_title" : MessageLookupByLibrary.simpleMessage("My Kids Info"),
		"profile_kids_info_name_field" : MessageLookupByLibrary.simpleMessage("Full Name*"),
		"profile_kids_info_age_field" : MessageLookupByLibrary.simpleMessage("Age"),
		"profile_kids_info_one_year" : MessageLookupByLibrary.simpleMessage("1 Year"),
		"profile_kids_info_two_year" : MessageLookupByLibrary.simpleMessage("2 Year"),
		"profile_kids_info_three_year" : MessageLookupByLibrary.simpleMessage("3 Year"),
		"profile_kids_info_gender_field" : MessageLookupByLibrary.simpleMessage("Gender"),
		"profile_kids_info_boy" : MessageLookupByLibrary.simpleMessage("Boy"),
		"profile_kids_info_girl" : MessageLookupByLibrary.simpleMessage("Girl"),
		"profile_kids_info_add_more_button" : MessageLookupByLibrary.simpleMessage("Add More"),
		"profile_kids_info_submit_button" : MessageLookupByLibrary.simpleMessage("Done"),
		"profile_notification_setting_title" : MessageLookupByLibrary.simpleMessage("Notification Settings"),
		"profile_notification_setting_turn_off_all" : MessageLookupByLibrary.simpleMessage("Turn off all notification"),
		"profile_notification_setting_turn_on_event" : MessageLookupByLibrary.simpleMessage("Turn on event notification"),
		"profile_notification_setting_turn_on_message" : MessageLookupByLibrary.simpleMessage("Turn on message notification"),
		"profile_notification_setting_submit_button" : MessageLookupByLibrary.simpleMessage("Save Changes"),
		"map_title" : MessageLookupByLibrary.simpleMessage("Map"),

  };
}



typedef Future<dynamic> LibraryLoader();
Map<String, LibraryLoader> _deferredLibraries = {
	"en": () => Future.value(null),
	"ar": () => Future.value(null),

};

MessageLookupByLibrary _findExact(localeName) {
  switch (localeName) {
    case "en":
        return _$en;
    case "ar":
        return _$ar;

    default:
      return null;
  }
}

/// User programs should call this before using [localeName] for messages.
Future<bool> initializeMessages(String localeName) async {
  var availableLocale = Intl.verifiedLocale(
      localeName,
          (locale) => _deferredLibraries[locale] != null,
      onFailure: (_) => null);
  if (availableLocale == null) {
    return Future.value(false);
  }
  var lib = _deferredLibraries[availableLocale];
  await (lib == null ? Future.value(false) : lib());

  initializeInternalMessageLookup(() => CompositeMessageLookup());
  messageLookup.addLocale(availableLocale, _findGeneratedMessagesFor);

  return Future.value(true);
}

bool _messagesExistFor(String locale) {
  try {
    return _findExact(locale) != null;
  } catch (e) {
    return false;
  }
}

MessageLookupByLibrary _findGeneratedMessagesFor(locale) {
  var actualLocale = Intl.verifiedLocale(locale, _messagesExistFor,
      onFailure: (_) => null);
  if (actualLocale == null) return null;
  return _findExact(actualLocale);
}

// ignore_for_file: unnecessary_brace_in_string_interps
