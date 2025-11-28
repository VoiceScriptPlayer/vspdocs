# UI 스크립팅 기초

버튼, 텍스트, 이미지 등 UI 요소를 스크립트에서 제어합니다.

## 🎯 목표
- UI 요소 생성  
- 클릭 이벤트 연결  

---

## 1️⃣ 버튼 만들기

- UI:
    Type: Button
    Id: btn_next
    Text: "다음"
    Position: Bottom

---

## 2️⃣ 클릭 이벤트 추가

- OnClick:
    Target: btn_next
    Actions:
      - Text: "버튼이 눌렸습니다!"
