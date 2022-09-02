#include <string.h>
#include <stdio.h>
#define xx 8
#define yy 8
#define zz 8
int i[xx*yy*zz+2];
int sscore=0;
int version(){
	return 0;
}
int main(){
	printf("version %d\n",version());
	return 0;
}
int eeppromX(int a){ 
  int ii=0;
  int l=0;
  char i[]={"hello world...\n"};
  l=strlen(i);
  if(a>0 && a<l+1){
	  ii=(int)i[a-1];
  }else{if(a==0){
			ii=(int)l;
		}else{ii=0;}
		}
	
	
  return ii;
}
int encodeX(int a){ 
  int size=16;
  int ii=-1;
  int i[]={5,7,9,3,71,10,10,12,4,12,2,1,2,3,15,16};
  if(a>-1 && a<size){
	  ii=i[a];
  }else{ii=-1;}
  return ii;
}
int min(int a,int b){ 
	int c=a;
	if(b<a)c=b;
	return c;
}
int power(int a,int b){ 
	int c;
	int d;
	c=a;
	if(b>0){
		for(d=0;d<b-1;d++){
			c=c*a;
		}
	}else{c=1;}
  return c;
}
int add(int a,int b){ 
  return a+b;
}
int ram3d(int x,int y,int z,int writes,int value){ 
  int ii=0;
  int l=xx*yy*zz;
  int indexs=0;
  indexs=x+(y*xx)+(xx*yy*z);
  if(indexs>2 && indexs<l+3){
	  if(writes!=0)i[indexs-3]=value;

	  ii=(int)i[indexs-3];
  }else{if(indexs==0){
			ii=xx;
		}else{
			if(indexs==1){
			ii=yy;
				
			}else{if(indexs==2){
					ii=zz;
				
			}
			}
		}}
	
	
  return ii;
}
int scores(int a){ 
  sscore=sscore+a;
  return sscore;
}
int floatEmulator(int a,int b,int matfunc){ 
  int ii=0;
  int precs=1000;
  if(matfunc==0)ii=a+b;
  if(matfunc==1)ii=a-b;
  if(matfunc==2)ii=a*b;
  if(matfunc==3)ii=a/b;
  if(matfunc==4)ii=a*precs;
  if(matfunc==5)ii=a/precs;
  return ii;
}
