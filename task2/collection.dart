void main(){
  List<Map<String,dynamic>> students=[
    {"name": "Sara", "score": 91},
    {"name": "Ali", "score": 75},
    {"name": "Mona", "score": 88},
    {"name": "Ali", "score": 82},
    {"name": "Fadi", "score": 95},
    {"name": "May", "score": 78},
    {"name": "John", "score": 92},
    {"name": "Lara", "score": 89},
    {"name": "Sara", "score": 58},
  ];
  Map<String,Map<String,dynamic>> uniquestudents={};
  for(var student in students){
    String name = student['name'];
    int score=student['score'];
    if(!uniquestudents.containsKey(name)){
       uniquestudents[name]=student;
    }
    else{
      if(score>uniquestudents[name]!['score']){
        uniquestudents[name]=student;
      }
    }
  }
  List<Map<String,dynamic>> finallist =uniquestudents.values.toList();
  finallist.sort((a, b) => b['score'].compareTo(a['score']));
  print("Final students list (unique & sorted by score):\n");
  for (var student in finallist) {
    print("${student['name']} - ${student['score']}");
  
}

}
