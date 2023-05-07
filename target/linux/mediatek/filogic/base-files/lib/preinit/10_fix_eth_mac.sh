. /lib/functions/system.sh

preinit_set_mac_address() {
	case $(board_name) in
	asus,tuf-ax4200)
		CI_UBIPART="UBI_DEV"
		addr=$(mtd_get_mac_binary_ubi "Factory" 0x4)
		ip link set dev eth0 address "$addr"
		ip link set dev eth1 address "$addr"
		;;
	qihoo,360t7)
		lan_mac=$(mtd_get_mac_ascii stock-factory lanMac)
		ip link set dev eth0 address "$lan_mac"
		;;
	esac
}

boot_hook_add preinit_main preinit_set_mac_address
