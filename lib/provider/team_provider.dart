import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TeamProvider extends ChangeNotifier {
  // set numberof Thms
  int _numberOfTeams = 2;
  getNumberOfTeams() => _numberOfTeams;
  setNumberOfTeams(int counter) => _numberOfTeams;

  //int _wordscore = 0;
  //int get getWordScore => _wordscore;

  void incrementNumberOfTeams() {
    if (_numberOfTeams > 3) {
      _numberOfTeams;
    } else {
      _numberOfTeams++;
    }
    notifyListeners();
  }

  void lowoffNumberOfTeams() {
    if (_numberOfTeams == 2) {
      _numberOfTeams;
    } else {
      _numberOfTeams--;
    }
    notifyListeners();
  }

//this part and function for time game
  int _gametime = 0;
  getTimeForMatch() => _gametime;
  setTimeForMatch(int time) => _gametime;
  void incermentGameTime() {
    if (_gametime == 8) {
      _gametime;
    } else {
      _gametime++;
    }
    notifyListeners();
  }

  void lowoffGameTime() {
    if (_gametime == 0) {
      _gametime;
    } else {
      _gametime--;
    }
    notifyListeners();
  }

//its for titte in detail_game_screans numberRounds in 25 in 1 or 2 or 3
  int _numberOfRoundsOfGameTitle = 1;
  void incrementNumberOfRoundsOfGame() {
    _numberOfRoundsOfGameTitle++;
    notifyListeners();
  }

  gettitleNumberOfRoundsOfGame() => _numberOfRoundsOfGameTitle;
  settitleNumberOfRoundsOfGame(int numberFortitle) =>
      _numberOfRoundsOfGameTitle;

  //this part and function Rounds choice in detail and type of match
  int _numberofRoundsOfGame = 3;

  getNumberOfRounds() => _numberofRoundsOfGame;
  setNumberOfRounds(int numberRounds) => _numberofRoundsOfGame;

  void incermentnumberofrounds() {
    if (_numberofRoundsOfGame == 25) {
      _numberofRoundsOfGame;
    } else {
      _numberofRoundsOfGame++;
    }
    notifyListeners();
  }

  void lowoffnumberofrounds() {
    if (_numberofRoundsOfGame == 3) {
      _numberofRoundsOfGame;
    } else {
      _numberofRoundsOfGame--;
    }
    notifyListeners();
  }

  // this part for multi language provider

  //this part for typeofMatchScreans Input Name Screans

  changeNameTeams1(String value) async {
    final box = await Hive.openBox("Team");

    if (value.length >= 2) {
      await box.put('team1', value);
      _nameTeam1 = value;
    }
    notifyListeners();
  }

  changeNameTeams2(String value) async {
    if (value.length >= 2) {
      await Hive.box("Team").put("team1", value);
      _nameTeam2 = value;
    }
    notifyListeners();
  }

  void changeNameTeams3(String value) async {
    if (value.length >= 2) {
      _nameTeam3 = value;
    }
    notifyListeners();
  }

  void changeNameTeams4(String value) async {
    if (value.length >= 2) {
      _nameTeam4 = value;
    }
    notifyListeners();
  }

  bool get visibilityTeam3 {
    if (_numberOfTeams > 2) {
      return true;
    } else {
      return false;
    }
  }

  bool get visibilityTeam4 {
    if (_numberOfTeams > 3) {
      return true;
    } else {
      return false;
    }
  }

  // hintStyle Color TextFor TypeOfMatchScreans

  //this part for Score Team Win or lose

  int _wordScoreTeam1 = 0;

  getCounterOfScoreTeam1() => _wordScoreTeam1;
  setCounterOfScoreTeam1(int score) => _wordScoreTeam1;

  int _wordScoreTeam2 = 0;

  getCounterOfScoreTeam2() => _wordScoreTeam2;
  setCounterOfScoreTeam2(int score) => _wordScoreTeam2;

  // ignore: prefer_final_fields
  int _wordScoreTeam3 = 0;

  getCounterOfScoreTeam3() => _wordScoreTeam3;
  setCounterOfScoreTeam3(int score) => _wordScoreTeam3;

  // ignore: prefer_final_fields
  int _wordScoreTeam4 = 0;

  getCounterOfScoreTeam4() => _wordScoreTeam4;
  setCounterOfScoreTeam4(int score) => _wordScoreTeam4;

  // this part for Icon visibility
  bool get visibilityIconChoice {
    return true;
  }

  //Time Screans Change Text in click

  bool _checkbtn = false;
  bool get checkbtn => _checkbtn;
  void setbtnboolForCheck(bool checkbtn) {
    _checkbtn = checkbtn;
    notifyListeners();
  }

  String _nameBTn = 'start';
  String get namebtn => _nameBTn;
  void changenamebtn(String btnName) {
    _nameBTn = btnName;
    notifyListeners();
  }

  //this part for check team1 or team2 or... win ro lose and set Score and backgroid color in Score Screans

  // this part for bool see icon or not visibility Icon

  bool _visibilirtIconTeam1 = false;
  bool _visibilirtIconTeam2 = false;
  bool _visibilirtIconTeam3 = false;
  bool _visibilirtIconTeam4 = false;

  bool get visibilityTeam1Icon => _visibilirtIconTeam1;
  bool get visibilityTeam2Icon => _visibilirtIconTeam2;
  bool get visibilityTeam3Icon => _visibilirtIconTeam3;
  bool get visibilityTeam4Icon => _visibilirtIconTeam4;

  bool _winorlosebtn = false;
  bool get checkbtnwinlose => _winorlosebtn;

  void checkwinorlosegamebtn(bool check) {
    _winorlosebtn = check;
    notifyListeners();
  }

  //// here code for handel how playing game in innings and showing icon or not showing icon
  int _numberOfTeamShowIconPlay = -1;
  void incrementinnigns() {
    _numberOfTeamShowIconPlay++;
    notifyListeners();
  }

  int get getcheckforInnigns => _numberOfTeamShowIconPlay;

  void setaddcheckforInnigns() {
    if (_winorlosebtn == true) {
      _numberOfTeamShowIconPlay++;
    } else {
      _numberOfTeamShowIconPlay++;
    }

    if (_numberOfTeamShowIconPlay == _numberOfTeams) {
      if (_numberOfRoundsOfGameTitle == _numberofRoundsOfGame) {
        _numberOfTeamShowIconPlay++;
        _numberOfTeamShowIconPlay++;

        notifyListeners();
        if (_numberOfTeamShowIconPlay == _numberOfTeams) {
          _numberOfTeamShowIconPlay++;
        }
      } else {
        _numberOfTeamShowIconPlay = 0;
        _numberOfRoundsOfGameTitle++;
      }
    } else {
      _numberOfTeamShowIconPlay;
    }
    setvisibilityIcon();
    notifyListeners();
  }

  void reasetvalue() {
    _wordScoreTeam1 = 0;
    _wordScoreTeam2 = 0;
    _wordScoreTeam3 = 0;
    _wordScoreTeam4 = 0;
    _numberOfTeams = 2;
    _showIconbackGame = false;
    _numberOfRoundsOfGameTitle = 1;
    _numberOfTeamShowIconPlay = -1;
  }

// this function for set visibility Icon in detailGame for Screans
  void setvisibilityIcon() {
    switch (_numberOfTeamShowIconPlay) {
      case 0:
        _visibilirtIconTeam1 = true;
        _visibilirtIconTeam2 = false;
        _visibilirtIconTeam3 = false;
        _visibilirtIconTeam4 = false;
        break;
      case 1:
        _visibilirtIconTeam1 = false;
        _visibilirtIconTeam2 = true;
        _visibilirtIconTeam3 = false;
        _visibilirtIconTeam4 = false;

        break;
      case 2:
        _visibilirtIconTeam1 = false;
        _visibilirtIconTeam2 = false;
        _visibilirtIconTeam3 = true;
        _visibilirtIconTeam4 = false;
        break;
      case 3:
        _visibilirtIconTeam1 = false;
        _visibilirtIconTeam2 = false;
        _visibilirtIconTeam3 = false;
        _visibilirtIconTeam4 = true;
        break;
    }
    notifyListeners();
  }

  //this function for Score
  //int time, int lenghtWord

  int _quicktosayscore = 0;
  int get getQuicktosayscore => _quicktosayscore;

  setScoreForAllTeam(String lenghWord, int win) {
    // int timeSecounds = int.parse(time);
    if (_visibilirtIconTeam1 == true) {
      if (win == 1) {
        if (lenghWord.length < 4) {
          _wordScoreTeam1++;
          _wordScoreTeam1++;
          _quicktosayscore = 2;
        } else if (lenghWord.length < 7) {
          _wordScoreTeam1++;
          _wordScoreTeam1++;
          _quicktosayscore = 2;
        } else if (lenghWord.length < 12) {
          _wordScoreTeam1++;
          _wordScoreTeam1++;
          _wordScoreTeam1++;
          _quicktosayscore = 3;
        } else if (lenghWord.length < 18) {
          _wordScoreTeam1++;
          _wordScoreTeam1++;
          _wordScoreTeam1++;
          _wordScoreTeam1++;
          _quicktosayscore = 4;
        } else if (lenghWord.length < 30) {
          _wordScoreTeam1++;
          _wordScoreTeam1++;
          _wordScoreTeam1++;
          _wordScoreTeam1++;
          _quicktosayscore = 4;
        }
      } else {
        _wordScoreTeam1;
      }
    }
    if (_visibilirtIconTeam2 == true) {
      if (win == 1) {
        if (lenghWord.length < 4) {
          _wordScoreTeam2++;
          _wordScoreTeam2++;
          _quicktosayscore = 2;
        } else if (lenghWord.length < 7) {
          _wordScoreTeam2++;
          _wordScoreTeam2++;
          _quicktosayscore = 2;
        } else if (lenghWord.length < 12) {
          _wordScoreTeam2++;
          _wordScoreTeam2++;
          _wordScoreTeam2++;
          _quicktosayscore = 3;
        } else if (lenghWord.length < 18) {
          _wordScoreTeam2++;
          _wordScoreTeam2++;
          _wordScoreTeam2++;
          _wordScoreTeam2++;
          _quicktosayscore = 4;
        } else if (lenghWord.length < 30) {
          _wordScoreTeam2++;
          _wordScoreTeam2++;
          _wordScoreTeam2++;
          _wordScoreTeam2++;
          _quicktosayscore = 4;
        }
      } else {
        _wordScoreTeam2;
      }
    }

    if (_visibilirtIconTeam3 == true) {
      if (lenghWord.length < 4) {
        _wordScoreTeam3++;
        _wordScoreTeam3++;
        _quicktosayscore = 2;
      } else if (lenghWord.length < 7) {
        _wordScoreTeam3++;
        _wordScoreTeam3++;
        _quicktosayscore = 2;
      } else if (lenghWord.length < 12) {
        _wordScoreTeam3++;
        _wordScoreTeam3++;
        _wordScoreTeam3++;
        _quicktosayscore = 3;
      } else if (lenghWord.length < 18) {
        _wordScoreTeam3++;
        _wordScoreTeam3++;
        _wordScoreTeam3++;
        _wordScoreTeam3++;
        _quicktosayscore = 4;
      } else if (lenghWord.length < 30) {
        _wordScoreTeam3++;
        _wordScoreTeam3++;
        _wordScoreTeam3++;
        _wordScoreTeam3++;
        _quicktosayscore = 4;
      } else {
        _wordScoreTeam3;
      }
    }

    if (win == 1) {
      if (_visibilirtIconTeam4 == true) {
        if (lenghWord.length < 4) {
          _wordScoreTeam4++;
          _wordScoreTeam4++;
          _quicktosayscore = 2;
        } else if (lenghWord.length < 7) {
          _wordScoreTeam4++;
          _wordScoreTeam4++;
          _quicktosayscore = 2;
        } else if (lenghWord.length < 12) {
          _wordScoreTeam4++;
          _wordScoreTeam4++;
          _wordScoreTeam4++;
          _quicktosayscore = 3;
        } else if (lenghWord.length < 18) {
          _wordScoreTeam4++;
          _wordScoreTeam4++;
          _wordScoreTeam4++;
          _wordScoreTeam4++;
          _quicktosayscore = 4;
        } else if (lenghWord.length < 30) {
          _wordScoreTeam4++;
          _wordScoreTeam4++;
          _wordScoreTeam4++;
          _wordScoreTeam4++;
          _quicktosayscore = 4;
        }
      } else {
        _wordScoreTeam4;
      }
    }
    notifyListeners();
  }

  seeGroupNameTeam() {
    if (_visibilirtIconTeam1 == true) {
      return _nameTeam1;
    }
    if (_visibilirtIconTeam2 == true) {
      return _nameTeam2;
    }
    if (_visibilirtIconTeam3 == true) {
      return _nameTeam3;
    }
    if (_visibilirtIconTeam4 == true) {
      return _nameTeam4;
    }
    notifyListeners();
  }

  int _wrong = 0;
  int get getwrongScore => _wrong;
  void setwrontScore(int wrongScore) {
    _wrong = wrongScore;
    notifyListeners();
  }

  void subtractioScore() {
    if (_wrong > 2) {
      _wrong = 0;
    } else if (_wrong == 3) {
    } else {
      _wrong++;
    }

    if (_wrong == 2) {
      if (_visibilirtIconTeam1 == true) {
        _wordScoreTeam1--;
      }
      if (_visibilirtIconTeam2 == true) {
        _wordScoreTeam2--;
      }
      if (_visibilirtIconTeam3 == true) {
        _wordScoreTeam3--;
      }
      if (_visibilirtIconTeam4 == true) {
        _wordScoreTeam4--;
      }
    }
    notifyListeners();
  }

  bool _showIconbackGame = false;
  bool get backLastGame => _showIconbackGame;

  void backGameIconShow(bool backGame) async {
    final perfs = await SharedPreferences.getInstance();
    _showIconbackGame = backGame;
    await perfs.setBool("ShowIconBackGame", backGame);
    notifyListeners();
  }

  String _nameTeam1 = "";
  String _nameTeam2 = "";
  String _nameTeam3 = "تیم سوم";
  String _nameTeam4 = "تیم چهارم";

  String get getNameTeam1 => _nameTeam1;
  String get getNameTeam2 => _nameTeam2;
  String get getNameTeam3 => _nameTeam3;
  String get getNameTeam4 => _nameTeam4;

  getShowIconbackGame() async {
    final perfs = await SharedPreferences.getInstance();
    _showIconbackGame = perfs.getBool('ShowIconBackGame') ?? false;
    notifyListeners();
  }

  final String key = "";

  saveData() async {
    final box = await Hive.openBox("Team");
    //await box.put('team1', _nameTeam1);
    await box.put('team2', _nameTeam2);
    await box.put('team3', _nameTeam3);
    await box.put('team4', _nameTeam4);

    box.put('numberofRoundsTitle', _numberOfRoundsOfGameTitle);
    box.put('gameTime', _gametime);
    box.put('teamShowIcon', _numberOfTeamShowIconPlay);
    box.put('numberOfTheams', _numberOfTeams);
    box.put('numberOfRoundsGame', _numberofRoundsOfGame);

    notifyListeners();
  }

  void deleteAllDDataHive() async {
    var box = await Hive.openBox("Team");
    box.clear();

    notifyListeners();
  }

  updateData() async {
    var box = await Hive.openBox("Team");
    box.delete('numberofRoundsTitle');
    box.delete('teamShowIcon');
  }

  void getDataTeam() async {
    var boxTeam = await Hive.openBox("Team");
    _nameTeam1 = boxTeam.get('team1') ?? "";
    _nameTeam2 = boxTeam.get('team2') ?? "";
    _nameTeam3 = boxTeam.get('team3') ?? "";
    _nameTeam4 = boxTeam.get('team4') ?? "";

    _numberOfRoundsOfGameTitle = boxTeam.get("numberofRoundsTitle") ?? 3;
    _numberOfTeamShowIconPlay = boxTeam.get("teamShowIcon");
    _numberOfTeams = boxTeam.get("numberOfTheams") ?? 2;
    _gametime = boxTeam.get('gameTime') ?? -1;
    _numberofRoundsOfGame = boxTeam.get('numberOfRoundsGame') ?? 3;

    _numberOfTeamShowIconPlay++;

    // print(boxTeam.get('team1'));

    setvisibilityIcon();

    notifyListeners();
  }
}
