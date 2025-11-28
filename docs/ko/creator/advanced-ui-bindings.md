# UI ↔ 스크립트 상호작용

UI 입력 → 변수 변경  
변수 변경 → UI 업데이트  
양방향 처리 방법을 배웁니다.

## 🎯 목표
- Slider → 변수 바인딩  
- 변수 → UI 텍스트 반영  

---

## 1️⃣ 슬라이더와 변수 연결

- UI:
    Type: Slider
    Id: volume_slider
    Min: 0
    Max: 100

- Bind:
    UI: volume_slider
    Variable: volume

---

## 2️⃣ 변수 변화에 따른 UI 반응

- If:
    Name: volume
    IsGreater: 50
    Actions:
      - UISetText:
          Target: info
          Text: "볼륨이 높습니다!"
