import 'package:flutter/Material.dart';

const ExtraLargeTextSize = 32.0;
const LargeTextSize = 26.0;
const MediumTextSize = 20.0;
const BodyTextSize = 16.0;

const String FontNameDefault = 'JetBrainsMono';
const String SecondaryFontName = 'WorkSans';

const QuizQuestionBody = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w900,
  fontSize: LargeTextSize,
);

const ScoreStyles = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w900,
  fontSize: LargeTextSize,
);

const ResultMessageStyles = TextStyle(
  fontFamily: SecondaryFontName,
  fontWeight: FontWeight.w600,
  fontSize: BodyTextSize,
);

const CardHeader = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w900,
  fontSize: ExtraLargeTextSize,
  color: Colors.white,
);
