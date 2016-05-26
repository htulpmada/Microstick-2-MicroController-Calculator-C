#include "pic24_all.h"

uint16 check_val;
uint8 ones_count, first_one, i;

void main(void){
  check_val=0xf508;

  for(ones_count=0;check_val;check_val>>=1){
    if(check_val & 1){
      ones_count+=1;
				}
    else{
      i+=1;
				}
    if(ones_count==1 && first_one==0){
      first_one=i;
				}
		}
}