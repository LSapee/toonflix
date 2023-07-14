# toonflix

nomadcoders 강의 연습

UI 만드는 법에 대해서

CORS 문제 

flutter 설정 폴더에 가서 flutter\bin\cache폴더에서 flutter_tools.stamp파일 삭제

flutter\packages\flutter_tools\lib\src\web에서 chrome.dart 파일을 열고  '--disable-extensions' 의 아래에 '--disable-web-security' 를 추가하여 해결하였습니다.

* 이후 크롬으로 디바이스 설정 후 실행하면 작동은 잘되나 지원되지 않는 명령줄 플래그 하면서 보안에 문제가 있을 수 있다는 문구가 나오네요.

해당문제는 크롬웹을 디바이스로 설정했을때만 발생하였습니다.

Url Launcher 다운로드이후에 다시 403 에러 발생

특이사항으로는 어플 메인의 이미지에서 403 발생하였지만 클릭후 다시 나가기하면 이미지가 재대로 나옴