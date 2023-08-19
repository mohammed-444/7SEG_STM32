################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../driver/src/external_intrupt.c \
../driver/src/gpio.c \
../driver/src/keypad.c 

OBJS += \
./driver/src/external_intrupt.o \
./driver/src/gpio.o \
./driver/src/keypad.o 

C_DEPS += \
./driver/src/external_intrupt.d \
./driver/src/gpio.d \
./driver/src/keypad.d 


# Each subdirectory must supply rules for building sources it contributes
driver/src/%.o: ../driver/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32 -DSTM32F4 -DSTM32F401CCUx -DDEBUG -DSTM32F401xx -I"E:/SBME3/second term/embedded/workspace/lab6/inc" -I"E:/SBME3/second term/embedded/workspace/lab6/driver/inc" -I"E:/SBME3/second term/embedded/workspace/lab6/CMSIS/device" -I"E:/SBME3/second term/embedded/workspace/lab6/CMSIS/core" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


