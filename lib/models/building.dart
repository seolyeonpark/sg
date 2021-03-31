//수정되었음


class Building {
  String id;
  List<String> major;
  String photo;

  Building({this.id, this.major, this.photo});



  Building.fromMap(Map<String, dynamic> data) {
    id = data['id'];
    major = data['major'].cast<String>();
    photo = data['photo'];
  }

  Map<String, dynamic> toMap() {
   // final Map<String, dynamic> data = new Map<String, dynamic>();
   return{
     'id': id,
     'major': major,
     'photo':photo,

   };
  }
}


List<Building> building = [
  Building(
    id: "SCH미디어랩스",
    major: ["한국문화콘텐츠학과","빅데이터공학과","사물인터넷학과","스마트자동차학과",
      "에너지시스템학과","영미학과","의용메카트로닉스공학과"],
    photo: "images/미디어랩스.JPG",
    
  ),
  Building(
    id: "교육과학관",
    major: ["유아교육과", "특수교육과","청소년교육상담학과"],
    photo: "images/교육과학관.JPG",
  ),
  Building(
    id: "학예관",
    major: ["연극무용학과", "미디어콘텐츠학과","디지털애니메이션학과","공연영상학과"],
    photo: "images/학예관.JPG",
  ),
  Building(
    id: "유니토피아관",
    major: ["법학과", "행정학과","경찰행정학과","신문방송학과","사회복지학과","미디어커뮤니케이션학과","경영학과","국제통상학과"],
   photo: "images/유니토.JPG",
  ),
  Building(
    id: "산학협력관",
    major: ["건축학과","기계공학과"],
   photo: "images/산학협력관.JPG",
    
  ),
  Building(
    id: "의료과학관",
    major: ["보건행정경영학과","의료생명공학과"],
   photo: "images/의료과학관.JPG",
    
  ),
  Building(
    id: "멀티미디어관",
    major: ["컴퓨터소프트웨어학과","컴퓨터공학과"],
   photo: "images/멀미관.JPG",
    
  ),
  Building(
    id: "공학관",
    major: ["나노화학공학과","에너지환경공학과","디스플레이신소재공학과","정보보호학과"],
   photo: "images/공학관.JPG",
    
  ),
  Building(
    id: "자연과학관",
    major: ["화학과","식품영양학과","환경보건학과","생명시스템학과"],
   photo: "images/자연과학관.JPG",
    
  ),
];


/*class Building {
  String id;
  List<String> major;

  Building(this.id, this.major);
}
*/
