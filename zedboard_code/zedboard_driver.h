#ifndef ZEDBOARD_DRIVER_H_
#define ZEDBOARD_DRIVER_H_

#ifdef __cplusplus
extern "C" {
#endif
#include <assert.h>
#include <fcntl.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <time.h>
#include <unistd.h>


#define ZEDBOARD_CACHED 1
#define ZEDBOARD_NOT_CACHED 0

#ifndef ZEDBOARD_MAX_XFER
#define ZEDBOARD_MAX_XFER (1<<22)
#endif

typedef uint32_t zedboard_phy_addr_t;

void* ZedboardMemAlloc(size_t size, int cached);
void ZedboardMemFree(void* buf);
zedboard_phy_addr_t ZedboardMemGetPhyAddr(void* buf);
void ZedboardFlushCache(zedboard_phy_addr_t buf, int size);
void ZedboardInvalidateCache(zedboard_phy_addr_t buf, int size);
    
void xlnkFlushCache(void* buf, int size);
void xlnkInvalidateCache(void* buf, int size);

uint32_t *ZedboardMapRegister(uint32_t addr, size_t length);
void ZedboardUnmapRegister(void *vta, size_t length);
void ZedboardWriteMappedReg(uint32_t* base_addr, uint32_t offset, uint32_t val);
uint32_t ZedboardReadMappedReg(uint32_t* base_addr, uint32_t offset);

#define Zedboard_DEV_MEM_PATH "/dev/mem"
#define Zedboard_MMIO_WORD_LENGTH 4
#define Zedboard_MMIO_WORD_MASK (~(MMIO_WORD_LENGTH - 1))

#define Zedboard_RANGE 0x100
#define Zedboard_START 0x1
#define Zedboard_AUTORESTART 0x81

#define XAXIDMA_DMA_TO_DEVICE		0x00
#define XAXIDMA_DEVICE_TO_DMA		0x01

#define XAXIDMA_TX_OFFSET	0x00000000 
#define XAXIDMA_RX_OFFSET	0x00000030 


#define XAXIDMA_CR_OFFSET	 0x00000000   /**< Channel control */
#define XAXIDMA_SR_OFFSET	 0x00000004   /**< Status */
#define XAXIDMA_CDESC_OFFSET	 0x00000008   /**< Current descriptor pointer */
#define XAXIDMA_CDESC_MSB_OFFSET 0x0000000C   /**< Current descriptor pointer */
#define XAXIDMA_TDESC_OFFSET	 0x00000010   /**< Tail descriptor pointer */
#define XAXIDMA_TDESC_MSB_OFFSET 0x00000014   /**< Tail descriptor pointer */
#define XAXIDMA_SRCADDR_OFFSET	 0x00000018   /**< Simple mode source address pointer */
#define XAXIDMA_SRCADDR_MSB_OFFSET	0x0000001C  /**< Simple mode source address pointer */
#define XAXIDMA_DESTADDR_OFFSET		0x00000018   /**< Simple mode destination address pointer */
#define XAXIDMA_DESTADDR_MSB_OFFSET	0x0000001C   /**< Simple mode destination address pointer */
#define XAXIDMA_BUFFLEN_OFFSET		0x00000028   /**< Tail descriptor pointer */
#define XAXIDMA_SGCTL_OFFSET		0x0000002c   /**< SG Control Register */

#define XAXIDMA_HALTED_MASK		0x00000001  /**< DMA channel halted */
#define XAXIDMA_IDLE_MASK		0x00000002  /**< DMA channel idle */
#define XAXIDMA_ERR_INTERNAL_MASK	0x00000010  /**< Datamover internal
						      *  err */
#define XAXIDMA_ERR_SLAVE_MASK		0x00000020  /**< Datamover slave err */
#define XAXIDMA_ERR_DECODE_MASK		0x00000040  /**< Datamover decode */

#define XAXIDMA_CR_RUNSTOP_MASK	0x00000001 /**< Start/stop DMA channel */
#define XAXIDMA_CR_RESET_MASK	0x00000004 /**< Reset DMA engine */
#define XAXIDMA_CR_KEYHOLE_MASK	0x00000008 /**< Keyhole feature */
#define XAXIDMA_CR_CYCLIC_MASK	0x00000010 /**< Cyclic Mode */

#define XAXIDMA_IRQ_IOC_MASK		0x00001000 /**< Completion intr */
#define XAXIDMA_IRQ_DELAY_MASK		0x00002000 /**< Delay interrupt */
#define XAXIDMA_IRQ_ERROR_MASK		0x00004000 /**< Error interrupt */
#define XAXIDMA_IRQ_ALL_MASK		0x00007000 /**< All interrupts */

#define Zedboard_IMAGE_FILTER_ADDR 0x43C00000
#define Zedboard_DMA_ADDR 0x40400000


#ifdef __cplusplus
}
#endif
#endif
