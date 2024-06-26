
void main(){
//포지셔널 파라미터
  int var01 = cals(10, 5, 2);
  print(var01);

  //네임드 파라미터
  //이릉으로 매칭
  print(cals2(a:3,b:4,m:2));
  //이름으로 매칭하기 때문에 순서 상관없음
  print(cals2(b:3,m:4,a:2)); //네임드 파라미터
  // 기본값이 있어서 파라미터가 없어도 됨
  print(cals2(m:4,a:2)); //네임드 파라미터

  print("-----------------------------");

  //a값은 반드시 있어야한다(가정)
  print(cals3(m:3,b:3,a:2));
  print(cals3(m:3,a:2));
  print(cals3(a:3));

  print("-----------------------------");

  //맨앞 a는 포지셔널, 나머지는 네임드
  print(cals4(3,m:3,b:2));


}

int cals(int a,int b,int m){
  int result = a + b - m;
  return result;
}

int cals2({int a=0,int b=0,int m=0}){
  int result = a + b - m;
  return result;
}

//a값이 반드시 있어야 한다 (가정)
int cals3({required int a,int b=0,int m=0}){
  int result = a + b - m;
  return result;
}

int cals4(int a,{int b=0,int m=0}){
  int result = a + b - m;
  return result;
}