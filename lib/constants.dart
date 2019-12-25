// Constants for eye_ball.dart file
import 'dart:math';

const double kEyeHeight = 20.0;
const double kEyeWidth = 20.0;

const double kEyeBallHeight = kEyeHeight * 20 / 100;
const double kEyeBallWidth = kEyeWidth * 20 / 100;

const double kEyeBallOrigin_dy = (kEyeHeight - kEyeBallHeight) / 2 - 1.5;

const double piRight = pi / 2;
const double piLeft = pi * 1.5;
const double piBottom = pi;
const double piTop = pi * 2;

const double kAhMinnHeight = 150.0;

const Map<String, double> kLeftElipse = {
  'top': kAhMinnHeight * 0.3,
  'left': kAhMinnHeight * 0.23,
};
const Map<String, double> kRightElipse = {
  'top': kAhMinnHeight * 0.37,
  'right': kAhMinnHeight * 0.32,
};
const Map<String, double> kMouth = {
  'top': kAhMinnHeight * 0.43,
  'left': kAhMinnHeight * 0.37,
};
const Map<String, double> kLeftArm = {
  'bottom': kAhMinnHeight * 0.07,
  'right': kAhMinnHeight * 0.4,
};
const Map<String, double> kLeftLeg = {
  'bottom': kAhMinnHeight * 0.03,
  'right': kAhMinnHeight * 0.3,
};
const Map<String, double> kRightLeg = {
  'bottom': kAhMinnHeight * 0.07,
  'left': kAhMinnHeight * 0.27,
};

List<String> kWords = [
  'Don\'t look at me.',
  'Why you like this.',
  'I shy.',
  'FU',
  'GO AWAY !',
  'Don\'t make me zap u.',
  'I call polis !',
  'I like Mcdonalds',
  'I like cakes.',
  'I like Mcdonalds more than anything.. or anyone.',
  'Why you still looking at me.',
  'You don\'t PBJ ah',
  'PB PB PB',
  'CB CB CB',
  '1.2 times more than 1 is not 1.2 * 1 but 1.2 + 1, which is 2.2 !',
  'I like to sleep. Please go away.',
  '... ... ...',
  'Me no want talk to you.',
  'Me no want look at you.',
  'Stop looking at me.',
  '~Stop and stare...~ NOO ! ',
  'Dont Starve ? DONT STAREEE !',
  'I wanna pass away...',
  'Don\'t wanna exercise',
  'COF COF COF',
  'Roster is out !',
  'Can\'t wait to sleep',
  'Wallie is a dinosaur ~',
  'NO MORE !',
  'I want chanel bag',
  'Orange jus tanpa gula sikit ice !',
  'Dunno what to eat',
  'I like to eat',
  'McDonald\'s for breakfast',
  'McDonald\'s for lunch',
  'McDonald\'s for dinner',
  'McDonald\'s for supper',
  'Coca-Cola forever',
  'So... tired...',
  'NO MORE CUP NOODLES !!!',
  'Im a little toutplut..',
  'Something that you have heard alot of times, then record record record'
];
