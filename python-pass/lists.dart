void main() {
  // this is list A
  List listA = [
    "Muklah",
    "Diyar",
    "Noorhan",
    "Ali",
    "Abdulbasit",
    "Dena",
    "Saba",
    "Fadi",
    "Karrar",
    "Ahmed"
  ];
  // this is list B
  List listB = [
    "Diyar",
    "Noorhan",
    "Muklah",
    "Saba",
    "Mustafa",
    "Ahmed",
    "Fadi",
    "Dena",
    "Hassan",
    "Ali",
  ];
  // this is list C it is for common names between listA and listB
  List listC = [];
  // this is list M it is for the names that contain the letter M from list C
  List listM = [];
  // find common names between listA and listB
  for (var i = 0; i < listA.length; i++) {
    for (var j = 0; j < listB.length; j++) {
      if (listA[i] == listB[j]) {
        listC.add(listA[i]);
        break;
      }
    }
  }
  // print list C
  print('The common names is: $listC');
// find the names that contain the letter M from list C
  for (var i = 0; i < listC.length; i++) {
    for (var j = 0; j < listC[i].length; j++) {
      if (listC[i][j] == 'M') listM.add(listC[j]);
    }
  }
  // print list M
  print('The names that contain the letter M is: $listM');
}
