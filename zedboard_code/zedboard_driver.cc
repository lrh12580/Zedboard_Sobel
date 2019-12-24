#include <thread>
#include "zedboard_driver.h"

/*
void *ZedboardMapRegister(uint32_t addr, size_t length) {
  // Align the base address with the pages
  uint32_t virt_base = addr & ~(getpagesize() - 1);
  // Calculate base address offset w.r.t the base address
  uint32_t virt_offset = addr - virt_base;
  // Open file and mmap
  uint32_t mmap_file = open(Zedboard_DEV_MEM_PATH, O_RDWR|O_SYNC);
  return mmap(NULL,
              (length+virt_offset),
              PROT_READ|PROT_WRITE,
              MAP_SHARED,
              mmap_file,
              virt_base);
}
*/
uint32_t *ZedboardMapRegister(uint32_t addr, size_t length) {
  // Open file and mmap
  uint32_t mmap_file = open(Zedboard_DEV_MEM_PATH, O_RDWR|O_SYNC);
  return (uint32_t *)mmap(NULL, 
            length, 
            PROT_READ | PROT_WRITE, 
            MAP_SHARED, 
            mmap_file, 
            addr); // Memory map AXI Lite register block
}

void ZedboardUnmapRegister(void *ip_core, size_t length) {
  // Unmap memory
  int status = munmap(ip_core, length);
  assert(status == 0);
}

/*
void ZedboardWriteMappedReg(void* base_addr, uint32_t offset, uint32_t val) {
  *((volatile uint32_t *) (reinterpret_cast<char *>(base_addr) + offset)) = val;
}

uint32_t ZedboardReadMappedReg(void* base_addr, uint32_t offset) {
  return *((volatile uint32_t *) (reinterpret_cast<char *>(base_addr) + offset));
}
*/

void ZedboardWriteMappedReg(uint32_t* base_addr, uint32_t offset, uint32_t val) {
    base_addr[offset >> 2] = val;
}

uint32_t ZedboardReadMappedReg(uint32_t* base_addr, uint32_t offset) {
    return base_addr[offset >> 2];
}
