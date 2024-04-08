# 7조 프로젝트 _ Chillin’ Time

안냥하세요 🤗 얼음처럼 차갸운 chillin’ 조입니다 ❄️

👩🏻‍💻 팀장 : 배지해
<br> 👥 팀원 : 김민웅, 김시온, 염아현, 이유진


<br>

## 🧊 프로젝트 소개 

📍 프로젝트 명 [Chillin’ Time]
<br> : 저희 조의 이름을 딴 Chillin’ 과 힐링 타임의 복합어로 카페를 주문하는 키오스크 앱입니다.
<br>


<details><summary>  필수 구현 기능
</summary>

-   메인 화면
-   상단 메뉴 카테고리 바
-   메뉴 화면
-   주문 내역 화면
-  취소하기 / 결제하기 버튼 화면
</details>

<br> 
<details><summary>  추가 구현 기능
</summary>

-   주문 메뉴 상세페이지 (퍼스널 옵션 선택)
 - 결제화면 
</details>

<br> 
<details><summary>  사용하는 기술
</summary>

  - <img src="https://img.shields.io/badge/Swift-#F05138?style=for-the-badge&logo=swift.svg&logoColor=white">Swift
  - Figma
  - UIKit
  - Notion
  - Slack
  - TableView
  - CollectionView
</details>




<br> 

## 🎨 최종 Prototype UI
* [Pigma 바로가기](https://www.figma.com/file/60GrL12muEkJWFM3JPNJ35/7Chillin'-Coffee?type=design&node-id=0-1&mode=design&t=StvzeMCVJ3e3OXlH-0)   
- 최종 UI 

![제목을-입력해주세요_-001-2](https://github.com/BaeJihae/-Project-ChillinTime/assets/162525811/d08a9654-0e3f-499b-8725-b4a67448ae85)



<br>

## 📆 개발 과정(일정)
| 4/1(월) 	| 4/2(화) 	| 4/3(수) 	| 4/4(목) 	| 4/5(금) 	| 4/6(토) 	| 4/7(일) 	| 4/8(월) 	|
|---	|---	|---	|---	|---	|---	|---	|---	|
| - S.A 작성<br>- UI 피그마 작성<br>- 프로젝트 틀 기초 만들기<br>- 개인 분담 및 작업 시작 	| 필수 기능 구현  	| 깃헙 병합 	| - 추가 기능 구현<br>- 디테일 구현 및 오류 수정 	| - 시연 영상 촬영<br>- 구현 완료 기능 병합<br>- 프로젝트 마무리 	| 발표 자료 준비 	| 과제 제출 	| 발표 D-Day 	|

<br>

## ⌨️ 역할 분담
| 지해 	| 아현 	| 민웅 	| 시온 	| 유진 	|
|---	|---	|---	|---	|---	|
| [ 메인 ] 메뉴 컬렉션 뷰 구현<br>[ 메인 ] 오토레이아웃 구현<br>- [ 결제 ] 화면 전체 구현 <br>- 전체 프로젝트 병합 <br> - 프로젝트 데이터 구현<br>- PPT 제작 및 발표 	| [ Togo ] 화면 구현<br>[ 메인 ] 카테고리 버튼 구현<br>[ 상세 ] 취소 버튼 / 담기 버튼 구현 <br>- 발표PPT 	| [ 커버 뷰 ] 화면 구현<br>[ 메인 ] Cart 테이블 뷰 구현<br>[ 상세 ] 옵션 뷰 구현 	| [ 메인 ] Cart 개수 / Cart 총 합 구현<br>[ 메인 ] 홈 버튼 / 백 버튼 구현<br>[ 상세 ] 오토레이아웃 및 수량 버튼 구현<br>- Read Me 작성 	| [ 메인 ] 전체 취소 버튼 / 주문하기 버튼 구현<br>[ 상세 ] 모달 뷰 구현<br>[디자인] 버튼 및 로고 디자인 / 데이터 이미지 작업<br>[피그마] 전체 디자인 및 수정 	|

<br>

## 💻 화면 구성 및 기능 구현
1. [ 커버 뷰 ](#-커버-뷰)
2. [Togo 화면](#-Togo-화면)
3. [메인 화면](#-메인-화면)
4. [상세 페이지 화면 ](#-상세-페이지-화면)
5. [결제 화면 추가 구현 ](#-결제-화면-추가-구현)


### 1. 커버 뷰

<details><summary> 화면 구성
</summary>

- 로고 이미지
- 터치 라벨 
</details>

<details><summary> 기능 구현
</summary>

- 화면 터치 시  :  다음 화면으로 이동
</details>

### 2. Togo 화면
<details><summary> 화면 구성
</summary>

- 포장버튼 
<br> &nbsp; →  메인 화면으로 정보 넘기기
- 매장버튼
<br> &nbsp; → 메인 화면으로 정보 넘기기
</details>

<details><summary> 기능 구현
</summary>

- 포장 / 메뉴 선택 기능
</details>

### 3. 메인 화면
<details><summary> 화면 구성
</summary>

- 카테고리 탭 버튼
  <br> &nbsp;  → 컬렉션 뷰로 정보 넘기기
- 카페 메뉴 컬렉션 뷰
  <br> &nbsp; →  컬렉션 뷰 클릭시 Cart에 정보 담기
- 카페 메뉴 데이터
- Cart 개수 :   cart에 담긴 수량

- Cart 총 금액 :  cart의 배열의 가격의 합
    <br> &nbsp;🔻 포장 버튼 클릭시 500원 할인 인덱스 표시 
- Cart 테이블 뷰 : cart의 배열에 들어간 메뉴 표시
- 홈 버튼 구현 
  <br> &nbsp; →  cart 정보 삭제 후 스플래쉬 페이지로 이동
- 뒤로가기 버튼 구현 
  <br> &nbsp; →  Togo 화면으로 이동
- 전체 취소 버튼 
  <br> &nbsp; → 삭제하시겠습니까? 라는 얼럿창 띄우기
  <br> &nbsp; → cart 정보 삭제
- 주문하기 버튼
  <br> &nbsp; →  결제하시겠습니까? 라는 얼럿창 띄우기
</details>

<details><summary> 기능 구현
</summary>

   - 카테고리 선택 기능
    
- 메뉴 리스트 보여주기 기능
    
- 메뉴 선택 기능
   
 - cart 기능
    <br>    - cart 메뉴 취소 기능
    <br>     - cart 메뉴 수량 추가 및 삭제 기능
    <br>     - cart 에 담긴 메뉴 총 수량 기능
    <br>     - cart 에 담긴 총 금액 기능
   
 - 홈 버튼 이동 기능
  
  - 뒤로가기 버튼 이동 기능
   
 - 전체 취소 기능
   
 - 주문하기 기능
</details>

### 4. 상세 페이지 화면
<details><summary> 화면 구성
</summary>

- 옵션 선택 기능
    <br> ☕️ 커피/차 &nbsp;  → &nbsp; HOT / ICE 선택, 얼음
    <br> 🥤 에이드/스무디 &nbsp;  → &nbsp; 당도, 얼음
    <br> 🍰 디저트 &nbsp;  → &nbsp; 워밍 옵션

- 수량 선택 기능
- 취소 버튼
  <br> &nbsp; → 전 페이지로 이동
- 담기 버튼
  <br> &nbsp; → 해당 옵션의 정보를 담아 전 페이지로 이동
</details>

<details><summary> 기능 구현
</summary>

- 해당 음료의 수량
- HOT / ICE 옵션 선택
- 얼음 옵션 선택
- 데움/안데움 옵션 선택
- 당도 옵션 선택
- 취소 버튼
- 담기 버튼
</details>


### 5. 결제 화면 추가 구현
<details><summary> 화면 구성
</summary>

- 영수증 
<br> - 주문 내역 • 주문 수량 • 주문 가격 
<br> - 총 주문 메뉴 수량 • 총 금액

- 결제 방법 
<br> - 신용•체크 카드 
<br> - 애플•삼성•카카오•네이버 페이
</details>

<details><summary> 기능 구현
</summary>

- 카드 결제
- 모바일 페이
</details>

