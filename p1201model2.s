@ p1201model.s
          .global main       @ scanf and printf assumed global 
          .data              @ start of read/write segment
main:
          push {lr}          @ save lr by pushing onto stack
          
          @ Prompt user
          ldr r0, =.prompt   @ display prompt message
          bl printf

          @ Read 5 numbers
          ldr r0, =.format_in
          ldr r1, =num1      @ get address of num1
          bl scanf

          ldr r0, =.format_in
          ldr r1, =num2
          bl scanf

          ldr r0, =.format_in
          ldr r1, =num3
          bl scanf

          ldr r0, =.format_in
          ldr r1, =num4
          bl scanf

          ldr r0, =.format_in
          ldr r1, =num5
          bl scanf

          @ Perform operations
          @ a. Sum first two numbers
          ldr r0, num1       @ load num1 to r0
          ldr r1, num2       @ load num2 to r1
          add r2, r0, r1     @ r2 = num1 + num2
          ldr r0, =.sum_out  @ prepare sum output
          mov r1, r2         @ move result to r1 for printf
          bl printf

          @ b. Subtract third number from previous sum
          ldr r1, num3       @ load num3 to r1
          sub r2, r2, r1     @ r2 = (num1+num2) - num3
          ldr r0, =.sub_out  @ prepare subtraction output
          mov r1, r2         @ move result to r1 for printf
          bl printf

          @ c. Add fourth number to previous result
          ldr r1, num4      @ load num4 to r1
          add r2, r2, r1     @ r2 = ((num1+num2)-num3) + num4
          ldr r0, =.add_out @ prepare addition output
          mov r1, r2        @ move result to r1 for printf
          bl printf

          @ d. Multiply fifth number by previous result
          ldr r1, num5      @ load num5 to r1
          mul r2, r2, r1    @ r2 = (((num1+num2)-num3)+num4) * num5
          ldr r0, =.mul_out @ prepare multiplication output
          mov r1, r2        @ move result to r1 for printf
          bl printf

          pop {pc}          @ pop saved lr into pc

.prompt:  .asciz "Enter 5 integers:\n"
.format_in: .asciz "%d"      @ input format string
.sum_out: .asciz "a. Sum of first two: %d\n"
.sub_out: .asciz "b. Subtract third: %d\n"
.add_out: .asciz "c. Add fourth: %d\n"
.mul_out: .asciz "d. Multiply by fifth: %d\n"
num1:     .word 0
num2:     .word 0
num3:     .word 0
num4:     .word 0
num5:     .word 0