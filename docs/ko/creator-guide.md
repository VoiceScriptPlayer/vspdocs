# Creator Guide  
간단한 콘텐츠 제작 튜토리얼

이 문서는 VoiceScriptPlayer를 처음 사용하는 **제작자(Creator)**를 위한 짧은 입문 가이드입니다.  
아래 단계를 차례대로 따라가면 **오디오, 텍스트, 이미지, 인터랙션**이 모두 포함된  
작은 프로젝트 하나를 직접 완성할 수 있습니다.

---

## 1️⃣ 새 프로젝트 만들기

- 왼쪽 사이드바의 **✏️ 아이콘(에디터)** 을 클릭합니다.  
- 상단의 **[새 프로젝트]** 버튼을 누릅니다.  
- 오른쪽 패널에서 프로젝트 정보를 입력합니다.

➡️ 자세한 내용: [Create New Project](project/create.md)

---

## 2️⃣ 리소스 추가하기

- `Assets` 폴더에 **오디오, 이미지, 비디오, Live2D, Spine 리소스**를 넣습니다.  
- 에디터 왼쪽의 **Resource Management** 탭에서 모든 파일을 한눈에 관리할 수 있습니다.  
- 필요하다면 **Variables(변수)** 또는 **Translation Dictionary(번역 사전)**도 이곳에서 등록합니다.

➡️ 참고: [Resource Management](editor/resources.md)

---

## 3️⃣ 타임라인 구성하기

- 타임라인에 **사운드, 자막, 이미지, 영상** 레이어를 배치합니다.  
- 마우스로 드래그하여 위치를 조정하고, 확대/축소하거나 미리보기로 재생합니다.  
- 복사/붙여넣기, 스냅 정렬 등 기본 편집 도구를 사용할 수 있습니다.

➡️ 참고: [Timeline](editor/timeline.md)

---

## 4️⃣ 인터랙션과 이벤트 추가하기

- **UI 탭(UI)**에서 버튼, 이미지, 텍스트 등의 인터페이스 요소를 배치합니다.  
- 각 UI 요소에는 클릭, 비교, 변수 변경 등 **이벤트**를 연결할 수 있습니다.  
- 간단한 스크립트로 “다음 씬 이동”, “변수 증가” 같은 동작을 구현합니다.

➡️ 참고:  
- [UI](editor/ui.md)  
- [Script](editor/script.md)

---

## 5️⃣ AI 기능 활용하기 (선택 사항)

- Whisper로 **자동 자막 생성(STT)**  
- DeepL·LibreTranslate로 **자동 번역**  
- hailuo·COEIROINK·ElevenLabs로 **TTS 음성 생성**  
- 번역이 어색하다면 **Translation Dictionary**에서 단어 단위로 수정 가능

➡️ 참고: [AI Features](ai/whisper.md)

---

## 6️⃣ 테스트 & 실행

- 상단 ▶️ 아이콘을 눌러 **재생 모드(Play Mode)**로 진입합니다.  
- 사용 목적에 따라 재생 모드(일반 / 손만 사용 / 장치 권장 / 장치만 사용)를 선택할 수 있습니다.  
- 마이크가 필요한 콘텐츠는 시스템 알림으로 연결 여부를 확인합니다.  
- 오류가 발생하면 화면에 메시지가 표시되며,  
  상세 로그는 `Documents/VoiceScriptPlayer/Log` 에 기록됩니다.

➡️ 참고:  
- [Run](playback/run.md)  
- [Debug & Log](playback/debug.md)

---

## 7️⃣ 빌드 및 배포

- 프로젝트가 완성되면 `.vsplayer` 형태로 내보낼 수 있습니다.  
- 이 패키지는 **실행 전용 VoiceScriptPlayer**에서 바로 재생할 수 있습니다.  

➡️ 참고: [Project Management](project/manage.md)

---

## 🎯 마무리

여기까지 따라오셨다면,  
이미 **기본적인 콘텐츠 제작부터 인터랙션 구성까지 가능한 수준**에 도달했습니다.

VoiceScriptPlayer의 핵심은  
**“텍스트·오디오·이미지·UI·인터랙션·장치 제어까지 하나의 프로젝트에서 통합 관리”** 할 수 있다는 점입니다.

이제 다음 단계로,  
- Stroke 편집  
- 장치 제어  
- 고급 스크립트  
- UI ↔ Script 연동  
- Spine/Live2D 애니메이션 제어  

같은 고급 제작 과정도 학습해 보세요.
