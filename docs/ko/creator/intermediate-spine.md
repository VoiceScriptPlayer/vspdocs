# 이미지 & Spine 연동

이 문서는 이미지 또는 Spine 애니메이션을 화면에 표시하는 방법을 설명합니다.

## 🎯 목표
- 이미지 표시  
- Spine 모델 배치·애니메이션 실행  

---

## 1️⃣ 이미지 표시

- Image:
    File: "image.png"
    Position: Center

---

## 2️⃣ Spine 모델 로드

Assets에 character.json / .atlas / .png 파일을 넣은 뒤:

- Spine:
    File: "character.json"
    Animation: "idle"
    Position: Center

---

## 3️⃣ 애니메이션 변경

- SpineSet:
    Target: "character"
    Animation: "walk"
    Loop: true
