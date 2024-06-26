import 'package:get/get.dart';

class AppText extends Translations {
  @override
  Map<String, Map<String, String>> get keys =>
      {
        'en_US': {
          ///OnBoarding Page
          'onBoarding1Title':"Your Health, Delivered",
          'onBoarding1Subtitle':"Get your medications delivered quickly and reliably to your doorstep.",
          'onBoarding2Title':"Fast, Reliable Medicine Delivery",
          'onBoarding2Subtitle':"Order meds in a few taps and receive them swiftly at home.",
          'onBoarding3Title':"Care at Your Convenience",
          'onBoarding3Subtitle':"Simplify your health routine with convenient prescription deliveries.",
          'onBoarding4Title':"Welcome to Medxpress",
          'onBoarding4Subtitle':"Do you want some help with your health to get better life?",
          'GetStarted':"Get Started",
          'Next':"Next",
          'Skip':"Skip",
          ///Login Page
          'loginTitle':"Welcome back",
          'loginSubtitle':"Discovered limitless choices and unmatched convenience",
          'LoginYourAccount':"Login Your Account",
          'Email':"Email",
          'EnterYourEmail':"Enter your email",
          'Password':"Password",
          'EnterYourPassword':"Enter your password",
          'RememberMe':"Remember me",
          'ForgotPassword?':"Forgot Password?",
          'Login':"Login",
          'SignUp':"Sign Up",
          'DontHaveAnAccount':"Don’t Have an Account?",
        },
        'bn_BD': {}
      };

  static const String submit = "Submit"; static const String appName = "T-Store"; static const String tContinue="Continue";
// OnBoarding Texts
  static const String onBoardingTitle="Choose your product";
  static const String onBoardingTitle2 = "Select Payment Method";
  static const String onBoardingTitle3= "Deliver at your door step";
  static const String onBoardingSubTitle="Welcome to a World of Limitless Choices - Your Perfect Product Awaits!";
  static const String onBoardingSubTitle2= "For Seamless Transactions, Choose Your Payment Path Your Convenience, Our Priority!"; static const String onBoardingSubTitle3= "From Our Doorstep to Yours - Swift, Secure, and Contactless Delivery!";
// Authentication Form Text
  static const String firstName="First Name";
  static const String lastName="Last Name";
  static const String email = "E-Mail";
  static const String password= "Password";
  static const String newPassword = "New Password";
  static const String username="Username";
  static const String phoneNo= "Phone Number";
  static const String rememberMe="Remember Me";
  static const String forgetPassword = "Forget Password?";
  static const String signIn= "Sign In";
  static const String createAccount = "Create Account";
  static const String orSignInWith ="or sign in with";
  static const String orSignUpWith ="or sign up with";
  static const String iAgreeTo= "I agree to";
  static const String privacyPolicy="Privacy Policy";
  static const String and="and";
  static const String termsOfUse = "Terms of use";
  static const String verificationCode="verificationCode";
  static const String resendEmail = "Resend Email";
  static const String resendEmailIn = "Resend email in";
// Authentication Headings Text
  static const String loginTitle = "Welcome back,";
  static const String loginSubTitle="Discover Limitless Choices and Unmatched Convenience.";
  static const String signupTitle="Let's create your account";
  static const String forgetPasswordTitle = "Forget password";
  static const String forgetPasswordSubTitle="Don't worry sometimes people can forget too, enter your email and we will send you a password reset Link."; static const String changeYourPasswordTitle="Password Reset Email Sent";
  static const String changeYourPasswordSubTitle="Your Account Security is Our Priority! We've Sent You a Secure Link to Safely Change Your Password and Keep Your Account Protected."; static const String confireEmail = "Verify your email address!";
  static const String confirmEmailSubTitle="Congratulations! Your Account Awaits: Verify Your Email to Start Shopping and Experience a World of Unrivaled Deals and Personalized Offers."; static const String emailNotReceivedMessage = "Didn't get the email? Check your junk/span or resend it.";
  static const String yourAccountCreatedTitle="Your account successfully created!";
  static const String yourAccountCreatedSubTitle = "Welcome to Your Ultimate Shopping Destination: Your Account is Created, Unleash the Joy of Seamless Online Shopping!";
}
