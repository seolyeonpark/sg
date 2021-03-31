class If {
  String id;
  List<String> loca;
  String photo;

  If({this.id, this.loca, this.photo});



  If.fromMap(Map<String, dynamic> data) {
    id = data['id'];
    loca = data['loca'].cast<String>();
    photo = data['photo'];
  }

  Map<String, dynamic> toMap() {
   // final Map<String, dynamic> data = new Map<String, dynamic>();
   return{
     'id': id,
     'loca': loca,
     'photo': photo,

   };
  }
}


List<If> ifif = [
  If(
    id: "도서관",
    loca: ["공학관과 대학본부 사이에 위치하고 있습니다."],
    photo: "images/도서관.JPG",
    
  ),
  If(
    id: "편의점",
    loca: ["향설1관 1층", "향설2관 1층", "인문과학관 1층", "자연과학관 1층", "공학관 1층", "학성사1관 1층", "멀티미디어관 2층", "도서관 1층", "학생회관 1층", "유니토피아 1층"],
    photo: "images/편의점.JPG",
  ),
  If(
    id: "우체국",
    loca: ["향설1관 1층에 위치하고 있습니다."],
    photo: "images/우체국.JPG",
  ),
  If(
    id: "버스 매표소",
    loca: ["미디어랩스 1층 입구에 위치하고 있습니다."],
    photo: "images/매표소.JPG",
  ),

  If(
    id: "학생식당",
    loca: ["학생회관 1층", "한마루관 1층 (교직원식당)", "향설 1관 1층", "향설2관 1층"],
    photo: "images/향설1관.JPG",
  ),

  If(
    id: "카페",
    loca: ["학생회관 1층", "피닉스 광장 옆", "향설1관 4층", "향설2관 2층"],
    photo: "images/카페.JPG",
  ),
  If(
    id: "헬스장",
    loca: ["향설1관 1층", "향설2관 1층"],
    photo: "images/헬스.JPG",
  ),

  If(
    id: "은행",
    loca: ["교육과학관 1층에 위치하고 있습니다."],
    photo: "images/교육과학관.JPG",
  ),

  If(
    id: "서점",
    loca: ["도서관 1층에 위치하고 있습니다."],
    photo: "images/도서관.JPG",
  ),
  
];
