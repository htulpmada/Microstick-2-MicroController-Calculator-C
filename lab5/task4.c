#include "pic24_all.h"

uint16 x,y;
uint8 count;

void main(void){
  count=0x3;
  x=0x1;
  y=0x3;

  while(count!=0x0){
    if (x!=y){
      if(x>=y){
        count = count - 0x1;}
      else{
        x = x + 0x2;}
				}
    else{
      y++;}
		}
}  