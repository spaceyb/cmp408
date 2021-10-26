#include <linux/module.h>

MODULE_LICENSE("GPL");
MODULE_AUTHOR("WM");
MODULE_DESCRIPTION("lkm01 example");
MODULE_VERSION("0.2");

static int __init lkm01_init(void) {
    printk(KERN_INFO "CMP408 init: Hello World LKM\n");
    return 0;
}

static void __exit lkm01_exit(void) {
    printk(KERN_INFO "CMP408 exit: Goodbye LKM\n");
}

module_init(lkm01_init);
module_exit(lkm01_exit);


