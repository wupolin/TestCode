#include<iostream>
#include"sumval.h"
using namespace std;

int main(){
	int a=0,b=0;
	cout<<"Input the first number: ";
	cin>>a;
	cout<<"Input the second number: ";
	cin>>b;
	cout<<"The sum of the two numbers is: "<<sumval(a,b)<<endl;
	return 0;
}
