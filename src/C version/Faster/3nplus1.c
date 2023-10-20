#include<stdio.h>
main(){int x,i=0;scanf("%d",&x);for(;x!=1;i++){if(x%2)x=3*x+1;else x=x>>1;}printf("Iterations = %d",i);for(;;);}