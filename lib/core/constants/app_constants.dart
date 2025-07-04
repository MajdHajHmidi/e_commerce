class AppConstants {
  static const appName = '3legant';
  static const appDeepLinkScheme = 'elegant';
  static const emailVerificationSupabaseRedirectHost = 'login-callback';
  static const googleSigninSupabaseRedirectHost = 'google-signin';
  static const emailPasswordResetSupabaseRedirectHost =
      'password-reset-callback';

  static String getAppDeepLinkUrl(String host) {
    return '$appDeepLinkScheme://$host';
  }

  static const appStartingPaginationIndex = 1;

  static const appPrivacyPolicyWebsiteUrl =
      'https://3legant-app.netlify.app/privacy-policy.html';
  static const appTermsOfUseWebsiteUrl =
      'https://3legant-app.netlify.app/terms-of-use.html';

  static const userAvatarPlaceholderImageUrl =
      'https://yzvjrxpwozrcbfdtqkbi.supabase.co/storage/v1/object/public/user-avatars//placeholder.png';
}
