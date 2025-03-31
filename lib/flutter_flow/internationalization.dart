import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'fr'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? frText = '',
  }) =>
      [enText, frText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'zeothptx': {
      'en': 'INTRODUCTION',
      'fr': '',
    },
    'owna4pf9': {
      'en': 'ABOUT US',
      'fr': '',
    },
    'mpbu8det': {
      'en': 'WATCH NOW',
      'fr': '',
    },
    '0fhgrweu': {
      'en': 'Dive ',
      'fr': '',
    },
    '7lhuq69m': {
      'en': 'Into The New Age',
      'fr': '',
    },
    'q7rxme2t': {
      'en': 'of',
      'fr': '',
    },
    '9olepdpb': {
      'en': ' Entrepreneurs ',
      'fr': '',
    },
    '4bxhbz5t': {
      'en': 'Starting with',
      'fr': '',
    },
    'fza79tzf': {
      'en': 'YOU !',
      'fr': '',
    },
    'chx53opv': {
      'en': 'A futuristic approach to Education',
      'fr': '',
    },
    'zlh58ha5': {
      'en': 'WATCH NOW',
      'fr': '',
    },
    'q94e25xk': {
      'en': 'INTRODUCTION',
      'fr': '',
    },
    'ikdjxbbj': {
      'en': 'TO THE YOUTH TALK',
      'fr': '',
    },
    'o330cxiv': {
      'en':
          '\nThe youth talk operates in the context of youth self-empowerment with a major focus on education. We believe the young people have what it takes to shape their journeys throughout building a better world. All they need is our mentorship and information.\n\nWe are essenced by the desire of showing what the potentialities of the future generation of leaders, worldwide and Africans in particular, are. We have a major focus on high school and university students, and entrepreneurs worldwide with no area of interest distinction. \n\nWe seek to help the young people find the path to create opportunities for themselves and mentor them throughout the process. This is done through the entrepreneurial content we create and digital trainings we offer on our platform on the method and importance of articulating a mission in life.',
      'fr': '',
    },
    '8x14c7e0': {
      'en': 'ABOUT US',
      'fr': '',
    },
    'ch68us80': {
      'en':
          'The youth talk is a digital platform partnering with all high schools and universities in Kigali city and expanding to Uganda, Togo, and all African countries. \n\nThe goal of the organization is to help final-year high school and university students choose the proper university field based on their purpose in life and articulate, by themselves, a mission focused on solving a problem in their communities. We also sick to inspire young aspiring entrepreneurs by hosting different experienced entrepreneurs, professional venture owners, and organizations to share their experience in exploring specific entrepreneurship paths.                       \n\nIn addition, we showcase demonstrations of innovative ideas and concepts materialized by young people in all fields, especially in the domain of technology.',
      'fr': '',
    },
    'f8o18eni': {
      'en': 'Explore Now',
      'fr': '',
    },
    'ymgj9vfa': {
      'en': 'ABOUT US',
      'fr': '',
    },
    'kj1f1ejr': {
      'en': 'INTRODUCTION',
      'fr': '',
    },
    'mb48zl1f': {
      'en': 'SOCIALIZE WITH THE YOUTH TALK',
      'fr': '',
    },
    'sq2eq4ji': {
      'en': 'WATCH NOW',
      'fr': '',
    },
    'lu829f02': {
      'en': 'Home',
      'fr': '',
    },
  },
  // Authentification
  {
    'v2efsqbr': {
      'en': 'Sign In',
      'fr': '',
    },
    '3vqwaenn': {
      'en': 'Welcome Back !',
      'fr': '',
    },
    'xajayfl3': {
      'en': 'Email',
      'fr': '',
    },
    'uujqhpel': {
      'en': 'Password',
      'fr': '',
    },
    'mrijulum': {
      'en': 'Sign in',
      'fr': '',
    },
    'o5l5phcv': {
      'en': 'Or sign in with',
      'fr': '',
    },
    'xzh6ylyx': {
      'en': 'Forgot Password?',
      'fr': '',
    },
    'pymdrn0p': {
      'en': 'Sign Up',
      'fr': '',
    },
    '62950quf': {
      'en': 'Create Account',
      'fr': '',
    },
    'a2tl8ez7': {
      'en': 'Email',
      'fr': '',
    },
    '8duvi4dp': {
      'en': 'Password',
      'fr': '',
    },
    'yn2sgfci': {
      'en': 'Password',
      'fr': '',
    },
    'fvql4hep': {
      'en': 'Register',
      'fr': '',
    },
    'oillzoil': {
      'en': 'Or sign up with',
      'fr': '',
    },
    '7cvsqptu': {
      'en': 'Forgot Password?',
      'fr': '',
    },
    'qdlzj4zs': {
      'en': 'Home',
      'fr': '',
    },
  },
  // Videos
  {
    'd1ck5luj': {
      'en': 'ENTREPRENEURSHIP SERIES',
      'fr': '',
    },
    'pe29j1pg': {
      'en': 'DESCRIPTION: ',
      'fr': '',
    },
    'yi2e1abg': {
      'en':
          'We have hosted a flashy virtual reality team , they gave us great insights.We have hosted a flashy virtual reality team , they gave us great insights.We have hosted a flashy virtual reality team , they gave us great insights.We have hosted a flashy virtual reality team , they gave us great insights.We have hosted a flashy virtual reality team , they gave us great insights.We have hosted a flashy virtual reality team , they gave us great insights.',
      'fr': '',
    },
    'xt747saj': {
      'en': 'Likes 1k',
      'fr': '',
    },
    'vs3flnxg': {
      'en': 'Views 100k',
      'fr': '',
    },
    'gysfrs87': {
      'en': 'DESCRIPTION: ',
      'fr': '',
    },
    'id21jpgb': {
      'en':
          'We have hosted a flashy virtual reality team , they gave us great insights.We have hosted a flashy virtual reality team , they gave us great insights.We have hosted a flashy virtual reality team , they gave us great insights.We have hosted a flashy virtual reality team , they gave us great insights.We have hosted a flashy virtual reality team , they gave us great insights.We have hosted a flashy virtual reality team , they gave us great insights.',
      'fr': '',
    },
  },
  // forgotPassword
  {
    'ph3fldh4': {
      'en': 'Back',
      'fr': '',
    },
    'hufe3zc3': {
      'en': 'Forgot  Password',
      'fr': '',
    },
    'nd3ny2tt': {
      'en':
          'We will send you an email with a link to reset your password, please enter the email associated with your account below.',
      'fr': '',
    },
    '4rtau3mc': {
      'en': 'Your email address...',
      'fr': '',
    },
    '3m7xdbb1': {
      'en': 'Enter your email...',
      'fr': '',
    },
    'uaeiwjha': {
      'en': 'Send Link',
      'fr': '',
    },
    '59g6ralq': {
      'en': 'Home',
      'fr': '',
    },
  },
  // profilePage
  {
    'w8j7g0fm': {
      'en': 'Your Account',
      'fr': '',
    },
    'n85wl3y1': {
      'en': 'Edit Profile',
      'fr': '',
    },
    '85ib8ny7': {
      'en': 'Notification Settings',
      'fr': '',
    },
    '2o3j8uh4': {
      'en': 'App Settings',
      'fr': '',
    },
    'y1fhhe66': {
      'en': 'Support',
      'fr': '',
    },
    '8yvva9pr': {
      'en': 'Terms of Service',
      'fr': '',
    },
    '9sumwb4i': {
      'en': 'Log Out',
      'fr': '',
    },
    'n6na4u03': {
      'en': 'Home',
      'fr': '',
    },
  },
  // ProfileEditPage
  {
    'jpjgtn2x': {
      'en': 'Later',
      'fr': '',
    },
    'bx3wz86k': {
      'en': 'Edit Profile',
      'fr': '',
    },
    'bd9hivgb': {
      'en': 'Your Name',
      'fr': '',
    },
    'fo6u4xpg': {
      'en': 'Your City',
      'fr': '',
    },
    '6o4xtfoj': {
      'en': 'State',
      'fr': '',
    },
    'kfmg0501': {
      'en': 'Select State',
      'fr': '',
    },
    'w3gbae3x': {
      'en': 'search for your country here',
      'fr': '',
    },
    'mhlqru4a': {
      'en': 'State',
      'fr': '',
    },
    'nj0tghv1': {
      'en': 'Alabama',
      'fr': '',
    },
    't8yf1b9y': {
      'en': 'Alaska',
      'fr': '',
    },
    '4kk8f2qx': {
      'en': 'Arizona',
      'fr': '',
    },
    'x343f6ph': {
      'en': 'Arkansas',
      'fr': '',
    },
    'aeve7x5b': {
      'en': 'California',
      'fr': '',
    },
    '3mgtg17o': {
      'en': 'Colorado',
      'fr': '',
    },
    'ok08d902': {
      'en': 'Connecticut',
      'fr': '',
    },
    '9rcoxfal': {
      'en': 'Delaware',
      'fr': '',
    },
    'j676udlc': {
      'en': 'Florida',
      'fr': '',
    },
    'yi9e63cx': {
      'en': 'Georgia',
      'fr': '',
    },
    'o5611j74': {
      'en': 'Hawaii',
      'fr': '',
    },
    'o2x3npg4': {
      'en': 'Idaho',
      'fr': '',
    },
    '8ga0m616': {
      'en': 'Illinoi',
      'fr': '',
    },
    '8uudhm06': {
      'en': 'Indiana',
      'fr': '',
    },
    'fs5mmbce': {
      'en': 'Iowa',
      'fr': '',
    },
    'yhoo5h29': {
      'en': 'Kansas',
      'fr': '',
    },
    'iepw9vtl': {
      'en': 'Kentucky',
      'fr': '',
    },
    'if75v79e': {
      'en': 'Louisiana',
      'fr': '',
    },
    'urx9kb8d': {
      'en': 'Maine',
      'fr': '',
    },
    '5o7agl3i': {
      'en': 'Maryland',
      'fr': '',
    },
    '654jpeqw': {
      'en': 'Massachusetts',
      'fr': '',
    },
    'djww56lo': {
      'en': 'Michigan',
      'fr': '',
    },
    'l2g0s73b': {
      'en': 'Minnesota',
      'fr': '',
    },
    'dwj8u27x': {
      'en': 'Mississippi',
      'fr': '',
    },
    '8542l4u6': {
      'en': 'Missouri',
      'fr': '',
    },
    '4jvfo90f': {
      'en': 'Monta',
      'fr': '',
    },
    '33fkocsa': {
      'en': 'Nebraska',
      'fr': '',
    },
    'slk3l37f': {
      'en': 'Nevada',
      'fr': '',
    },
    '5d0fnzft': {
      'en': 'New Hampshire',
      'fr': '',
    },
    'gx7p02dc': {
      'en': 'New Jersey',
      'fr': '',
    },
    'rr82ikrr': {
      'en': 'New Mexico',
      'fr': '',
    },
    'o3wn9l0w': {
      'en': 'New York',
      'fr': '',
    },
    '9peopxja': {
      'en': 'North Carolina',
      'fr': '',
    },
    'dqmu7aku': {
      'en': 'North Dak',
      'fr': '',
    },
    'qzjnot9v': {
      'en': 'Ohio',
      'fr': '',
    },
    '3fc3ooq8': {
      'en': 'Oklahoma',
      'fr': '',
    },
    '8di76g2b': {
      'en': 'Oregon',
      'fr': '',
    },
    'ezfainwd': {
      'en': 'Pennsylvani',
      'fr': '',
    },
    'fbmjvpe9': {
      'en': 'Rhode Island',
      'fr': '',
    },
    'x5k8g2dk': {
      'en': 'South Caroli',
      'fr': '',
    },
    't7f1g4dv': {
      'en': 'South Dakota',
      'fr': '',
    },
    '5mpnswn1': {
      'en': 'Tennessee',
      'fr': '',
    },
    'hnnxypg2': {
      'en': 'Texas',
      'fr': '',
    },
    'a17tshab': {
      'en': 'Utah',
      'fr': '',
    },
    '34u85wql': {
      'en': 'Vermont',
      'fr': '',
    },
    'mpiwh28y': {
      'en': 'Virginia',
      'fr': '',
    },
    'sb0tmum6': {
      'en': 'Washingto',
      'fr': '',
    },
    'rtpgzdb6': {
      'en': 'West Virginia',
      'fr': '',
    },
    'gpoymo79': {
      'en': 'Wisconsin',
      'fr': '',
    },
    'zz7f1y74': {
      'en': 'Wyoming',
      'fr': '',
    },
    'fzynt78i': {
      'en': 'Rwanda',
      'fr': '',
    },
    '9ha5kdzq': {
      'en': 'Togo',
      'fr': '',
    },
    'fs6h77n4': {
      'en': 'Your bio',
      'fr': '',
    },
    't30cf5tn': {
      'en': 'Save Changes',
      'fr': '',
    },
    'uhgfv0ak': {
      'en': 'Home',
      'fr': '',
    },
  },
  // ProfileEditPage2
  {
    'qui90mhx': {
      'en': 'Back',
      'fr': '',
    },
    '36ttrazn': {
      'en': 'Edit Profile',
      'fr': '',
    },
    'yoiydkwi': {
      'en': 'Your Name',
      'fr': '',
    },
    '2hjfhoj4': {
      'en': 'Your City',
      'fr': '',
    },
    'v4hrjp46': {
      'en': 'State',
      'fr': '',
    },
    'zu26plqi': {
      'en': 'Select State',
      'fr': '',
    },
    'nvd2ss5u': {
      'en': 'search for your country here',
      'fr': '',
    },
    '9cn80ydf': {
      'en': 'State',
      'fr': '',
    },
    've1060oe': {
      'en': 'Alabama',
      'fr': '',
    },
    'vktfvk96': {
      'en': 'Alaska',
      'fr': '',
    },
    'msbzibd0': {
      'en': 'Arizona',
      'fr': '',
    },
    '02qb1bql': {
      'en': 'Arkansas',
      'fr': '',
    },
    'i9b2fmqw': {
      'en': 'California',
      'fr': '',
    },
    'cpqywwu6': {
      'en': 'Colorado',
      'fr': '',
    },
    'h1fsx5q8': {
      'en': 'Connecticut',
      'fr': '',
    },
    'si35vso8': {
      'en': 'Delaware',
      'fr': '',
    },
    'pfyo3bp8': {
      'en': 'Florida',
      'fr': '',
    },
    'wkw9zi3x': {
      'en': 'Georgia',
      'fr': '',
    },
    '9pld5q7m': {
      'en': 'Hawaii',
      'fr': '',
    },
    'p4251q24': {
      'en': 'Idaho',
      'fr': '',
    },
    'aq3s8c9b': {
      'en': 'Illinoi',
      'fr': '',
    },
    's11uw81a': {
      'en': 'Indiana',
      'fr': '',
    },
    'ifdn8j81': {
      'en': 'Iowa',
      'fr': '',
    },
    'nr6fuscl': {
      'en': 'Kansas',
      'fr': '',
    },
    '26taogm7': {
      'en': 'Kentucky',
      'fr': '',
    },
    'yt1k76fs': {
      'en': 'Louisiana',
      'fr': '',
    },
    'asqxnt7e': {
      'en': 'Maine',
      'fr': '',
    },
    'q8p1szr7': {
      'en': 'Maryland',
      'fr': '',
    },
    'bafn0g7f': {
      'en': 'Massachusetts',
      'fr': '',
    },
    'n3a98msa': {
      'en': 'Michigan',
      'fr': '',
    },
    '4pz1a3qv': {
      'en': 'Minnesota',
      'fr': '',
    },
    'wu0u0qs2': {
      'en': 'Mississippi',
      'fr': '',
    },
    'etbynfbt': {
      'en': 'Missouri',
      'fr': '',
    },
    'o6po20zv': {
      'en': 'Monta',
      'fr': '',
    },
    '7k74ufck': {
      'en': 'Nebraska',
      'fr': '',
    },
    '1qt91nrb': {
      'en': 'Nevada',
      'fr': '',
    },
    'flzbklpm': {
      'en': 'New Hampshire',
      'fr': '',
    },
    '48paewgf': {
      'en': 'New Jersey',
      'fr': '',
    },
    'r0brbo42': {
      'en': 'New Mexico',
      'fr': '',
    },
    'cnxc0msu': {
      'en': 'New York',
      'fr': '',
    },
    'huave01d': {
      'en': 'North Carolina',
      'fr': '',
    },
    'qp6zz4br': {
      'en': 'North Dak',
      'fr': '',
    },
    'rsoj3jps': {
      'en': 'Ohio',
      'fr': '',
    },
    'trwhik7u': {
      'en': 'Oklahoma',
      'fr': '',
    },
    '5ilhnm41': {
      'en': 'Oregon',
      'fr': '',
    },
    'dhkv634w': {
      'en': 'Pennsylvani',
      'fr': '',
    },
    't73g52c6': {
      'en': 'Rhode Island',
      'fr': '',
    },
    'ohy2977a': {
      'en': 'South Caroli',
      'fr': '',
    },
    'kmr1mfad': {
      'en': 'South Dakota',
      'fr': '',
    },
    '8f0tws7e': {
      'en': 'Tennessee',
      'fr': '',
    },
    'jnii92zt': {
      'en': 'Texas',
      'fr': '',
    },
    'mi23j40y': {
      'en': 'Utah',
      'fr': '',
    },
    '7tiqha0s': {
      'en': 'Vermont',
      'fr': '',
    },
    'enw1gjb2': {
      'en': 'Virginia',
      'fr': '',
    },
    'm82505dz': {
      'en': 'Washingto',
      'fr': '',
    },
    '84uhe1q1': {
      'en': 'West Virginia',
      'fr': '',
    },
    'qmj0axq8': {
      'en': 'Wisconsin',
      'fr': '',
    },
    'eo2lsw30': {
      'en': 'Wyoming',
      'fr': '',
    },
    '21b6mov5': {
      'en': 'Rwanda',
      'fr': '',
    },
    '495cf2q2': {
      'en': 'Togo',
      'fr': '',
    },
    'lvqi0cda': {
      'en': 'burundi',
      'fr': '',
    },
    'h9vmwz5i': {
      'en': 'Your bio',
      'fr': '',
    },
    '6lhwi828': {
      'en': 'Save Changes',
      'fr': '',
    },
    'svoo9cpa': {
      'en': 'Home',
      'fr': '',
    },
  },
  // VIDEOCOMMENTS
  {
    'znup1j7s': {
      'en': 'COMMENTS PAGE',
      'fr': '',
    },
    'hxxooqz4': {
      'en': '10:00am',
      'fr': '',
    },
    'yn08z0i9': {
      'en': 'Comment on this post here...',
      'fr': '',
    },
  },
  // VideosCopy
  {
    'hbkah0lu': {
      'en': 'ENTREPRENEURSHIP SERIES',
      'fr': '',
    },
    'hyuennab': {
      'en': 'DESCRIPTION: ',
      'fr': '',
    },
    'x4b6pavl': {
      'en':
          'We have hosted a flashy virtual reality team , they gave us great insights.We have hosted a flashy virtual reality team , they gave us great insights.We have hosted a flashy virtual reality team , they gave us great insights.We have hosted a flashy virtual reality team , they gave us great insights.We have hosted a flashy virtual reality team , they gave us great insights.We have hosted a flashy virtual reality team , they gave us great insights.',
      'fr': '',
    },
    'up98ig5s': {
      'en': 'Likes 1k',
      'fr': '',
    },
    'wbk6prnx': {
      'en': 'Views 100k',
      'fr': '',
    },
    '32oq4e63': {
      'en': 'DESCRIPTION: ',
      'fr': '',
    },
    'lj8sfbx5': {
      'en':
          'We have hosted a flashy virtual reality team , they gave us great insights.We have hosted a flashy virtual reality team , they gave us great insights.We have hosted a flashy virtual reality team , they gave us great insights.We have hosted a flashy virtual reality team , they gave us great insights.We have hosted a flashy virtual reality team , they gave us great insights.We have hosted a flashy virtual reality team , they gave us great insights.',
      'fr': '',
    },
    'rs49hgca': {
      'en': 'WATCH NOW',
      'fr': '',
    },
  },
  // Miscellaneous
  {
    'g5z1kp3l': {
      'en': 'WATCH  NOW',
      'fr': '',
    },
    'yd7klc5y': {
      'en': 'ABOUT US',
      'fr': '',
    },
    'tyjig8sh': {
      'en': 'Into The New Age',
      'fr': '',
    },
    'fektbi42': {
      'en': 'WATCH NOW',
      'fr': '',
    },
    'hfxysr8o': {
      'en': 'Send Link',
      'fr': '',
    },
    'hvsp5fil': {
      'en': '',
      'fr': '',
    },
    '0sufzia5': {
      'en': '',
      'fr': '',
    },
    '3t4dcdkj': {
      'en': '',
      'fr': '',
    },
    '69619c48': {
      'en': '',
      'fr': '',
    },
    'itvo39pd': {
      'en': '',
      'fr': '',
    },
    '2q1wn2tk': {
      'en': '',
      'fr': '',
    },
    'xbz41ynp': {
      'en': '',
      'fr': '',
    },
    '2cdm8mob': {
      'en': '',
      'fr': '',
    },
    '7s2tu05e': {
      'en': '',
      'fr': '',
    },
    'hsj4npf2': {
      'en': '',
      'fr': '',
    },
    'fc2gqjw6': {
      'en': '',
      'fr': '',
    },
    'h2h4cwk3': {
      'en': '',
      'fr': '',
    },
    'i4uahqom': {
      'en': '',
      'fr': '',
    },
    'ly856c76': {
      'en': '',
      'fr': '',
    },
    'mflf7dod': {
      'en': '',
      'fr': '',
    },
    'py2s1dl0': {
      'en': '',
      'fr': '',
    },
    '7u9oe7s5': {
      'en': '',
      'fr': '',
    },
    'eh5tndtn': {
      'en': '',
      'fr': '',
    },
    'nwf8ealu': {
      'en': '',
      'fr': '',
    },
    'ewcx0iku': {
      'en': '',
      'fr': '',
    },
    '1yib5ftv': {
      'en': '',
      'fr': '',
    },
    'f45qtsvi': {
      'en': '',
      'fr': '',
    },
    'x3pc0q2z': {
      'en': '',
      'fr': '',
    },
    'w9jt4a49': {
      'en': '',
      'fr': '',
    },
    'qyusd2nn': {
      'en': '',
      'fr': '',
    },
    '8manxumy': {
      'en': '',
      'fr': '',
    },
    '1kppf51y': {
      'en': '',
      'fr': '',
    },
  },
].reduce((a, b) => a..addAll(b));
