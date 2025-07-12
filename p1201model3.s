.global main

.data
prompt:      .asciz "Ingrese dos numeros:\n"
format_in:   .asciz "%d"
equal_msg:   .asciz "Los numeros son iguales\n"
greater_msg: .asciz "El primer numero es mayor\n"
less_msg:    .asciz "El segundo numero es mayor\n"
num1:        .word 0
num2:        .word 0

.text
main:
    push {lr}          @ Guardamos el registro de retorno

    @ Mostrar mensaje inicial
    ldr r0, =prompt
    bl printf

    @ Leer primer número
    ldr r0, =format_in
    ldr r1, =num1
    bl scanf

    @ Leer segundo número
    ldr r0, =format_in
    ldr r1, =num2
    bl scanf

    @ Cargar números y comparar
    ldr r0, =num1
    ldr r0, [r0]
    ldr r1, =num2
    ldr r1, [r1]
    cmp r0, r1

    beq equal
    bge greater
    blt less

equal:
    ldr r0, =equal_msg
    b print_result

greater:
    ldr r0, =greater_msg
    b print_result

less:
    ldr r0, =less_msg

print_result:
    bl printf
    pop {pc}
