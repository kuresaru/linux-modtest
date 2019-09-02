#include <linux/module.h>
#include <linux/init.h>

static int __init test_init(void)
{
	printk("Hello, test is ready!\n");
	return 0;
}

static void __exit test_exit(void)
{
	printk("Test is leaving!\n");
}

module_init(test_init);
module_exit(test_exit);
