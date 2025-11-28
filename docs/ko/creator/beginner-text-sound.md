# 텍스트 & 사운드 블록 추가하기

이 문서에서는 텍스트(Text)와 사운드(Sound) 블록을 사용하는 방법을 배웁니다.

## 🎯 목표
- Text 블록 이해  
- Sound 블록 이해  
- 두 요소를 조합하는 법  

---

## 1️⃣ 텍스트 추가하기

Scene:
  - Text: "안녕하세요! 첫 텍스트 블록입니다."

텍스트 위치, 속도 등은 옵션으로 지정할 수 있습니다.

---

## 2️⃣ 사운드 재생하기

Assets 폴더에 test.wav 추가 후:

Scene:
  - Sound:
      File: "test.wav"
      Volume: 1.0

---

## 3️⃣ 텍스트 + 사운드 조합하기

Scene:
  - Text: "사운드와 함께 실행해봅시다."
  - Sound: { File: "test.wav" }

---

## 📌 다음 단계
[간단한 선택지와 분기](beginner-choice.md)
