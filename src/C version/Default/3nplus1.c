#include<stdio.h>
main(){int x,i=0;scanf("%d",&x);for(;x!=1;i++){if(x%2)x=3*x+1;else x/=2;printf("%d\n",x);}printf("Iterations = %d\n",i);for(;;);}