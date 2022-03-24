#if !defined(_PN_DEF_)
#define _PN_DEF_
#include "common.h"

// typedef struct
// {
//     __IO uint32_t value;
//     __IO uint8_t  status;
// } pn_template_t;

// extern pn_template_t pn_template;

void template_init(void);
uint32_t template_read(void);
void template_write(uint32_t value);

#endif // _PN_DEF_
