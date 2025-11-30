# 📘 이미지 연동하기: webp 프레임 제어 & Tick 스크립트 심화

이 튜토리얼에서는 UI에 webp 이미지를 배치하고,
X0 입력값을 기반으로 webp의 특정 프레임을 실시간으로 선택하는 방법을 배웁니다.

VSP는 webp 파일을 불러오면 자동으로 cwebp 로 변환하며,
UI Image의 Frame 속성을 통해 특정 프레임을 직접 제어할 수 있습니다.

또한 UI의 Main 패널(Main Panel)에 있는 Tick Script 기능을 활용하여
UI가 표시되는 동안 webp가 실시간으로 업데이트되도록 만듭니다.

---

# 🧭 이번 튜토리얼에서 배우는 것

- webp → cwebp 자동 변환 구조
- UI에 webp 배치
- Tick Script로 매 프레임 로직 실행
- X0 입력 값을 webp 프레임에 매핑하기
- 지역 변수(Local Variable)를 활용한 실전 프레임 제어

---

# 1️⃣ webp 파일 준비하기

이 예제에서는 다음 gauge webp를 사용합니다:

![예제이미지](../images/gauage.webp)

이 webp는 0~100 프레임으로 구성되어 있습니다.

👉 직접 다운로드해서 실습해보세요!

---

# 2️⃣ UI 화면 만들기

1. 상단 메뉴에서 UI 탭 클릭
2. 새로 만들기(New UI) 선택
3. 빈 UI 화면 생성

---

# 3️⃣ UI에 webp 이미지 배치하기

![alt text](../images/gauage_setting.png)

1. 왼쪽 컨트롤 목록에서 Image 드래그
2. UI에 배치
3. 오른쪽 속성 패널 → 이미지 선택(Source)
4. webp 파일 선택

VSP는 webp를 자동으로 cwebp로 변환하며,
프레임 번호를 직접 제어할 수 있도록 만들어줍니다.

![alt text](../images/image_setting.png)

IsPlay 체크 해제 → 스크립트로 Frame을 제어할 수 있음

---

# 4️⃣ Tick Script 사용하기

Tick Script는 **UI가 활성화된 동안 매 프레임 실행되는 특수 스크립트**입니다.

webp의 Frame 속성을 매번 갱신하여
실시간 인터랙티브 애니메이션을 구현하려면 반드시 필요합니다.

---

## Tick Script 진입

1. UI 구조에서 Main 패널 선택
2. 오른쪽 속성 패널 → Tick → 편집(Edit)

![Tick Script 진입](../images/ui_tick_edit.webp)

---

# 5️⃣ X0 값을 webp 프레임과 연결하기

이제 핵심 기능을 구현합니다.

웹애니 프레임 범위가 0~100이기 때문에  
X0(0.0~1.0)를 그대로 쓰지 않고 범위를 맞춰줘야 합니다.

필요한 과정은 정확히 3단계입니다:

1) r ← X0  
2) r ← r * 100  
3) Frame ← r  

아래에서 하나씩 구성합니다.

---

# 📌 5-1) 프레임 저장용 지역 변수 만들기

1. Tick Script 오른쪽 패널에서 Variables → + 버튼
2. 변수 이름: r

이 변수에 X0 값을 저장하고 변환할 것입니다.

---

# 📌 5-2) X0 값을 r에 대입

Tick Script 첫 번째 동작:

- 변수 r 을 Axis X0 만큼 대입합니다.  
- Duration: 0초

---

# 📌 5-3) X0(0~1)을 프레임 번호(0~100)로 변환

두 번째 동작:

- 변수 r 을 100 만큼 곱셈합니다.  
- Duration: 0초

이제 값은 다음처럼 됩니다:

X0 = 0.00 → r = 0  
X0 = 0.25 → r = 25  
X0 = 0.50 → r = 50  
X0 = 1.00 → r = 100

---

# 📌 5-4) r 값을 ImageFrame에 넣기

세 번째 동작:

- 변수(CurrentUI | NewImage | Frame)를 r 만큼 대입합니다.  
- Duration: 0초

이미지의 Frame 속성이 r 값으로 갱신됩니다.

---

# 📸 실제 Tick Script 구성 예시

![틱 스크립트 구조](../images/tick_x0_to_frame.png)

스크립트 흐름 요약:

변수 r 을 [X0] 만큼 대입합니다.  
변수 r 을 [100] 만큼 곱셈합니다.  
변수(CurrentUI | NewImage | Frame)를 [r] 만큼 대입합니다.

---

# 6️⃣ 전체 로직 요약

이 튜토리얼 전체는 아래 3줄로 요약됩니다:

r ← X0  
r ← r * 100  
Frame ← r  

이 세 동작을 Tick Script에 넣는 것만으로  
webp는 장치 입력(X0)에 따라 즉시 반응합니다.

---

# ✨ 완성

![틱 스크립트 구조](../images/image_complete.webp)

이제 다음을 만들 수 있습니다:

- X0 기반 게이지 그래프
- 입력 강도에 따라 표정 변환
- 실시간 반응형 UI 그래픽
- Spine 없이도 가벼운 애니메이션 표현

---

# ➡️ 다음 튜토리얼

이미지·webp 제어를 배웠다면  
다음은 고급 사운드 제어입니다.

👉 [고급 사운드 제어](intermediate-sound.md)
