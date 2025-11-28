# 기본적인 스크립트 연동하기

이 튜토리얼에서는 스크립트(Scene)가 어떻게 텍스트, 사운드, UI 등을 실행하며  
전체 콘텐츠 흐름을 구성하는지 이해합니다.

## 🎯 목표
- Scene 구조 이해  
- 텍스트/사운드/이미지 실행  
- UI → Script 이벤트 연결  
- 다른 스크립트 호출  

---

## 1️⃣ 스크립트 기본 구조

Scene 아래 항목들은 **위에서 아래로 순서대로 실행**됩니다.

Scene:
  - Text: "첫 실행 테스트!"

---

## 2️⃣ 텍스트, 사운드, 이미지 연결

Scene:
  - Text: "콘텐츠 제작을 시작합니다."
  - Sound: { File: "start.wav" }
  - Image:
      File: "stage.png"
      Position: Center

---

## 3️⃣ UI 버튼과 스크립트 연결

UI 버튼 생성:

- UI:
    Type: Button
    Id: btn_start
    Text: "시작하기"

클릭 시 실행할 액션:

- OnClick:
    Target: btn_start
    Actions:
      - Text: "버튼을 눌렀습니다!"
      - Sound: { File: "click.wav" }

---

## 4️⃣ 다른 스크립트 파일 호출

- SceneCall:
    File: "next.script"

---

## 📌 다음 단계
[텍스트 & 사운드 블록 추가하기](beginner-text-sound.md)
