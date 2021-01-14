void main() {
  //將類別實體化
  Role role = new Role();

  //設定 Role 類別中的三個屬性值資料
  role.nickName = "殺很大";
  role.skill = "天空飛行";

  //呼叫類別中的方法
  role.walk();
  role.run();
  role.hit();

  //呼叫類別中的屬性值資料
  print(role.nickName);
  print(role.gender);
  print(role.skill);  
}

//定義一個 Role 的遊戲角色類別，Role 是類別的名稱
class Role {
  //===屬性===
  String nickName; //遊戲暱稱
  String gender; //性別
  String skill; //技能

  //===構造方法=== //構造方法會和類別名稱完全相同, 構造方法和一般方法一樣可無任何參數, 構造方法沒有返回值
  Role() {
    this.gender = "女生";
  }
  //===方法===
  //走路
  void walk() {
    //todo sth...
    print("walk... ");
  }

  //快跑
  void run() {
    //todo sth...
    print("run... ");
  }

  //攻擊
  void hit() {
    //todo sth...
    print("hit... ");
  }
}
