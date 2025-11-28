# 간단한 선택지와 분기

사용자가 선택하는 버튼을 제공하고, 선택 결과에 따라 다른 흐름을 실행하는 방법을 배웁니다.

## 🎯 목표
- Choice 추가  
- Branch 분기 구성  

---

## 1️⃣ 기본 선택지 만들기

- Choice:
    Text: "무엇을 하고 싶나요?"
    Options:
      - "시작하기"
      - "종료하기"

---

## 2️⃣ 선택 분기 만들기

- Choice:
    Text: "선택하세요"
    Options:
      - Label: Start
        Text: "시작한다"
      - Label: Exit
        Text: "종료한다"

- Branch:
    Target: Start
    Actions:
      - Text: "시작을 선택했습니다!"

- Branch:
    Target: Exit
    Actions:
      - Text: "종료를 선택했습니다."
