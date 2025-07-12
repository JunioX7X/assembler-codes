@ p1201model.s
          .global main       @ scanf and printf assumed global 
          .data              @ start of read/write segment
main:
          push {lr}          @ save lr by pushing onto stack
          
          ldr r0, =.z0       @ display prompt message
          bl printf

          ldr r0, =.z1       @ get address of string
          ldr r1, =a         @ get address of a
          bl scanf           @ call scanf, value goes into a

          ldr r0, =.z1
          ldr r1, =b
          bl scanf           @ call scanf, value goes into b

          ldr r0, =.z1
          ldr r1, =c
          bl scanf           @ call scanf, value goes into c

          ldr r0, =.z1
          ldr r1, =d
          bl scanf           @ call scanf, value goes into d

          ldr r0, =.z1
          ldr r1, =e
          bl scanf           @ call scanf, value goes into e

          ldr r0, a          @ get a
          ldr r1, b          @ get b
          add r0, r0, r1     @ add a and b, result into r0
          ldr r1, c          @ get c
          add r0, r0, r1     @ add c to previous sum
          ldr r1, d          @ get d
          add r0, r0, r1     @ add d to previous sum
          ldr r1, e          @ get e
          add r1, r0, r1     @ add e to previous sum

          ldr r0, =.z2       @ get address of string
          bl  printf         @ call printf

          pop {pc}           @ pop saved lr into pc

.z0:      .asciz "enter 5 integers\n"
.z1:      .asciz "%d"        @ null-terminated ASCII string
.z2:      .asciz "sum = %d\n"      @ null-terminated ASCII string
a:        .word 0
b:        .word 0
c:        .word 0
d:        .word 0
e:        .word 0