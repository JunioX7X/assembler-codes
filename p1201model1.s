@ p1201model.s
          .global main       @ scanf and printf assumed global 
          .data              @ start of read/write segment
main:
          push {lr}          @ save lr by pushing onto stack
          
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

          @ Print the 5 numbers
          ldr r0, =.format_out
          ldr r1, num1
          bl printf

          ldr r0, =.format_out
          ldr r1, num2
          bl printf

          ldr r0, =.format_out
          ldr r1, num3
          bl printf

          ldr r0, =.format_out
          ldr r1, num4
          bl printf

          ldr r0, =.format_out
          ldr r1, num5
          bl printf

          pop {pc}           @ pop saved lr into pc

.prompt:  .asciz "Enter 5 integers:\n"
.format_in: .asciz "%d"      @ input format string
.format_out: .asciz "Number: %d\n" @ output format string
num1:     .word 0
num2:     .word 0
num3:     .word 0
num4:     .word 0
num5:     .word 0