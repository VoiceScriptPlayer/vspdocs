# 완성형 인터랙티브 씬 만들기

지금까지 배운 UI, 사운드, Spine, 변수, 조건, Stroke 등을 모두 통합해  
하나의 완성된 씬을 구성합니다.

## 🎯 목표
- 선택지 기반 분기  
- Spine + Stroke + UI 조합  

---

## 1️⃣ 선택지 표시

- Choice:
    Text: "무엇을 하시겠습니까?"
    Options:
      - Label: Soft
        Text: "부드럽게"
      - Label: Hard
        Text: "강하게"

---

## 2️⃣ 선택 후 동작 실행

- Branch:
    Target: Soft
    Actions:
      - Stroke: { Pattern: "soft" }
      - Text: "부드러운 동작 실행!"

- Branch:
    Target: Hard
    Actions:
      - Stroke: { Pattern: "hard" }
      - Text: "강한 동작 실행!"
