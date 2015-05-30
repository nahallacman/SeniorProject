/* 
 * File:   GenericTCPClient.h
 * Author: mainuser
 *
 * Created on May 22, 2015, 5:21 AM
 */

#ifndef GENERICTCPCLIENT_H
#define	GENERICTCPCLIENT_H

#ifdef	__cplusplus
extern "C" {
#endif


#include "../Dev/cursor.h"

//flag for TCP send and recieve cycles
int TCPCycleDoneFlag;



	static enum _GenericTCPExampleState
	{
		SM_HOME = 0,
		SM_SOCKET_OBTAINED,
		#if defined(STACK_USE_SSL_CLIENT)
    	SM_START_SSL,
    	#endif
		SM_PROCESS_RESPONSE,
		SM_DISCONNECT,
		SM_DONE
	} GenericTCPExampleState = SM_DONE;

#ifdef	__cplusplus
}
#endif

#endif	/* GENERICTCPCLIENT_H */

