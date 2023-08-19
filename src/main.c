/**
  ******************************************************************************
  * @file    main.c
  * @author  Ac6
  * @version V1.0
  * @date    01-December-2013
  * @brief   Default main function.
  ******************************************************************************
*/
#include "gpio.h"
#include "external_intrupt.h"
#include "stm32f4xx.h"
			


int main(void)
{
//	set pin 0,1 as input
	GPIO_Init(GPIOA,0,0,0);
	GPIO_Init(GPIOA,1,0,0);
// set them to pull up
	pull(GPIOA,0,1);
	pull(GPIOA,1,1);
//	set pin 0,1,2,3 to output in portB
	for (int var = 0; var < 4; ++var) {
		GPIO_Init (GPIOB,var,1,1);
	}

	external_interrupt_init(0,0);
	external_interrupt_init(0,1);
	while(1){

		display_7seg();
	}



}
