#!/sbin/sh

load_panel()
{
	insmod /lib/modules/focaltech_touch_i2c_v42.ko
    insmod /vendor/lib/modules/tkcore.ko
}


load_panel
wait 1
setprop modules.loaded 1
exit 0
