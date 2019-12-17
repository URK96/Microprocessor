/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/URK96/Working/Project/FPGA/Microprocessor/project/IO.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {3U, 0U};
static unsigned int ng5[] = {4U, 0U};
static unsigned int ng6[] = {15U, 0U};
static unsigned int ng7[] = {5U, 0U};
static unsigned int ng8[] = {6U, 0U};
static unsigned int ng9[] = {8U, 0U};
static unsigned int ng10[] = {9U, 0U};
static unsigned int ng11[] = {10U, 0U};
static unsigned int ng12[] = {12U, 0U};
static unsigned int ng13[] = {14U, 0U};



static void Initial_20_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(21, ng0);

LAB2:    xsi_set_current_line(22, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 4976);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 16, 0LL);
    xsi_set_current_line(23, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 4816);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 4, 0LL);
    xsi_set_current_line(24, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 4496);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 4, 0LL);
    xsi_set_current_line(25, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 4656);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 4, 0LL);

LAB1:    return;
}

static void Cont_28_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;

LAB0:    t1 = (t0 + 6144U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 4096U);
    t3 = *((char **)t2);
    t2 = (t0 + 6808);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t2, 0, 0);
    t16 = (t0 + 6712);
    *((int *)t16) = 1;

LAB1:    return;
}

static void Always_44_2(char *t0)
{
    char t7[8];
    char t8[8];
    char t19[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;

LAB0:    t1 = (t0 + 6392U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 6728);
    *((int *)t2) = 1;
    t3 = (t0 + 6424);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(45, ng0);

LAB5:    xsi_set_current_line(46, ng0);
    t4 = (t0 + 3296U);
    t5 = *((char **)t4);
    t4 = (t0 + 4496);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 4, 0LL);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 3456U);
    t3 = *((char **)t2);
    t2 = (t0 + 4656);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 4, 0LL);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 3136U);
    t3 = *((char **)t2);

LAB6:    t2 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB31;

LAB32:
LAB34:
LAB33:    xsi_set_current_line(123, ng0);

LAB49:
LAB35:    goto LAB2;

LAB7:    xsi_set_current_line(51, ng0);

LAB36:    goto LAB35;

LAB9:    xsi_set_current_line(55, ng0);

LAB37:    xsi_set_current_line(56, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 4816);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 2976U);
    t4 = *((char **)t2);
    memset(t8, 0, 8);
    t2 = (t8 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 0);
    *((unsigned int *)t8) = t10;
    t11 = *((unsigned int *)t5);
    t12 = (t11 >> 0);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t13 & 15U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 15U);
    t15 = ((char*)((ng1)));
    xsi_vlogtype_concat(t7, 16, 16, 2U, t15, 12, t8, 4);
    t16 = (t0 + 4976);
    xsi_vlogvar_wait_assign_value(t16, t7, 0, 0, 16, 0LL);
    goto LAB35;

LAB11:    xsi_set_current_line(61, ng0);

LAB38:    xsi_set_current_line(62, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 2976U);
    t15 = *((char **)t5);
    memset(t8, 0, 8);
    t5 = (t8 + 4);
    t16 = (t15 + 4);
    t9 = *((unsigned int *)t15);
    t10 = (t9 >> 0);
    *((unsigned int *)t8) = t10;
    t11 = *((unsigned int *)t16);
    t12 = (t11 >> 0);
    *((unsigned int *)t5) = t12;
    t13 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t13 & 15U);
    t14 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t14 & 15U);
    t17 = ((char*)((ng1)));
    xsi_vlogtype_concat(t7, 16, 16, 3U, t17, 4, t8, 4, t4, 8);
    t18 = (t0 + 4976);
    xsi_vlogvar_wait_assign_value(t18, t7, 0, 0, 16, 0LL);
    goto LAB35;

LAB13:    xsi_set_current_line(66, ng0);

LAB39:    xsi_set_current_line(67, ng0);
    t4 = (t0 + 2976U);
    t5 = *((char **)t4);
    memset(t8, 0, 8);
    t4 = (t8 + 4);
    t15 = (t5 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 0);
    *((unsigned int *)t8) = t10;
    t11 = *((unsigned int *)t15);
    t12 = (t11 >> 0);
    *((unsigned int *)t4) = t12;
    t13 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t13 & 15U);
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t14 & 15U);
    t16 = ((char*)((ng1)));
    t17 = (t0 + 4976);
    t18 = (t17 + 56U);
    t20 = *((char **)t18);
    memset(t19, 0, 8);
    t21 = (t19 + 4);
    t22 = (t20 + 4);
    t23 = *((unsigned int *)t20);
    t24 = (t23 >> 8);
    *((unsigned int *)t19) = t24;
    t25 = *((unsigned int *)t22);
    t26 = (t25 >> 8);
    *((unsigned int *)t21) = t26;
    t27 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t27 & 255U);
    t28 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t28 & 255U);
    xsi_vlogtype_concat(t7, 16, 16, 3U, t19, 8, t16, 4, t8, 4);
    t29 = (t0 + 4976);
    xsi_vlogvar_wait_assign_value(t29, t7, 0, 0, 16, 0LL);
    goto LAB35;

LAB15:    xsi_set_current_line(71, ng0);

LAB40:    xsi_set_current_line(72, ng0);
    t4 = ((char*)((ng6)));
    t5 = (t0 + 4816);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 2976U);
    t4 = *((char **)t2);
    memset(t8, 0, 8);
    t2 = (t8 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 0);
    *((unsigned int *)t8) = t10;
    t11 = *((unsigned int *)t5);
    t12 = (t11 >> 0);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t13 & 15U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 15U);
    t15 = ((char*)((ng1)));
    t16 = (t0 + 4976);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memset(t19, 0, 8);
    t20 = (t19 + 4);
    t21 = (t18 + 4);
    t23 = *((unsigned int *)t18);
    t24 = (t23 >> 8);
    *((unsigned int *)t19) = t24;
    t25 = *((unsigned int *)t21);
    t26 = (t25 >> 8);
    *((unsigned int *)t20) = t26;
    t27 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t27 & 255U);
    t28 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t28 & 255U);
    xsi_vlogtype_concat(t7, 16, 16, 3U, t19, 8, t15, 4, t8, 4);
    t22 = (t0 + 4976);
    xsi_vlogvar_wait_assign_value(t22, t7, 0, 0, 16, 0LL);
    goto LAB35;

LAB17:    xsi_set_current_line(77, ng0);

LAB41:    xsi_set_current_line(78, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 2976U);
    t15 = *((char **)t5);
    memset(t8, 0, 8);
    t5 = (t8 + 4);
    t16 = (t15 + 4);
    t9 = *((unsigned int *)t15);
    t10 = (t9 >> 0);
    *((unsigned int *)t8) = t10;
    t11 = *((unsigned int *)t16);
    t12 = (t11 >> 0);
    *((unsigned int *)t5) = t12;
    t13 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t13 & 15U);
    t14 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t14 & 15U);
    t17 = ((char*)((ng1)));
    xsi_vlogtype_concat(t7, 16, 16, 3U, t17, 4, t8, 4, t4, 8);
    t18 = (t0 + 4976);
    xsi_vlogvar_wait_assign_value(t18, t7, 0, 0, 16, 0LL);
    goto LAB35;

LAB19:    xsi_set_current_line(82, ng0);

LAB42:    xsi_set_current_line(83, ng0);
    t4 = ((char*)((ng6)));
    t5 = (t0 + 4816);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(84, ng0);
    t2 = (t0 + 2976U);
    t4 = *((char **)t2);
    memset(t8, 0, 8);
    t2 = (t8 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 0);
    *((unsigned int *)t8) = t10;
    t11 = *((unsigned int *)t5);
    t12 = (t11 >> 0);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t13 & 255U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 255U);
    t15 = (t0 + 4976);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memset(t19, 0, 8);
    t18 = (t19 + 4);
    t20 = (t17 + 4);
    t23 = *((unsigned int *)t17);
    t24 = (t23 >> 8);
    *((unsigned int *)t19) = t24;
    t25 = *((unsigned int *)t20);
    t26 = (t25 >> 8);
    *((unsigned int *)t18) = t26;
    t27 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t27 & 255U);
    t28 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t28 & 255U);
    xsi_vlogtype_concat(t7, 16, 16, 2U, t19, 8, t8, 8);
    t21 = (t0 + 4976);
    xsi_vlogvar_wait_assign_value(t21, t7, 0, 0, 16, 0LL);
    goto LAB35;

LAB21:    xsi_set_current_line(88, ng0);

LAB43:    xsi_set_current_line(89, ng0);
    t4 = ((char*)((ng9)));
    t5 = (t0 + 4816);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(90, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 2976U);
    t5 = *((char **)t4);
    memset(t8, 0, 8);
    t4 = (t8 + 4);
    t15 = (t5 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 0);
    *((unsigned int *)t8) = t10;
    t11 = *((unsigned int *)t15);
    t12 = (t11 >> 0);
    *((unsigned int *)t4) = t12;
    t13 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t13 & 15U);
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t14 & 15U);
    xsi_vlogtype_concat(t7, 16, 16, 2U, t8, 4, t2, 12);
    t16 = (t0 + 4976);
    xsi_vlogvar_wait_assign_value(t16, t7, 0, 0, 16, 0LL);
    goto LAB35;

LAB23:    xsi_set_current_line(94, ng0);

LAB44:    xsi_set_current_line(95, ng0);
    t4 = ((char*)((ng5)));
    t5 = (t0 + 4816);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(96, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 2976U);
    t5 = *((char **)t4);
    memset(t8, 0, 8);
    t4 = (t8 + 4);
    t15 = (t5 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 0);
    *((unsigned int *)t8) = t10;
    t11 = *((unsigned int *)t15);
    t12 = (t11 >> 0);
    *((unsigned int *)t4) = t12;
    t13 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t13 & 15U);
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t14 & 15U);
    t16 = (t0 + 4976);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memset(t19, 0, 8);
    t20 = (t19 + 4);
    t21 = (t18 + 4);
    t23 = *((unsigned int *)t18);
    t24 = (t23 >> 12);
    *((unsigned int *)t19) = t24;
    t25 = *((unsigned int *)t21);
    t26 = (t25 >> 12);
    *((unsigned int *)t20) = t26;
    t27 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t27 & 15U);
    t28 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t28 & 15U);
    xsi_vlogtype_concat(t7, 16, 16, 3U, t19, 4, t8, 4, t2, 8);
    t22 = (t0 + 4976);
    xsi_vlogvar_wait_assign_value(t22, t7, 0, 0, 16, 0LL);
    goto LAB35;

LAB25:    xsi_set_current_line(100, ng0);

LAB45:    xsi_set_current_line(101, ng0);
    t4 = ((char*)((ng3)));
    t5 = (t0 + 4816);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(102, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 2976U);
    t5 = *((char **)t4);
    memset(t8, 0, 8);
    t4 = (t8 + 4);
    t15 = (t5 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 0);
    *((unsigned int *)t8) = t10;
    t11 = *((unsigned int *)t15);
    t12 = (t11 >> 0);
    *((unsigned int *)t4) = t12;
    t13 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t13 & 15U);
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t14 & 15U);
    t16 = (t0 + 4976);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memset(t19, 0, 8);
    t20 = (t19 + 4);
    t21 = (t18 + 4);
    t23 = *((unsigned int *)t18);
    t24 = (t23 >> 8);
    *((unsigned int *)t19) = t24;
    t25 = *((unsigned int *)t21);
    t26 = (t25 >> 8);
    *((unsigned int *)t20) = t26;
    t27 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t27 & 255U);
    t28 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t28 & 255U);
    xsi_vlogtype_concat(t7, 16, 16, 3U, t19, 8, t8, 4, t2, 4);
    t22 = (t0 + 4976);
    xsi_vlogvar_wait_assign_value(t22, t7, 0, 0, 16, 0LL);
    goto LAB35;

LAB27:    xsi_set_current_line(106, ng0);

LAB46:    xsi_set_current_line(107, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t0 + 4816);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(108, ng0);
    t2 = (t0 + 2976U);
    t4 = *((char **)t2);
    memset(t8, 0, 8);
    t2 = (t8 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 0);
    *((unsigned int *)t8) = t10;
    t11 = *((unsigned int *)t5);
    t12 = (t11 >> 0);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t13 & 15U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 15U);
    t15 = (t0 + 4976);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memset(t19, 0, 8);
    t18 = (t19 + 4);
    t20 = (t17 + 4);
    t23 = *((unsigned int *)t17);
    t24 = (t23 >> 4);
    *((unsigned int *)t19) = t24;
    t25 = *((unsigned int *)t20);
    t26 = (t25 >> 4);
    *((unsigned int *)t18) = t26;
    t27 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t27 & 4095U);
    t28 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t28 & 4095U);
    xsi_vlogtype_concat(t7, 16, 16, 2U, t19, 12, t8, 4);
    t21 = (t0 + 4976);
    xsi_vlogvar_wait_assign_value(t21, t7, 0, 0, 16, 0LL);
    goto LAB35;

LAB29:    xsi_set_current_line(112, ng0);

LAB47:    xsi_set_current_line(113, ng0);
    t4 = (t0 + 2976U);
    t5 = *((char **)t4);
    t4 = (t0 + 4976);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 16, 0LL);
    goto LAB35;

LAB31:    xsi_set_current_line(117, ng0);

LAB48:    xsi_set_current_line(118, ng0);
    t4 = ((char*)((ng6)));
    t5 = (t0 + 4816);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    goto LAB35;

}


extern void work_m_00000000004253622141_4126067407_init()
{
	static char *pe[] = {(void *)Initial_20_0,(void *)Cont_28_1,(void *)Always_44_2};
	xsi_register_didat("work_m_00000000004253622141_4126067407", "isim/TB_Top_isim_beh.exe.sim/work/m_00000000004253622141_4126067407.didat");
	xsi_register_executes(pe);
}
