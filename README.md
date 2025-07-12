# 🧙‍♂️ Aventuras en Ensamblador ARM

## 📚 Los Programas

### 1. `p1201model.s`  
🔢 **El Gran Sumador**  
- Pide 5 números al usuario  
- Los suma mágicamente  
- Muestra el total con estilo  

---

### 2. `p1201model1.s`  
🗣️ **El Eco Numérico**  
- Captura 5 números  
- Los repite uno por uno  
- Perfecto para practicar I/O básico  

---

### 3. `p1201model2.s`  
🧪 **El Alquimista Aritmético**  
- Recibe 5 números  
- Realiza operaciones en cadena:  
  ➕ Suma inicial  
  ➖ Resta sagrada  
  ✖️ Multiplicación final  
- Muestra cada paso  

---

### 4. `p1201model3.s`  
⚖️ **El Juez Numérico**  
- Compara 2 números  
- Dicta sentencia:  
  👉 Mayor, menor o iguales  
- Ideal para aprender condiciones  

---

## 🛠️ Cómo Ejecutarlos

```bash
arm-linux-gnueabi-as -o programa.o programa.s
arm-linux-gnueabi-gcc -o programa programa.o
qemu-arm ./programa
