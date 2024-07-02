import 'dart:async';

void startTimer() {
  print('Pomodoro 타이머를 시작합니다.');
  // 기본 설정 변수 사이클횟수, 작업시간, 휴식시간 정보를 저장함.
  int count = 1;
  int workTime = 1500;
  int restTime = 300;

  // 타이머 실행함수, Duration을 1초로 설정하여 1초마다 콜백함수가 실행됨.
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
        workTime = 1500;
        restTime = 900;
      } else {
        workTime = 1500;
        restTime = 300;
      }
    }
  });
}
// 분,초 시각화 처리하기(ver1. 00:00)
// String secondFormat(int second){
//   var duration = Duration(seconds: second);
//   var duration_min = duration.toString().split('.').first.substring(2);
//   return duration_min;

// 분,초 시각화 처리하기(ver2. 00분 00초)
String secondsFormat(int second) {
  String minutes = (second ~/ 60).toString().padLeft(2, '0');
  String remainingSeconds = (second % 60).toString().padLeft(2, '0');
  return '$minutes분 $remainingSeconds초';
}

void main() {
  startTimer();
}

// 25분 1500초
// 15분 900초

/*
회고
오랜만에 dart언어를 사용하여 Pomodoro 타이머 프로그램을 작성했습니다.
다소 읽기 어려운 깔끔하지 않은 코드인 것 같아 아직 기본기가 많이 부족하다는 것을 돌아보게 되었습니다.
시간을 분, 초의 형식으로 포맷하는데, 같은 결과를 내는 코드지만 많은 다양한 방식이 존재한다는 것을 알았습니다.
 */