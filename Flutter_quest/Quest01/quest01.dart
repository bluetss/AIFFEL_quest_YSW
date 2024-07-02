import 'dart:async';

void startTimer() {
  print('Pomodoro 타이머를 시작합니다.');
  int count = 1;
  int workTime = 5;
  int restTime = 3;
  Timer.periodic(const Duration(seconds: 1), (timer) {
    if (workTime != 0) {
      workTime--;
      print('작업 시간: ${secondsFormat(workTime)}');
      if (workTime == 0) {
        print('작업 시간이 종료되었습니다. 휴식 시간을 시작합니다.');
      }
    } else if (restTime != 0) {
      restTime--;
      print('휴식 시간: ${secondsFormat(restTime)}');
      if (restTime == 0) {
        print('휴식 시간이 종료되었습니다. 작업 시간을 시작합니다.');
      }
    } else {
      print('$count 사이클 종료');
      count++;
      if (count % 4 == 0) {
        workTime = 5;
        restTime = 5;
      } else {
        workTime = 5;
        restTime = 3;
      }
    }
  });
}

String secondsFormat(int second) {
  var duration = Duration(seconds: second)
          .toString()
          .split('.')
          .first
          .substring(2)
          .replaceAll(':', '분 ') +
      '초';
  return duration;
}

void main() {
  startTimer();
}

// 25분 1500초
// 15분 900초