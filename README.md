
# Dual-Port RAM in Verilog  

## Problem Statement  

### **Objective**  
Design a **Dual-Port RAM** in Verilog that allows simultaneous read and write operations on different ports.  

### **Specifications**  
1. **Memory Depth & Width:** The RAM should have a depth of **256 words** and a data width of **8 bits**.  
2. **Read and Write Ports:**  
   - **Port A:** Supports **write** operations.  
   - **Port B:** Supports **read** operations.  
3. **Addressing:**  
   - **Port A Address:** 8-bit address for write operations.  
   - **Port B Address:** 8-bit address for read operations.  
4. **Clocking:** The design should be synchronous with a **single clock** controlling both operations.  
5. **Enable & Write Control:**  
   - A **write enable (`weA`)** signal should control writing to memory.  
   - A **chip enable (`enA` & `enB`)** should control access to memory.  
6. **Initial Condition:** The memory should be initialized to zeros.  

### **Expected Functionality**  
- When `weA = 1` and `enA = 1`, data at `dinA` is written to `addrA` on the rising clock edge.  
- When `enB = 1`, the data from `addrB` is read and assigned to `doutB`.  
- **Read and write operations can occur simultaneously but on different addresses.**  

### **Deliverables**  
- ✅ Verilog code for **Dual-Port RAM**  
- ✅ Testbench to validate the correct operation of simultaneous read/write  

