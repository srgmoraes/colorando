import 'package:audioplayers/audioplayers.dart';

class Settings {

  static final _backgroundSong = "mario.mp3";
  // const audioFilesPrefix = 'audio/';
  static final _audioPlayer = AudioPlayer();
  static final AudioCache _audioCache = AudioCache(fixedPlayer: _audioPlayer);

  static bool _playBackground = true;

  static void changeBackgroundSong(bool value) {
    if (value) {
      _audioCache.play(_backgroundSong);
      _playBackground = true;
    } else {
      _audioPlayer.stop();
      _playBackground = false;
    }
  }

  static void playBackgroundSong() {
    if (_playBackground) {
      _audioCache.play(_backgroundSong);
    }
  }

  static bool getPlayBackground() {
    return _playBackground;
  }

  static void setPlayBackground(bool value) {
    _playBackground = value;
  }

}
