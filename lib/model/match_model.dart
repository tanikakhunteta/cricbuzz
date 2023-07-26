class CricketResponse {
  CricketResponse({
    required this.apikey,
    required this.data,
    required this.status,
    required this.info,
  });
  late final String apikey;
  late final Data data;
  late final String status;
  late final Info info;

  CricketResponse.fromJson(Map<String, dynamic> json){
    apikey = json['apikey'];
    data = Data.fromJson(json['data']);
    status = json['status'];
    info = Info.fromJson(json['info']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['apikey'] = apikey;
    _data['data'] = data.toJson();
    _data['status'] = status;
    _data['info'] = info.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.id,
    required this.name,
    required this.matchType,
    required this.status,
    required this.venue,
    required this.date,
    required this.dateTimeGMT,
    required this.teams,
    required this.teamInfo,
    required this.score,
    required this.tossWinner,
    required this.tossChoice,
    required this.matchWinner,
    required this.seriesId,
    required this.fantasyEnabled,
    required this.bbbEnabled,
    required this.hasSquad,
    required this.matchStarted,
    required this.matchEnded,
  });
  late final String id;
  late final String name;
  late final String matchType;
  late final String status;
  late final String venue;
  late final String date;
  late final String dateTimeGMT;
  late final List<String> teams;
  late final List<TeamInfo> teamInfo;
  late final List<Score> score;
  late final String tossWinner;
  late final String tossChoice;
  late final String matchWinner;
  late final String seriesId;
  late final bool fantasyEnabled;
  late final bool bbbEnabled;
  late final bool hasSquad;
  late final bool matchStarted;
  late final bool matchEnded;

  Data.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    matchType = json['matchType'];
    status = json['status'];
    venue = json['venue'];
    date = json['date'];
    dateTimeGMT = json['dateTimeGMT'];
    teams = List.castFrom<dynamic, String>(json['teams']);
    teamInfo = List.from(json['teamInfo']).map((e)=>TeamInfo.fromJson(e)).toList();
    score = List.from(json['score']).map((e)=>Score.fromJson(e)).toList();
    tossWinner = json['tossWinner'];
    tossChoice = json['tossChoice'];
    matchWinner = json['matchWinner'];
    seriesId = json['series_id'];
    fantasyEnabled = json['fantasyEnabled'];
    bbbEnabled = json['bbbEnabled'];
    hasSquad = json['hasSquad'];
    matchStarted = json['matchStarted'];
    matchEnded = json['matchEnded'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['matchType'] = matchType;
    _data['status'] = status;
    _data['venue'] = venue;
    _data['date'] = date;
    _data['dateTimeGMT'] = dateTimeGMT;
    _data['teams'] = teams;
    _data['teamInfo'] = teamInfo.map((e)=>e.toJson()).toList();
    _data['score'] = score.map((e)=>e.toJson()).toList();
    _data['tossWinner'] = tossWinner;
    _data['tossChoice'] = tossChoice;
    _data['matchWinner'] = matchWinner;
    _data['series_id'] = seriesId;
    _data['fantasyEnabled'] = fantasyEnabled;
    _data['bbbEnabled'] = bbbEnabled;
    _data['hasSquad'] = hasSquad;
    _data['matchStarted'] = matchStarted;
    _data['matchEnded'] = matchEnded;
    return _data;
  }
}

class TeamInfo {
  TeamInfo({
    required this.name,
    required this.shortname,
    required this.img,
  });
  late final String name;
  late final String shortname;
  late final String img;

  TeamInfo.fromJson(Map<String, dynamic> json){
    name = json['name'];
    shortname = json['shortname'];
    img = json['img'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['shortname'] = shortname;
    _data['img'] = img;
    return _data;
  }
}

class Score {
  Score({
    required this.r,
    required this.w,
    required this.o,
    required this.inning,
  });
  late final int r;
  late final int w;
  late final int o;
  late final String inning;

  Score.fromJson(Map<String, dynamic> json){
    r = json['r'];
    w = json['w'];
    o = json['o'];
    inning = json['inning'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['r'] = r;
    _data['w'] = w;
    _data['o'] = o;
    _data['inning'] = inning;
    return _data;
  }
}

class Info {
  Info({
    required this.hitsToday,
    required this.hitsUsed,
    required this.hitsLimit,
    required this.credits,
    required this.server,
    required this.queryTime,
    required this.s,
    required this.cache,
  });
  late final int hitsToday;
  late final int hitsUsed;
  late final int hitsLimit;
  late final int credits;
  late final int server;
  late final double queryTime;
  late final int s;
  late final int cache;

  Info.fromJson(Map<String, dynamic> json){
    hitsToday = json['hitsToday'];
    hitsUsed = json['hitsUsed'];
    hitsLimit = json['hitsLimit'];
    credits = json['credits'];
    server = json['server'];
    queryTime = json['queryTime'];
    s = json['s'];
    cache = json['cache'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['hitsToday'] = hitsToday;
    _data['hitsUsed'] = hitsUsed;
    _data['hitsLimit'] = hitsLimit;
    _data['credits'] = credits;
    _data['server'] = server;
    _data['queryTime'] = queryTime;
    _data['s'] = s;
    _data['cache'] = cache;
    return _data;
  }
}