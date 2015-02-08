#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/HarmonyTestApp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/HarmonyTestApp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../../../../../../../microchip/harmony/v1_02/framework/crypto/src/random.c ../../../../../../../../microchip/harmony/v1_02/framework/crypto/src/arc4.c ../../../../../../../../microchip/harmony/v1_02/framework/crypto/src/crypto.c ../../../../../../../../microchip/harmony/v1_02/framework/driver/ethmac/src/dynamic/drv_ethmac.c ../../../../../../../../microchip/harmony/v1_02/framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c ../../../../../../../../microchip/harmony/v1_02/framework/driver/ethphy/src/dynamic/drv_ethphy.c ../../../../../../../../microchip/harmony/v1_02/framework/driver/ethphy/src/dynamic/drv_extphy_smsc8740.c ../../../../../../../../microchip/harmony/v1_02/framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../../../../microchip/harmony/v1_02/framework/system/devcon/src/sys_devcon.c ../../../../../../../../microchip/harmony/v1_02/framework/system/devcon/src/sys_devcon_pic32mx.c ../../../../../../../../microchip/harmony/v1_02/framework/system/int/src/sys_int_pic32.c ../../../../../../../../microchip/harmony/v1_02/framework/system/ports/src/sys_ports.c ../../../../../../../../microchip/harmony/v1_02/framework/system/random/src/sys_random.c ../../../../../../../../microchip/harmony/v1_02/framework/system/reset/src/sys_reset.c ../../../../../../../../microchip/harmony/v1_02/framework/system/tmr/src/sys_tmr.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcp.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/udp.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/arp.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/dhcp.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/dns.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/icmp.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/nbns.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/zero_conf_helper.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/zero_conf_link_local.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_announce.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_commands.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/common/big_int.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/common/big_int_helper_c32.S ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/common/hashes.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/common/helpers.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/common/lfsr.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/hash_fnv.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/oahash.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_heap_alloc.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_helpers.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_helper_c32.S ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_manager.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_notify.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_packet.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/system/system_debug.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/system/drivers/usart.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/system/system_command.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/ipv4.c ../src/app.c ../src/system_config/default/framework/system/clk/src/sys_clk_static.c ../src/system_config/default/framework/system/ports/src/sys_ports_static.c ../src/system_config/default/system_init.c ../src/system_config/default/system_interrupt.c ../src/main.c ../src/system_config/default/system_tasks.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/595770632/random.o ${OBJECTDIR}/_ext/595770632/arc4.o ${OBJECTDIR}/_ext/595770632/crypto.o ${OBJECTDIR}/_ext/1986204992/drv_ethmac.o ${OBJECTDIR}/_ext/1986204992/drv_ethmac_lib.o ${OBJECTDIR}/_ext/810051186/drv_ethphy.o ${OBJECTDIR}/_ext/810051186/drv_extphy_smsc8740.o ${OBJECTDIR}/_ext/304478105/drv_tmr.o ${OBJECTDIR}/_ext/335806368/sys_devcon.o ${OBJECTDIR}/_ext/335806368/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/1055666758/sys_int_pic32.o ${OBJECTDIR}/_ext/1237536663/sys_ports.o ${OBJECTDIR}/_ext/323145514/sys_random.o ${OBJECTDIR}/_ext/346722522/sys_reset.o ${OBJECTDIR}/_ext/2097170832/sys_tmr.o ${OBJECTDIR}/_ext/1144052859/tcp.o ${OBJECTDIR}/_ext/1144052859/udp.o ${OBJECTDIR}/_ext/1144052859/arp.o ${OBJECTDIR}/_ext/1144052859/dhcp.o ${OBJECTDIR}/_ext/1144052859/dns.o ${OBJECTDIR}/_ext/1144052859/icmp.o ${OBJECTDIR}/_ext/1144052859/nbns.o ${OBJECTDIR}/_ext/1144052859/zero_conf_helper.o ${OBJECTDIR}/_ext/1144052859/zero_conf_link_local.o ${OBJECTDIR}/_ext/1144052859/tcpip_announce.o ${OBJECTDIR}/_ext/1144052859/tcpip_commands.o ${OBJECTDIR}/_ext/1997815295/big_int.o ${OBJECTDIR}/_ext/1997815295/big_int_helper_c32.o ${OBJECTDIR}/_ext/1997815295/hashes.o ${OBJECTDIR}/_ext/1997815295/helpers.o ${OBJECTDIR}/_ext/1997815295/lfsr.o ${OBJECTDIR}/_ext/1144052859/hash_fnv.o ${OBJECTDIR}/_ext/1144052859/oahash.o ${OBJECTDIR}/_ext/1144052859/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/1144052859/tcpip_helpers.o ${OBJECTDIR}/_ext/1144052859/tcpip_helper_c32.o ${OBJECTDIR}/_ext/1144052859/tcpip_manager.o ${OBJECTDIR}/_ext/1144052859/tcpip_notify.o ${OBJECTDIR}/_ext/1144052859/tcpip_packet.o ${OBJECTDIR}/_ext/1829665213/system_debug.o ${OBJECTDIR}/_ext/918699391/usart.o ${OBJECTDIR}/_ext/1829665213/system_command.o ${OBJECTDIR}/_ext/1144052859/ipv4.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/639803181/sys_clk_static.o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ${OBJECTDIR}/_ext/1688732426/system_init.o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1688732426/system_tasks.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/595770632/random.o.d ${OBJECTDIR}/_ext/595770632/arc4.o.d ${OBJECTDIR}/_ext/595770632/crypto.o.d ${OBJECTDIR}/_ext/1986204992/drv_ethmac.o.d ${OBJECTDIR}/_ext/1986204992/drv_ethmac_lib.o.d ${OBJECTDIR}/_ext/810051186/drv_ethphy.o.d ${OBJECTDIR}/_ext/810051186/drv_extphy_smsc8740.o.d ${OBJECTDIR}/_ext/304478105/drv_tmr.o.d ${OBJECTDIR}/_ext/335806368/sys_devcon.o.d ${OBJECTDIR}/_ext/335806368/sys_devcon_pic32mx.o.d ${OBJECTDIR}/_ext/1055666758/sys_int_pic32.o.d ${OBJECTDIR}/_ext/1237536663/sys_ports.o.d ${OBJECTDIR}/_ext/323145514/sys_random.o.d ${OBJECTDIR}/_ext/346722522/sys_reset.o.d ${OBJECTDIR}/_ext/2097170832/sys_tmr.o.d ${OBJECTDIR}/_ext/1144052859/tcp.o.d ${OBJECTDIR}/_ext/1144052859/udp.o.d ${OBJECTDIR}/_ext/1144052859/arp.o.d ${OBJECTDIR}/_ext/1144052859/dhcp.o.d ${OBJECTDIR}/_ext/1144052859/dns.o.d ${OBJECTDIR}/_ext/1144052859/icmp.o.d ${OBJECTDIR}/_ext/1144052859/nbns.o.d ${OBJECTDIR}/_ext/1144052859/zero_conf_helper.o.d ${OBJECTDIR}/_ext/1144052859/zero_conf_link_local.o.d ${OBJECTDIR}/_ext/1144052859/tcpip_announce.o.d ${OBJECTDIR}/_ext/1144052859/tcpip_commands.o.d ${OBJECTDIR}/_ext/1997815295/big_int.o.d ${OBJECTDIR}/_ext/1997815295/big_int_helper_c32.o.d ${OBJECTDIR}/_ext/1997815295/hashes.o.d ${OBJECTDIR}/_ext/1997815295/helpers.o.d ${OBJECTDIR}/_ext/1997815295/lfsr.o.d ${OBJECTDIR}/_ext/1144052859/hash_fnv.o.d ${OBJECTDIR}/_ext/1144052859/oahash.o.d ${OBJECTDIR}/_ext/1144052859/tcpip_heap_alloc.o.d ${OBJECTDIR}/_ext/1144052859/tcpip_helpers.o.d ${OBJECTDIR}/_ext/1144052859/tcpip_helper_c32.o.d ${OBJECTDIR}/_ext/1144052859/tcpip_manager.o.d ${OBJECTDIR}/_ext/1144052859/tcpip_notify.o.d ${OBJECTDIR}/_ext/1144052859/tcpip_packet.o.d ${OBJECTDIR}/_ext/1829665213/system_debug.o.d ${OBJECTDIR}/_ext/918699391/usart.o.d ${OBJECTDIR}/_ext/1829665213/system_command.o.d ${OBJECTDIR}/_ext/1144052859/ipv4.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d ${OBJECTDIR}/_ext/1688732426/system_init.o.d ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/595770632/random.o ${OBJECTDIR}/_ext/595770632/arc4.o ${OBJECTDIR}/_ext/595770632/crypto.o ${OBJECTDIR}/_ext/1986204992/drv_ethmac.o ${OBJECTDIR}/_ext/1986204992/drv_ethmac_lib.o ${OBJECTDIR}/_ext/810051186/drv_ethphy.o ${OBJECTDIR}/_ext/810051186/drv_extphy_smsc8740.o ${OBJECTDIR}/_ext/304478105/drv_tmr.o ${OBJECTDIR}/_ext/335806368/sys_devcon.o ${OBJECTDIR}/_ext/335806368/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/1055666758/sys_int_pic32.o ${OBJECTDIR}/_ext/1237536663/sys_ports.o ${OBJECTDIR}/_ext/323145514/sys_random.o ${OBJECTDIR}/_ext/346722522/sys_reset.o ${OBJECTDIR}/_ext/2097170832/sys_tmr.o ${OBJECTDIR}/_ext/1144052859/tcp.o ${OBJECTDIR}/_ext/1144052859/udp.o ${OBJECTDIR}/_ext/1144052859/arp.o ${OBJECTDIR}/_ext/1144052859/dhcp.o ${OBJECTDIR}/_ext/1144052859/dns.o ${OBJECTDIR}/_ext/1144052859/icmp.o ${OBJECTDIR}/_ext/1144052859/nbns.o ${OBJECTDIR}/_ext/1144052859/zero_conf_helper.o ${OBJECTDIR}/_ext/1144052859/zero_conf_link_local.o ${OBJECTDIR}/_ext/1144052859/tcpip_announce.o ${OBJECTDIR}/_ext/1144052859/tcpip_commands.o ${OBJECTDIR}/_ext/1997815295/big_int.o ${OBJECTDIR}/_ext/1997815295/big_int_helper_c32.o ${OBJECTDIR}/_ext/1997815295/hashes.o ${OBJECTDIR}/_ext/1997815295/helpers.o ${OBJECTDIR}/_ext/1997815295/lfsr.o ${OBJECTDIR}/_ext/1144052859/hash_fnv.o ${OBJECTDIR}/_ext/1144052859/oahash.o ${OBJECTDIR}/_ext/1144052859/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/1144052859/tcpip_helpers.o ${OBJECTDIR}/_ext/1144052859/tcpip_helper_c32.o ${OBJECTDIR}/_ext/1144052859/tcpip_manager.o ${OBJECTDIR}/_ext/1144052859/tcpip_notify.o ${OBJECTDIR}/_ext/1144052859/tcpip_packet.o ${OBJECTDIR}/_ext/1829665213/system_debug.o ${OBJECTDIR}/_ext/918699391/usart.o ${OBJECTDIR}/_ext/1829665213/system_command.o ${OBJECTDIR}/_ext/1144052859/ipv4.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/639803181/sys_clk_static.o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ${OBJECTDIR}/_ext/1688732426/system_init.o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1688732426/system_tasks.o

# Source Files
SOURCEFILES=../../../../../../../../microchip/harmony/v1_02/framework/crypto/src/random.c ../../../../../../../../microchip/harmony/v1_02/framework/crypto/src/arc4.c ../../../../../../../../microchip/harmony/v1_02/framework/crypto/src/crypto.c ../../../../../../../../microchip/harmony/v1_02/framework/driver/ethmac/src/dynamic/drv_ethmac.c ../../../../../../../../microchip/harmony/v1_02/framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c ../../../../../../../../microchip/harmony/v1_02/framework/driver/ethphy/src/dynamic/drv_ethphy.c ../../../../../../../../microchip/harmony/v1_02/framework/driver/ethphy/src/dynamic/drv_extphy_smsc8740.c ../../../../../../../../microchip/harmony/v1_02/framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../../../../microchip/harmony/v1_02/framework/system/devcon/src/sys_devcon.c ../../../../../../../../microchip/harmony/v1_02/framework/system/devcon/src/sys_devcon_pic32mx.c ../../../../../../../../microchip/harmony/v1_02/framework/system/int/src/sys_int_pic32.c ../../../../../../../../microchip/harmony/v1_02/framework/system/ports/src/sys_ports.c ../../../../../../../../microchip/harmony/v1_02/framework/system/random/src/sys_random.c ../../../../../../../../microchip/harmony/v1_02/framework/system/reset/src/sys_reset.c ../../../../../../../../microchip/harmony/v1_02/framework/system/tmr/src/sys_tmr.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcp.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/udp.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/arp.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/dhcp.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/dns.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/icmp.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/nbns.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/zero_conf_helper.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/zero_conf_link_local.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_announce.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_commands.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/common/big_int.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/common/big_int_helper_c32.S ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/common/hashes.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/common/helpers.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/common/lfsr.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/hash_fnv.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/oahash.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_heap_alloc.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_helpers.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_helper_c32.S ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_manager.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_notify.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_packet.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/system/system_debug.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/system/drivers/usart.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/system/system_command.c ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/ipv4.c ../src/app.c ../src/system_config/default/framework/system/clk/src/sys_clk_static.c ../src/system_config/default/framework/system/ports/src/sys_ports_static.c ../src/system_config/default/system_init.c ../src/system_config/default/system_interrupt.c ../src/main.c ../src/system_config/default/system_tasks.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/HarmonyTestApp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX795F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1997815295/big_int_helper_c32.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/common/big_int_helper_c32.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1997815295 
	@${RM} ${OBJECTDIR}/_ext/1997815295/big_int_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1997815295/big_int_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/1997815295/big_int_helper_c32.o.ok ${OBJECTDIR}/_ext/1997815295/big_int_helper_c32.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1997815295/big_int_helper_c32.o.d" "${OBJECTDIR}/_ext/1997815295/big_int_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1997815295/big_int_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/1997815295/big_int_helper_c32.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/common/big_int_helper_c32.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1997815295/big_int_helper_c32.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1
	
${OBJECTDIR}/_ext/1144052859/tcpip_helper_c32.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_helper_c32.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/1144052859/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/1144052859/tcpip_helper_c32.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/1144052859/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1144052859/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/1144052859/tcpip_helper_c32.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_helper_c32.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1144052859/tcpip_helper_c32.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1
	
else
${OBJECTDIR}/_ext/1997815295/big_int_helper_c32.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/common/big_int_helper_c32.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1997815295 
	@${RM} ${OBJECTDIR}/_ext/1997815295/big_int_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1997815295/big_int_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/1997815295/big_int_helper_c32.o.ok ${OBJECTDIR}/_ext/1997815295/big_int_helper_c32.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1997815295/big_int_helper_c32.o.d" "${OBJECTDIR}/_ext/1997815295/big_int_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1997815295/big_int_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/1997815295/big_int_helper_c32.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/common/big_int_helper_c32.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1997815295/big_int_helper_c32.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/_ext/1144052859/tcpip_helper_c32.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_helper_c32.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/1144052859/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/1144052859/tcpip_helper_c32.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/1144052859/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1144052859/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/1144052859/tcpip_helper_c32.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_helper_c32.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1144052859/tcpip_helper_c32.o.asm.d",--gdwarf-2
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/595770632/random.o: ../../../../../../../../microchip/harmony/v1_02/framework/crypto/src/random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/595770632 
	@${RM} ${OBJECTDIR}/_ext/595770632/random.o.d 
	@${RM} ${OBJECTDIR}/_ext/595770632/random.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/595770632/random.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/595770632/random.o.d" -o ${OBJECTDIR}/_ext/595770632/random.o ../../../../../../../../microchip/harmony/v1_02/framework/crypto/src/random.c   
	
${OBJECTDIR}/_ext/595770632/arc4.o: ../../../../../../../../microchip/harmony/v1_02/framework/crypto/src/arc4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/595770632 
	@${RM} ${OBJECTDIR}/_ext/595770632/arc4.o.d 
	@${RM} ${OBJECTDIR}/_ext/595770632/arc4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/595770632/arc4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/595770632/arc4.o.d" -o ${OBJECTDIR}/_ext/595770632/arc4.o ../../../../../../../../microchip/harmony/v1_02/framework/crypto/src/arc4.c   
	
${OBJECTDIR}/_ext/595770632/crypto.o: ../../../../../../../../microchip/harmony/v1_02/framework/crypto/src/crypto.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/595770632 
	@${RM} ${OBJECTDIR}/_ext/595770632/crypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/595770632/crypto.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/595770632/crypto.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/595770632/crypto.o.d" -o ${OBJECTDIR}/_ext/595770632/crypto.o ../../../../../../../../microchip/harmony/v1_02/framework/crypto/src/crypto.c   
	
${OBJECTDIR}/_ext/1986204992/drv_ethmac.o: ../../../../../../../../microchip/harmony/v1_02/framework/driver/ethmac/src/dynamic/drv_ethmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1986204992 
	@${RM} ${OBJECTDIR}/_ext/1986204992/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986204992/drv_ethmac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1986204992/drv_ethmac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1986204992/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/1986204992/drv_ethmac.o ../../../../../../../../microchip/harmony/v1_02/framework/driver/ethmac/src/dynamic/drv_ethmac.c   
	
${OBJECTDIR}/_ext/1986204992/drv_ethmac_lib.o: ../../../../../../../../microchip/harmony/v1_02/framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1986204992 
	@${RM} ${OBJECTDIR}/_ext/1986204992/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986204992/drv_ethmac_lib.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1986204992/drv_ethmac_lib.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1986204992/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/1986204992/drv_ethmac_lib.o ../../../../../../../../microchip/harmony/v1_02/framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c   
	
${OBJECTDIR}/_ext/810051186/drv_ethphy.o: ../../../../../../../../microchip/harmony/v1_02/framework/driver/ethphy/src/dynamic/drv_ethphy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/810051186 
	@${RM} ${OBJECTDIR}/_ext/810051186/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/810051186/drv_ethphy.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/810051186/drv_ethphy.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/810051186/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/810051186/drv_ethphy.o ../../../../../../../../microchip/harmony/v1_02/framework/driver/ethphy/src/dynamic/drv_ethphy.c   
	
${OBJECTDIR}/_ext/810051186/drv_extphy_smsc8740.o: ../../../../../../../../microchip/harmony/v1_02/framework/driver/ethphy/src/dynamic/drv_extphy_smsc8740.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/810051186 
	@${RM} ${OBJECTDIR}/_ext/810051186/drv_extphy_smsc8740.o.d 
	@${RM} ${OBJECTDIR}/_ext/810051186/drv_extphy_smsc8740.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/810051186/drv_extphy_smsc8740.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/810051186/drv_extphy_smsc8740.o.d" -o ${OBJECTDIR}/_ext/810051186/drv_extphy_smsc8740.o ../../../../../../../../microchip/harmony/v1_02/framework/driver/ethphy/src/dynamic/drv_extphy_smsc8740.c   
	
${OBJECTDIR}/_ext/304478105/drv_tmr.o: ../../../../../../../../microchip/harmony/v1_02/framework/driver/tmr/src/dynamic/drv_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/304478105 
	@${RM} ${OBJECTDIR}/_ext/304478105/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/304478105/drv_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/304478105/drv_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/304478105/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/304478105/drv_tmr.o ../../../../../../../../microchip/harmony/v1_02/framework/driver/tmr/src/dynamic/drv_tmr.c   
	
${OBJECTDIR}/_ext/335806368/sys_devcon.o: ../../../../../../../../microchip/harmony/v1_02/framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/335806368 
	@${RM} ${OBJECTDIR}/_ext/335806368/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/335806368/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/335806368/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/335806368/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/335806368/sys_devcon.o ../../../../../../../../microchip/harmony/v1_02/framework/system/devcon/src/sys_devcon.c   
	
${OBJECTDIR}/_ext/335806368/sys_devcon_pic32mx.o: ../../../../../../../../microchip/harmony/v1_02/framework/system/devcon/src/sys_devcon_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/335806368 
	@${RM} ${OBJECTDIR}/_ext/335806368/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/335806368/sys_devcon_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/335806368/sys_devcon_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/335806368/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/335806368/sys_devcon_pic32mx.o ../../../../../../../../microchip/harmony/v1_02/framework/system/devcon/src/sys_devcon_pic32mx.c   
	
${OBJECTDIR}/_ext/1055666758/sys_int_pic32.o: ../../../../../../../../microchip/harmony/v1_02/framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1055666758 
	@${RM} ${OBJECTDIR}/_ext/1055666758/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055666758/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1055666758/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1055666758/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1055666758/sys_int_pic32.o ../../../../../../../../microchip/harmony/v1_02/framework/system/int/src/sys_int_pic32.c   
	
${OBJECTDIR}/_ext/1237536663/sys_ports.o: ../../../../../../../../microchip/harmony/v1_02/framework/system/ports/src/sys_ports.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1237536663 
	@${RM} ${OBJECTDIR}/_ext/1237536663/sys_ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1237536663/sys_ports.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1237536663/sys_ports.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1237536663/sys_ports.o.d" -o ${OBJECTDIR}/_ext/1237536663/sys_ports.o ../../../../../../../../microchip/harmony/v1_02/framework/system/ports/src/sys_ports.c   
	
${OBJECTDIR}/_ext/323145514/sys_random.o: ../../../../../../../../microchip/harmony/v1_02/framework/system/random/src/sys_random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/323145514 
	@${RM} ${OBJECTDIR}/_ext/323145514/sys_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/323145514/sys_random.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/323145514/sys_random.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/323145514/sys_random.o.d" -o ${OBJECTDIR}/_ext/323145514/sys_random.o ../../../../../../../../microchip/harmony/v1_02/framework/system/random/src/sys_random.c   
	
${OBJECTDIR}/_ext/346722522/sys_reset.o: ../../../../../../../../microchip/harmony/v1_02/framework/system/reset/src/sys_reset.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/346722522 
	@${RM} ${OBJECTDIR}/_ext/346722522/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/346722522/sys_reset.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/346722522/sys_reset.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/346722522/sys_reset.o.d" -o ${OBJECTDIR}/_ext/346722522/sys_reset.o ../../../../../../../../microchip/harmony/v1_02/framework/system/reset/src/sys_reset.c   
	
${OBJECTDIR}/_ext/2097170832/sys_tmr.o: ../../../../../../../../microchip/harmony/v1_02/framework/system/tmr/src/sys_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2097170832 
	@${RM} ${OBJECTDIR}/_ext/2097170832/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/2097170832/sys_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2097170832/sys_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/2097170832/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/2097170832/sys_tmr.o ../../../../../../../../microchip/harmony/v1_02/framework/system/tmr/src/sys_tmr.c   
	
${OBJECTDIR}/_ext/1144052859/tcp.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/tcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/tcp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/tcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1144052859/tcp.o.d" -o ${OBJECTDIR}/_ext/1144052859/tcp.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcp.c   
	
${OBJECTDIR}/_ext/1144052859/udp.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/udp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/udp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/udp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1144052859/udp.o.d" -o ${OBJECTDIR}/_ext/1144052859/udp.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/udp.c   
	
${OBJECTDIR}/_ext/1144052859/arp.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/arp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/arp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/arp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1144052859/arp.o.d" -o ${OBJECTDIR}/_ext/1144052859/arp.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/arp.c   
	
${OBJECTDIR}/_ext/1144052859/dhcp.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/dhcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/dhcp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/dhcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1144052859/dhcp.o.d" -o ${OBJECTDIR}/_ext/1144052859/dhcp.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/dhcp.c   
	
${OBJECTDIR}/_ext/1144052859/dns.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/dns.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/dns.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/dns.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1144052859/dns.o.d" -o ${OBJECTDIR}/_ext/1144052859/dns.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/dns.c   
	
${OBJECTDIR}/_ext/1144052859/icmp.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/icmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/icmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/icmp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/icmp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1144052859/icmp.o.d" -o ${OBJECTDIR}/_ext/1144052859/icmp.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/icmp.c   
	
${OBJECTDIR}/_ext/1144052859/nbns.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/nbns.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/nbns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/nbns.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/nbns.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1144052859/nbns.o.d" -o ${OBJECTDIR}/_ext/1144052859/nbns.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/nbns.c   
	
${OBJECTDIR}/_ext/1144052859/zero_conf_helper.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/zero_conf_helper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/zero_conf_helper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/zero_conf_helper.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/zero_conf_helper.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1144052859/zero_conf_helper.o.d" -o ${OBJECTDIR}/_ext/1144052859/zero_conf_helper.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/zero_conf_helper.c   
	
${OBJECTDIR}/_ext/1144052859/zero_conf_link_local.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/zero_conf_link_local.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/zero_conf_link_local.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/zero_conf_link_local.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/zero_conf_link_local.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1144052859/zero_conf_link_local.o.d" -o ${OBJECTDIR}/_ext/1144052859/zero_conf_link_local.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/zero_conf_link_local.c   
	
${OBJECTDIR}/_ext/1144052859/tcpip_announce.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/tcpip_announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/tcpip_announce.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/tcpip_announce.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1144052859/tcpip_announce.o.d" -o ${OBJECTDIR}/_ext/1144052859/tcpip_announce.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_announce.c   
	
${OBJECTDIR}/_ext/1144052859/tcpip_commands.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_commands.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/tcpip_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/tcpip_commands.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/tcpip_commands.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1144052859/tcpip_commands.o.d" -o ${OBJECTDIR}/_ext/1144052859/tcpip_commands.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_commands.c   
	
${OBJECTDIR}/_ext/1997815295/big_int.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/common/big_int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1997815295 
	@${RM} ${OBJECTDIR}/_ext/1997815295/big_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1997815295/big_int.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1997815295/big_int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1997815295/big_int.o.d" -o ${OBJECTDIR}/_ext/1997815295/big_int.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/common/big_int.c   
	
${OBJECTDIR}/_ext/1997815295/hashes.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/common/hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1997815295 
	@${RM} ${OBJECTDIR}/_ext/1997815295/hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1997815295/hashes.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1997815295/hashes.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1997815295/hashes.o.d" -o ${OBJECTDIR}/_ext/1997815295/hashes.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/common/hashes.c   
	
${OBJECTDIR}/_ext/1997815295/helpers.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/common/helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1997815295 
	@${RM} ${OBJECTDIR}/_ext/1997815295/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1997815295/helpers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1997815295/helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1997815295/helpers.o.d" -o ${OBJECTDIR}/_ext/1997815295/helpers.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/common/helpers.c   
	
${OBJECTDIR}/_ext/1997815295/lfsr.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/common/lfsr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1997815295 
	@${RM} ${OBJECTDIR}/_ext/1997815295/lfsr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1997815295/lfsr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1997815295/lfsr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1997815295/lfsr.o.d" -o ${OBJECTDIR}/_ext/1997815295/lfsr.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/common/lfsr.c   
	
${OBJECTDIR}/_ext/1144052859/hash_fnv.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/hash_fnv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/hash_fnv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/hash_fnv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1144052859/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/1144052859/hash_fnv.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/hash_fnv.c   
	
${OBJECTDIR}/_ext/1144052859/oahash.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/oahash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/oahash.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/oahash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1144052859/oahash.o.d" -o ${OBJECTDIR}/_ext/1144052859/oahash.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/oahash.c   
	
${OBJECTDIR}/_ext/1144052859/tcpip_heap_alloc.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_heap_alloc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/tcpip_heap_alloc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/tcpip_heap_alloc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1144052859/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/1144052859/tcpip_heap_alloc.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_heap_alloc.c   
	
${OBJECTDIR}/_ext/1144052859/tcpip_helpers.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/tcpip_helpers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/tcpip_helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1144052859/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/1144052859/tcpip_helpers.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_helpers.c   
	
${OBJECTDIR}/_ext/1144052859/tcpip_manager.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/tcpip_manager.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/tcpip_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1144052859/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/1144052859/tcpip_manager.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_manager.c   
	
${OBJECTDIR}/_ext/1144052859/tcpip_notify.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_notify.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/tcpip_notify.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/tcpip_notify.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1144052859/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/1144052859/tcpip_notify.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_notify.c   
	
${OBJECTDIR}/_ext/1144052859/tcpip_packet.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_packet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/tcpip_packet.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/tcpip_packet.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1144052859/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/1144052859/tcpip_packet.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_packet.c   
	
${OBJECTDIR}/_ext/1829665213/system_debug.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/system/system_debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1829665213 
	@${RM} ${OBJECTDIR}/_ext/1829665213/system_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1829665213/system_debug.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1829665213/system_debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1829665213/system_debug.o.d" -o ${OBJECTDIR}/_ext/1829665213/system_debug.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/system/system_debug.c   
	
${OBJECTDIR}/_ext/918699391/usart.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/system/drivers/usart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/918699391 
	@${RM} ${OBJECTDIR}/_ext/918699391/usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/918699391/usart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/918699391/usart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/918699391/usart.o.d" -o ${OBJECTDIR}/_ext/918699391/usart.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/system/drivers/usart.c   
	
${OBJECTDIR}/_ext/1829665213/system_command.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/system/system_command.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1829665213 
	@${RM} ${OBJECTDIR}/_ext/1829665213/system_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/1829665213/system_command.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1829665213/system_command.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1829665213/system_command.o.d" -o ${OBJECTDIR}/_ext/1829665213/system_command.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/system/system_command.c   
	
${OBJECTDIR}/_ext/1144052859/ipv4.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/ipv4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/ipv4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/ipv4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1144052859/ipv4.o.d" -o ${OBJECTDIR}/_ext/1144052859/ipv4.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/ipv4.c   
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c   
	
${OBJECTDIR}/_ext/639803181/sys_clk_static.o: ../src/system_config/default/framework/system/clk/src/sys_clk_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/639803181 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_static.o ../src/system_config/default/framework/system/clk/src/sys_clk_static.c   
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/822048611 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c   
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1688732426 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c   
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1688732426 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c   
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c   
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1688732426 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c   
	
else
${OBJECTDIR}/_ext/595770632/random.o: ../../../../../../../../microchip/harmony/v1_02/framework/crypto/src/random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/595770632 
	@${RM} ${OBJECTDIR}/_ext/595770632/random.o.d 
	@${RM} ${OBJECTDIR}/_ext/595770632/random.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/595770632/random.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/595770632/random.o.d" -o ${OBJECTDIR}/_ext/595770632/random.o ../../../../../../../../microchip/harmony/v1_02/framework/crypto/src/random.c   
	
${OBJECTDIR}/_ext/595770632/arc4.o: ../../../../../../../../microchip/harmony/v1_02/framework/crypto/src/arc4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/595770632 
	@${RM} ${OBJECTDIR}/_ext/595770632/arc4.o.d 
	@${RM} ${OBJECTDIR}/_ext/595770632/arc4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/595770632/arc4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/595770632/arc4.o.d" -o ${OBJECTDIR}/_ext/595770632/arc4.o ../../../../../../../../microchip/harmony/v1_02/framework/crypto/src/arc4.c   
	
${OBJECTDIR}/_ext/595770632/crypto.o: ../../../../../../../../microchip/harmony/v1_02/framework/crypto/src/crypto.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/595770632 
	@${RM} ${OBJECTDIR}/_ext/595770632/crypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/595770632/crypto.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/595770632/crypto.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/595770632/crypto.o.d" -o ${OBJECTDIR}/_ext/595770632/crypto.o ../../../../../../../../microchip/harmony/v1_02/framework/crypto/src/crypto.c   
	
${OBJECTDIR}/_ext/1986204992/drv_ethmac.o: ../../../../../../../../microchip/harmony/v1_02/framework/driver/ethmac/src/dynamic/drv_ethmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1986204992 
	@${RM} ${OBJECTDIR}/_ext/1986204992/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986204992/drv_ethmac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1986204992/drv_ethmac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1986204992/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/1986204992/drv_ethmac.o ../../../../../../../../microchip/harmony/v1_02/framework/driver/ethmac/src/dynamic/drv_ethmac.c   
	
${OBJECTDIR}/_ext/1986204992/drv_ethmac_lib.o: ../../../../../../../../microchip/harmony/v1_02/framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1986204992 
	@${RM} ${OBJECTDIR}/_ext/1986204992/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986204992/drv_ethmac_lib.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1986204992/drv_ethmac_lib.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1986204992/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/1986204992/drv_ethmac_lib.o ../../../../../../../../microchip/harmony/v1_02/framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c   
	
${OBJECTDIR}/_ext/810051186/drv_ethphy.o: ../../../../../../../../microchip/harmony/v1_02/framework/driver/ethphy/src/dynamic/drv_ethphy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/810051186 
	@${RM} ${OBJECTDIR}/_ext/810051186/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/810051186/drv_ethphy.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/810051186/drv_ethphy.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/810051186/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/810051186/drv_ethphy.o ../../../../../../../../microchip/harmony/v1_02/framework/driver/ethphy/src/dynamic/drv_ethphy.c   
	
${OBJECTDIR}/_ext/810051186/drv_extphy_smsc8740.o: ../../../../../../../../microchip/harmony/v1_02/framework/driver/ethphy/src/dynamic/drv_extphy_smsc8740.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/810051186 
	@${RM} ${OBJECTDIR}/_ext/810051186/drv_extphy_smsc8740.o.d 
	@${RM} ${OBJECTDIR}/_ext/810051186/drv_extphy_smsc8740.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/810051186/drv_extphy_smsc8740.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/810051186/drv_extphy_smsc8740.o.d" -o ${OBJECTDIR}/_ext/810051186/drv_extphy_smsc8740.o ../../../../../../../../microchip/harmony/v1_02/framework/driver/ethphy/src/dynamic/drv_extphy_smsc8740.c   
	
${OBJECTDIR}/_ext/304478105/drv_tmr.o: ../../../../../../../../microchip/harmony/v1_02/framework/driver/tmr/src/dynamic/drv_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/304478105 
	@${RM} ${OBJECTDIR}/_ext/304478105/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/304478105/drv_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/304478105/drv_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/304478105/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/304478105/drv_tmr.o ../../../../../../../../microchip/harmony/v1_02/framework/driver/tmr/src/dynamic/drv_tmr.c   
	
${OBJECTDIR}/_ext/335806368/sys_devcon.o: ../../../../../../../../microchip/harmony/v1_02/framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/335806368 
	@${RM} ${OBJECTDIR}/_ext/335806368/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/335806368/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/335806368/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/335806368/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/335806368/sys_devcon.o ../../../../../../../../microchip/harmony/v1_02/framework/system/devcon/src/sys_devcon.c   
	
${OBJECTDIR}/_ext/335806368/sys_devcon_pic32mx.o: ../../../../../../../../microchip/harmony/v1_02/framework/system/devcon/src/sys_devcon_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/335806368 
	@${RM} ${OBJECTDIR}/_ext/335806368/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/335806368/sys_devcon_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/335806368/sys_devcon_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/335806368/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/335806368/sys_devcon_pic32mx.o ../../../../../../../../microchip/harmony/v1_02/framework/system/devcon/src/sys_devcon_pic32mx.c   
	
${OBJECTDIR}/_ext/1055666758/sys_int_pic32.o: ../../../../../../../../microchip/harmony/v1_02/framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1055666758 
	@${RM} ${OBJECTDIR}/_ext/1055666758/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055666758/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1055666758/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1055666758/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1055666758/sys_int_pic32.o ../../../../../../../../microchip/harmony/v1_02/framework/system/int/src/sys_int_pic32.c   
	
${OBJECTDIR}/_ext/1237536663/sys_ports.o: ../../../../../../../../microchip/harmony/v1_02/framework/system/ports/src/sys_ports.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1237536663 
	@${RM} ${OBJECTDIR}/_ext/1237536663/sys_ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1237536663/sys_ports.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1237536663/sys_ports.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1237536663/sys_ports.o.d" -o ${OBJECTDIR}/_ext/1237536663/sys_ports.o ../../../../../../../../microchip/harmony/v1_02/framework/system/ports/src/sys_ports.c   
	
${OBJECTDIR}/_ext/323145514/sys_random.o: ../../../../../../../../microchip/harmony/v1_02/framework/system/random/src/sys_random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/323145514 
	@${RM} ${OBJECTDIR}/_ext/323145514/sys_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/323145514/sys_random.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/323145514/sys_random.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/323145514/sys_random.o.d" -o ${OBJECTDIR}/_ext/323145514/sys_random.o ../../../../../../../../microchip/harmony/v1_02/framework/system/random/src/sys_random.c   
	
${OBJECTDIR}/_ext/346722522/sys_reset.o: ../../../../../../../../microchip/harmony/v1_02/framework/system/reset/src/sys_reset.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/346722522 
	@${RM} ${OBJECTDIR}/_ext/346722522/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/346722522/sys_reset.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/346722522/sys_reset.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/346722522/sys_reset.o.d" -o ${OBJECTDIR}/_ext/346722522/sys_reset.o ../../../../../../../../microchip/harmony/v1_02/framework/system/reset/src/sys_reset.c   
	
${OBJECTDIR}/_ext/2097170832/sys_tmr.o: ../../../../../../../../microchip/harmony/v1_02/framework/system/tmr/src/sys_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2097170832 
	@${RM} ${OBJECTDIR}/_ext/2097170832/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/2097170832/sys_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2097170832/sys_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/2097170832/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/2097170832/sys_tmr.o ../../../../../../../../microchip/harmony/v1_02/framework/system/tmr/src/sys_tmr.c   
	
${OBJECTDIR}/_ext/1144052859/tcp.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/tcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/tcp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/tcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1144052859/tcp.o.d" -o ${OBJECTDIR}/_ext/1144052859/tcp.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcp.c   
	
${OBJECTDIR}/_ext/1144052859/udp.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/udp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/udp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/udp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1144052859/udp.o.d" -o ${OBJECTDIR}/_ext/1144052859/udp.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/udp.c   
	
${OBJECTDIR}/_ext/1144052859/arp.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/arp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/arp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/arp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1144052859/arp.o.d" -o ${OBJECTDIR}/_ext/1144052859/arp.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/arp.c   
	
${OBJECTDIR}/_ext/1144052859/dhcp.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/dhcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/dhcp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/dhcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1144052859/dhcp.o.d" -o ${OBJECTDIR}/_ext/1144052859/dhcp.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/dhcp.c   
	
${OBJECTDIR}/_ext/1144052859/dns.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/dns.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/dns.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/dns.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1144052859/dns.o.d" -o ${OBJECTDIR}/_ext/1144052859/dns.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/dns.c   
	
${OBJECTDIR}/_ext/1144052859/icmp.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/icmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/icmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/icmp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/icmp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1144052859/icmp.o.d" -o ${OBJECTDIR}/_ext/1144052859/icmp.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/icmp.c   
	
${OBJECTDIR}/_ext/1144052859/nbns.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/nbns.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/nbns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/nbns.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/nbns.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1144052859/nbns.o.d" -o ${OBJECTDIR}/_ext/1144052859/nbns.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/nbns.c   
	
${OBJECTDIR}/_ext/1144052859/zero_conf_helper.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/zero_conf_helper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/zero_conf_helper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/zero_conf_helper.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/zero_conf_helper.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1144052859/zero_conf_helper.o.d" -o ${OBJECTDIR}/_ext/1144052859/zero_conf_helper.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/zero_conf_helper.c   
	
${OBJECTDIR}/_ext/1144052859/zero_conf_link_local.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/zero_conf_link_local.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/zero_conf_link_local.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/zero_conf_link_local.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/zero_conf_link_local.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1144052859/zero_conf_link_local.o.d" -o ${OBJECTDIR}/_ext/1144052859/zero_conf_link_local.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/zero_conf_link_local.c   
	
${OBJECTDIR}/_ext/1144052859/tcpip_announce.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/tcpip_announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/tcpip_announce.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/tcpip_announce.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1144052859/tcpip_announce.o.d" -o ${OBJECTDIR}/_ext/1144052859/tcpip_announce.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_announce.c   
	
${OBJECTDIR}/_ext/1144052859/tcpip_commands.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_commands.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/tcpip_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/tcpip_commands.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/tcpip_commands.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1144052859/tcpip_commands.o.d" -o ${OBJECTDIR}/_ext/1144052859/tcpip_commands.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_commands.c   
	
${OBJECTDIR}/_ext/1997815295/big_int.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/common/big_int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1997815295 
	@${RM} ${OBJECTDIR}/_ext/1997815295/big_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1997815295/big_int.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1997815295/big_int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1997815295/big_int.o.d" -o ${OBJECTDIR}/_ext/1997815295/big_int.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/common/big_int.c   
	
${OBJECTDIR}/_ext/1997815295/hashes.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/common/hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1997815295 
	@${RM} ${OBJECTDIR}/_ext/1997815295/hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1997815295/hashes.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1997815295/hashes.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1997815295/hashes.o.d" -o ${OBJECTDIR}/_ext/1997815295/hashes.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/common/hashes.c   
	
${OBJECTDIR}/_ext/1997815295/helpers.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/common/helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1997815295 
	@${RM} ${OBJECTDIR}/_ext/1997815295/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1997815295/helpers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1997815295/helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1997815295/helpers.o.d" -o ${OBJECTDIR}/_ext/1997815295/helpers.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/common/helpers.c   
	
${OBJECTDIR}/_ext/1997815295/lfsr.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/common/lfsr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1997815295 
	@${RM} ${OBJECTDIR}/_ext/1997815295/lfsr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1997815295/lfsr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1997815295/lfsr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1997815295/lfsr.o.d" -o ${OBJECTDIR}/_ext/1997815295/lfsr.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/common/lfsr.c   
	
${OBJECTDIR}/_ext/1144052859/hash_fnv.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/hash_fnv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/hash_fnv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/hash_fnv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1144052859/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/1144052859/hash_fnv.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/hash_fnv.c   
	
${OBJECTDIR}/_ext/1144052859/oahash.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/oahash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/oahash.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/oahash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1144052859/oahash.o.d" -o ${OBJECTDIR}/_ext/1144052859/oahash.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/oahash.c   
	
${OBJECTDIR}/_ext/1144052859/tcpip_heap_alloc.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_heap_alloc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/tcpip_heap_alloc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/tcpip_heap_alloc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1144052859/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/1144052859/tcpip_heap_alloc.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_heap_alloc.c   
	
${OBJECTDIR}/_ext/1144052859/tcpip_helpers.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/tcpip_helpers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/tcpip_helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1144052859/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/1144052859/tcpip_helpers.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_helpers.c   
	
${OBJECTDIR}/_ext/1144052859/tcpip_manager.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/tcpip_manager.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/tcpip_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1144052859/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/1144052859/tcpip_manager.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_manager.c   
	
${OBJECTDIR}/_ext/1144052859/tcpip_notify.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_notify.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/tcpip_notify.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/tcpip_notify.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1144052859/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/1144052859/tcpip_notify.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_notify.c   
	
${OBJECTDIR}/_ext/1144052859/tcpip_packet.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_packet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/tcpip_packet.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/tcpip_packet.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1144052859/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/1144052859/tcpip_packet.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/tcpip_packet.c   
	
${OBJECTDIR}/_ext/1829665213/system_debug.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/system/system_debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1829665213 
	@${RM} ${OBJECTDIR}/_ext/1829665213/system_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1829665213/system_debug.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1829665213/system_debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1829665213/system_debug.o.d" -o ${OBJECTDIR}/_ext/1829665213/system_debug.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/system/system_debug.c   
	
${OBJECTDIR}/_ext/918699391/usart.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/system/drivers/usart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/918699391 
	@${RM} ${OBJECTDIR}/_ext/918699391/usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/918699391/usart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/918699391/usart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/918699391/usart.o.d" -o ${OBJECTDIR}/_ext/918699391/usart.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/system/drivers/usart.c   
	
${OBJECTDIR}/_ext/1829665213/system_command.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/system/system_command.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1829665213 
	@${RM} ${OBJECTDIR}/_ext/1829665213/system_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/1829665213/system_command.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1829665213/system_command.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1829665213/system_command.o.d" -o ${OBJECTDIR}/_ext/1829665213/system_command.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/system/system_command.c   
	
${OBJECTDIR}/_ext/1144052859/ipv4.o: ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/ipv4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1144052859 
	@${RM} ${OBJECTDIR}/_ext/1144052859/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1144052859/ipv4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1144052859/ipv4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1144052859/ipv4.o.d" -o ${OBJECTDIR}/_ext/1144052859/ipv4.o ../../../../../../../../microchip/harmony/v1_02/framework/tcpip/src/ipv4.c   
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c   
	
${OBJECTDIR}/_ext/639803181/sys_clk_static.o: ../src/system_config/default/framework/system/clk/src/sys_clk_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/639803181 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_static.o ../src/system_config/default/framework/system/clk/src/sys_clk_static.c   
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/822048611 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c   
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1688732426 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c   
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1688732426 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c   
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c   
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1688732426 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../../../../../../../../microchip/harmony/v1_02/framework" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/HarmonyTestApp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../../../microchip/harmony/v1_02/bin/framework/peripheral/PIC32MX795F512L_peripherals.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_REAL_ICE=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/HarmonyTestApp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\..\..\microchip\harmony\v1_02\bin\framework\peripheral\PIC32MX795F512L_peripherals.a       -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1,--defsym=_min_heap_size=44960,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/HarmonyTestApp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../../../microchip/harmony/v1_02/bin/framework/peripheral/PIC32MX795F512L_peripherals.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/HarmonyTestApp.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\..\..\microchip\harmony\v1_02\bin\framework\peripheral\PIC32MX795F512L_peripherals.a      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=44960,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/HarmonyTestApp.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
