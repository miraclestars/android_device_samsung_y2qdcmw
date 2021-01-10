// SPDX-License-Identifier: Apache-2.0
// Copyright (C) 2020 The LineageOS Project

#ifndef _BDROID_BUILDCFG_H
#define _BDROID_BUILDCFG_H

#define BTM_DEF_LOCAL_NAME "Galaxy S20+"
// Disables read remote device feature
#define MAX_ACL_CONNECTIONS   16
#define MAX_L2CAP_CHANNELS    16
#define BLE_VND_INCLUDED TRUE
/* Increasing SEPs to 12 from 6 to support SHO/MCast i.e. two streams per codec */
#define AVDT_NUM_SEPS 12
#define DISABLE_WBS TRUE

#endif // _BDROID_BUILDCFG_H
