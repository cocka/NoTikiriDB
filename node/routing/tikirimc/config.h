#ifndef __TIKIRIMC_CONFIG_H__
#define __TIKIRIMC_CONFIG_H__

#include "contiki.h"

/**
 *  CONFIGURATION OPTIONS FOR TIKIRIMC BEACON PROCESS
 */

#define BEACON_MESSAGE_INTERVAL_INIT 5 * CLOCK_SECOND
#define BEACON_MESSAGE_INTERVAL_CONVERGED 30 * CLOCK_SECOND
#define MAX_ROUTING_ENTRIES 10
#define ROUTING_ENTRY_TIMEOUT 540 * CLOCK_SECOND
#define PARENT_ENTRY_TIMEOUT 540 * CLOCK_SECOND

#define SEQ_ENTRY_TIMEOUT 300 * CLOCK_SECOND

#define CONTROL_PROCESS_WAIT_TIME 5 * CLOCK_SECOND
#define CONTROL_PROCESS_INIT_WAIT_TIME 20 * CLOCK_SECOND
#define CONTROL_PROCESS_LEAF_WAIT_TIME CLOCK_SECOND
#define CONTROL_PROCESS_ROOT_WAIT_TIME CLOCK_SECOND
#define CONTROL_PROCESS_SUB_ROOT_WAIT_TIME CLOCK_SECOND

#define COMM_COST_ROOT_WEIGHT 5
#define COMM_COST_SUB_ROOT_WEIGHT 3
#define COMM_COST_LEAF_WEIGHT 1
#define COMM_COST_INIT_WEIGHT 2

#define MAX_COMM_COST 63
#define MAX_RES_COST 255

#define MAX_MULTICAST_GROUPS 10

#define MAX_SEQ_ENTRIES 20
#define START_NETWORK_COUNTER_VALUE (540 * CLOCK_SECOND) / (CONTROL_PROCESS_WAIT_TIME)

#define MAX_TTL 25
#define MULTICAST_GROUP_TIMEOUT 10 * 60 * CLOCK_SECOND


#endif /* __TIKIRIMC_CONFIG_H__ */
