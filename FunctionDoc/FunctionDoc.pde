//関数の種類
//最後に使用例を載せておきます

/*返り値がvoid型(何も返さない)の関数*/
/*手続き的な処理を共通化してまとめるために使う*/
/*例*/
void CallName(String name){
  println("やあ、" + name + "!");
  return;  //関数終了の目印。書かなくても良い
}


/*返り値がint型(整数)やfloat型(小数)の関数*/
/*何かの計算を共通化してまとめるために使う*/
/*例*/
int Add(int a, int b){
  return a + b;  //返り値がvoid以外の関数は省略不可
}


/*このほかにも既存の型や自作の型問わず返り値にすることができます*/
/*String型(文字列)を返す関数*/
/*例*/
String GetPath(String fileName){
  return "data/" + fileName;
}


//以下は習っていない知識を必要とするため、暇でやる気のある人だけで大丈夫です
/*(応用)自作の型を返す*/
class Vector3{
  float x, y, z;
  
  //コンストラクタ(初期化の際に呼ばれます)
  //関数の一種ですが、関数名はありません
  Vector3(){
    Set(0.0, 0.0, 0.0);
  }
  
  //関数は引数や返り値の型が違えば、同名の関数を複数定義できます(オーバーロード)
  Vector3(float _x, float _y, float _z){
    Set(_x, _y, _z);
  }
  
  //値の設定
  void Set(float _x, float _y, float _z){
    this.x = _x;
    this.y = _y;
    this.z = _z;
  }
  
  //デバッグ用の出力
  void Log(){
    println("x=" + this.x + ", y=" + this.y + ", z=" + this.z);
  }
  
  //足し算
  Vector3 Add(Vector3 vec){
    this.x += vec.x;
    this.y += vec.y;
    this.z += vec.z;
    return this;
  }
  
  //引き算
  Vector3 Sub(Vector3 vec){
    this.x -= vec.x;
    this.y -= vec.y;
    this.z -= vec.z;
    return this;
  }
  
  //掛け算
  Vector3 Mul(float f){
    this.x *= f;
    this.y *= f;
    this.z *= f;
    return this;
  }
  
  //内積
  float Dot(Vector3 vec){
    return this.x * vec.x + this.y * vec.y + this.z * vec.z;
  }
}
/*クラスとは*/
//関連性のある変数と関数をまとめるためのものです

//※ProcessingにはPVectorというベクトルを扱うためのクラスが既に存在しています
//今回は説明のため自作ベクトルクラスを作成しています


/*以下使用例*/
void setup(){
  CallName("Kuma");
  println(Add(3, 4));
  println(GetPath("asset.png"));
  
  Vector3 v1;  //Vector3型の変数v1を宣言
  /*クラスの変数を使うにはインスタンス化する必要があります*/
  v1 = new Vector3(1.0, 3.0, 5.0);  //new演算子でコンストラクタを呼び出しインスタンス生成
  v1.Log();
  
  Vector3 v2 = new Vector3(2.0, 4.0, 6.0);
  v2.Log();
  
  v1.Add(v2).Log();
}
