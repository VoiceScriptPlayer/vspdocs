# 변수와 조건 논리

변수(Variable)와 조건(Condition)은 콘텐츠에 인터랙션을 넣을 때 필수입니다.

## 🎯 목표
- 변수 생성  
- 변수 변경  
- 조건 분기  

---

## 1️⃣ 변수 생성

- VarCreate:
    Name: score
    Value: 0

---

## 2️⃣ 변수 값 변경

- VarAdd:
    Name: score
    Value: 1

---

## 3️⃣ 조건으로 분기

- If:
    Name: score
    IsGreater: 5
    Actions:
      - Text: "점수가 5 이상입니다!"
