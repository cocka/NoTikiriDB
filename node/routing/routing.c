/*
 * Copyright (c) 2009, Wireless Ad-Hoc Sensor Network Laboratory
 * University of Colombo School of Computting.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the Institute nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE INSTITUTE AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE INSTITUTE OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 *
 * $Id: tikiriarp.c,v 0.0 2009/09/26 Exp $
 */

/**
 * \file
 *         Tikiri Ad-hoc Routing Protocol Source file
 * \author
 *         Tharindu Nanayakkara <tharindu.ucsc@gmail.com>
 */

#include "net/rime.h"
#include "routing.h"
#include <string.h>
#include <stddef.h> /* For offsetof */

#define DEBUG 0
#if DEBUG
#include <stdio.h>
#define PRINTF(...) printf(__VA_ARGS__)
#else
#define PRINTF(...)
#endif


/*---------------------------------------------------------------------------*/
static void
broadcast_recv(struct broadcast_conn *c, const rimeaddr_t *from)
{

  printf("%d.%d: bc: recv_from_broadcast, receiver %d.%d\n", rimeaddr_node_addr.u8[0],
	rimeaddr_node_addr.u8[1], from->u8[0], from->u8[1]);

  struct routing_conn *rconn = (struct routing_conn *)((char *)c - offsetof(struct routing_conn, c));

  if(rconn->u->recv) {
    rconn->u->recv(rconn, from);
  }

/*  
  PRINTF("%d.%d: bc: recv_from_broadcast, receiver %d.%d\n",
	 rimeaddr_node_addr.u8[0], rimeaddr_node_addr.u8[1],
	 from->u8[0],
	 from->u8[1]);
  if(rconn->u->recv) {
    rconn->u->recv(rconn, from);
  }
*/

}
/*---------------------------------------------------------------------------*/
static const struct broadcast_callbacks mc = {broadcast_recv};

/*---------------------------------------------------------------------------*/
void
routing_open(struct routing_conn *c, uint16_t channel,
	     const struct routing_callbacks *u)
{
  broadcast_open(&c->c, channel, &mc);
  c->u = u;
}
/*---------------------------------------------------------------------------*/
void
routing_close(struct routing_conn *c)
{
  broadcast_close(&c->c);
}
/*---------------------------------------------------------------------------*/
int
routing_send(struct routing_conn *c, const rimeaddr_t *receiver)
{

  //PRINTF("%d.%d: tikiriarp_send to %d.%d\n",
  //	 rimeaddr_node_addr.u8[0],rimeaddr_node_addr.u8[1],
  //	 receiver->u8[0], receiver->u8[1]);

  //#Asanka:
  printf("routing_send : sending query from %d.%d to %d.%d\n", 
	rimeaddr_node_addr.u8[0],rimeaddr_node_addr.u8[1], receiver->u8[0], receiver->u8[1]);
  //return 1;  

  
  return broadcast_send(&c->c);
  
}
/*---------------------------------------------------------------------------*/

//#ASanka: added new functions

static void broadcast_recvX(struct broadcast_conn *c, const rimeaddr_t *from)
{
  printf("broadcast message received from %d.%d: '%s' size: %d \n",
         from->u8[0], from->u8[1], (char *)packetbuf_dataptr(), (int)packetbuf_datalen());
}

static const struct broadcast_callbacks broadcast_callX = {broadcast_recvX};
static struct broadcast_conn broadcastX;


void routing_openX()
{
	printf("routing_openX()\n");
	broadcast_open(&broadcastX, 129, &broadcast_callX);
}


void routing_closeX()
{
	printf("routing_closeX()\n");
}


int routing_sendX(const rimeaddr_t *receiver)
{
	//#Asanka:
	printf("routing_sendX() : sending query from %d.%d to %d.%d\n", 
	rimeaddr_node_addr.u8[0],rimeaddr_node_addr.u8[1], receiver->u8[0], receiver->u8[1]);

	broadcast_send(&broadcastX);

	return 1;  
}

void routing_recvX(const rimeaddr_t *from)
{
	printf("routing_recvX()\n");
}







/** @} */
