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
static const char *ng0 = "E:/URK96/Working/Project/FPGA/Microprocessor/project/ALU.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static int ng4[] = {0, 0};
static int ng5[] = {7, 0};
static int ng6[] = {15, 0};
static int ng7[] = {8, 0};
static unsigned int ng8[] = {3U, 0U};
static unsigned int ng9[] = {4U, 0U};
static unsigned int ng10[] = {5U, 0U};
static unsigned int ng11[] = {6U, 0U};
static unsigned int ng12[] = {7U, 0U};



static void Initial_22_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(22, ng0);

LAB2:    xsi_set_current_line(23, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3016);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 9);
    xsi_set_current_line(24, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3176);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 16);
    xsi_set_current_line(25, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2856);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 16);

LAB1:    return;
}

static void Always_28_1(char *t0)
{
    char t7[8];
    char t10[8];
    char t13[8];
    char t42[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t8;
    char *t9;
    char *t11;
    char *t12;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    int t43;
    int t44;
    int t45;
    int t46;
    int t47;
    int t48;
    int t49;

LAB0:    t1 = (t0 + 4344U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 4664);
    *((int *)t2) = 1;
    t3 = (t0 + 4376);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(29, ng0);

LAB5:    xsi_set_current_line(30, ng0);
    t4 = (t0 + 2456U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t4, 3);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB21;

LAB22:
LAB24:
LAB23:    xsi_set_current_line(97, ng0);

LAB71:    xsi_set_current_line(98, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2856);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);

LAB25:    goto LAB2;

LAB7:    xsi_set_current_line(32, ng0);

LAB26:    xsi_set_current_line(33, ng0);
    t8 = (t0 + 2136U);
    t9 = *((char **)t8);
    t8 = ((char*)((ng1)));
    xsi_vlogtype_concat(t7, 9, 9, 2U, t8, 1, t9, 8);
    t11 = (t0 + 2296U);
    t12 = *((char **)t11);
    t11 = ((char*)((ng1)));
    xsi_vlogtype_concat(t10, 9, 9, 2U, t11, 1, t12, 8);
    memset(t13, 0, 8);
    xsi_vlog_unsigned_add(t13, 9, t7, 9, t10, 9);
    t14 = (t0 + 3016);
    xsi_vlogvar_wait_assign_value(t14, t13, 0, 0, 9, 0LL);
    xsi_set_current_line(35, ng0);
    t2 = (t0 + 3016);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t7, 0, 8);
    t8 = (t7 + 4);
    t9 = (t4 + 4);
    t15 = *((unsigned int *)t4);
    t16 = (t15 >> 8);
    t17 = (t16 & 1);
    *((unsigned int *)t7) = t17;
    t18 = *((unsigned int *)t9);
    t19 = (t18 >> 8);
    t20 = (t19 & 1);
    *((unsigned int *)t8) = t20;
    t11 = ((char*)((ng2)));
    memset(t10, 0, 8);
    t12 = (t7 + 4);
    t14 = (t11 + 4);
    t21 = *((unsigned int *)t7);
    t22 = *((unsigned int *)t11);
    t23 = (t21 ^ t22);
    t24 = *((unsigned int *)t12);
    t25 = *((unsigned int *)t14);
    t26 = (t24 ^ t25);
    t27 = (t23 | t26);
    t28 = *((unsigned int *)t12);
    t29 = *((unsigned int *)t14);
    t30 = (t28 | t29);
    t31 = (~(t30));
    t32 = (t27 & t31);
    if (t32 != 0)
        goto LAB30;

LAB27:    if (t30 != 0)
        goto LAB29;

LAB28:    *((unsigned int *)t10) = 1;

LAB30:    t34 = (t10 + 4);
    t35 = *((unsigned int *)t34);
    t36 = (~(t35));
    t37 = *((unsigned int *)t10);
    t38 = (t37 & t36);
    t39 = (t38 != 0);
    if (t39 > 0)
        goto LAB31;

LAB32:    xsi_set_current_line(40, ng0);

LAB35:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 3016);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t8 = ((char*)((ng1)));
    xsi_vlogtype_concat(t7, 16, 16, 2U, t8, 7, t4, 9);
    t9 = (t0 + 2856);
    xsi_vlogvar_wait_assign_value(t9, t7, 0, 0, 16, 0LL);

LAB33:    goto LAB25;

LAB9:    xsi_set_current_line(46, ng0);

LAB36:    xsi_set_current_line(47, ng0);
    t3 = (t0 + 2296U);
    t4 = *((char **)t3);
    t3 = (t0 + 2136U);
    t8 = *((char **)t3);
    memset(t7, 0, 8);
    t3 = (t4 + 4);
    if (*((unsigned int *)t3) != 0)
        goto LAB38;

LAB37:    t9 = (t8 + 4);
    if (*((unsigned int *)t9) != 0)
        goto LAB38;

LAB41:    if (*((unsigned int *)t4) > *((unsigned int *)t8))
        goto LAB39;

LAB40:    t12 = (t7 + 4);
    t15 = *((unsigned int *)t12);
    t16 = (~(t15));
    t17 = *((unsigned int *)t7);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB42;

LAB43:    xsi_set_current_line(52, ng0);

LAB46:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 2136U);
    t3 = *((char **)t2);
    t2 = (t0 + 2296U);
    t4 = *((char **)t2);
    memset(t7, 0, 8);
    xsi_vlog_unsigned_minus(t7, 16, t3, 8, t4, 8);
    t2 = (t0 + 2856);
    xsi_vlogvar_wait_assign_value(t2, t7, 0, 0, 16, 0LL);

LAB44:    goto LAB25;

LAB11:    xsi_set_current_line(58, ng0);

LAB47:    xsi_set_current_line(59, ng0);
    t3 = (t0 + 2296U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng4)));
    memset(t7, 0, 8);
    t8 = (t4 + 4);
    t9 = (t3 + 4);
    t15 = *((unsigned int *)t4);
    t16 = *((unsigned int *)t3);
    t17 = (t15 ^ t16);
    t18 = *((unsigned int *)t8);
    t19 = *((unsigned int *)t9);
    t20 = (t18 ^ t19);
    t21 = (t17 | t20);
    t22 = *((unsigned int *)t8);
    t23 = *((unsigned int *)t9);
    t24 = (t22 | t23);
    t25 = (~(t24));
    t26 = (t21 & t25);
    if (t26 != 0)
        goto LAB51;

LAB48:    if (t24 != 0)
        goto LAB50;

LAB49:    *((unsigned int *)t7) = 1;

LAB51:    t12 = (t7 + 4);
    t27 = *((unsigned int *)t12);
    t28 = (~(t27));
    t29 = *((unsigned int *)t7);
    t30 = (t29 & t28);
    t31 = (t30 != 0);
    if (t31 > 0)
        goto LAB52;

LAB53:    xsi_set_current_line(64, ng0);

LAB56:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 2136U);
    t3 = *((char **)t2);
    t2 = (t0 + 2296U);
    t4 = *((char **)t2);
    memset(t7, 0, 8);
    xsi_vlog_unsigned_divide(t7, 8, t3, 8, t4, 8);
    t2 = (t0 + 2856);
    t8 = (t0 + 2856);
    t9 = (t8 + 72U);
    t11 = *((char **)t9);
    t12 = ((char*)((ng5)));
    t14 = ((char*)((ng4)));
    xsi_vlog_convert_partindices(t10, t13, t42, ((int*)(t11)), 2, t12, 32, 1, t14, 32, 1);
    t33 = (t10 + 4);
    t15 = *((unsigned int *)t33);
    t6 = (!(t15));
    t34 = (t13 + 4);
    t16 = *((unsigned int *)t34);
    t43 = (!(t16));
    t44 = (t6 && t43);
    t40 = (t42 + 4);
    t17 = *((unsigned int *)t40);
    t45 = (!(t17));
    t46 = (t44 && t45);
    if (t46 == 1)
        goto LAB57;

LAB58:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 2136U);
    t3 = *((char **)t2);
    t2 = (t0 + 2296U);
    t4 = *((char **)t2);
    memset(t7, 0, 8);
    xsi_vlog_unsigned_mod(t7, 8, t3, 8, t4, 8);
    t2 = (t0 + 2856);
    t8 = (t0 + 2856);
    t9 = (t8 + 72U);
    t11 = *((char **)t9);
    t12 = ((char*)((ng6)));
    t14 = ((char*)((ng7)));
    xsi_vlog_convert_partindices(t10, t13, t42, ((int*)(t11)), 2, t12, 32, 1, t14, 32, 1);
    t33 = (t10 + 4);
    t15 = *((unsigned int *)t33);
    t6 = (!(t15));
    t34 = (t13 + 4);
    t16 = *((unsigned int *)t34);
    t43 = (!(t16));
    t44 = (t6 && t43);
    t40 = (t42 + 4);
    t17 = *((unsigned int *)t40);
    t45 = (!(t17));
    t46 = (t44 && t45);
    if (t46 == 1)
        goto LAB59;

LAB60:
LAB54:    goto LAB25;

LAB13:    xsi_set_current_line(71, ng0);

LAB61:    xsi_set_current_line(72, ng0);
    t3 = (t0 + 2136U);
    t4 = *((char **)t3);
    t3 = (t0 + 2296U);
    t8 = *((char **)t3);
    memset(t7, 0, 8);
    xsi_vlog_unsigned_multiply(t7, 16, t4, 8, t8, 8);
    t3 = (t0 + 2856);
    xsi_vlogvar_wait_assign_value(t3, t7, 0, 0, 16, 0LL);
    goto LAB25;

LAB15:    xsi_set_current_line(76, ng0);

LAB62:    xsi_set_current_line(77, ng0);
    t3 = (t0 + 2136U);
    t4 = *((char **)t3);
    t3 = (t0 + 2296U);
    t8 = *((char **)t3);
    t15 = *((unsigned int *)t4);
    t16 = *((unsigned int *)t8);
    t17 = (t15 | t16);
    *((unsigned int *)t7) = t17;
    t3 = (t4 + 4);
    t9 = (t8 + 4);
    t11 = (t7 + 4);
    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t9);
    t20 = (t18 | t19);
    *((unsigned int *)t11) = t20;
    t21 = *((unsigned int *)t11);
    t22 = (t21 != 0);
    if (t22 == 1)
        goto LAB63;

LAB64:
LAB65:    t33 = (t0 + 2856);
    xsi_vlogvar_wait_assign_value(t33, t7, 0, 0, 16, 0LL);
    goto LAB25;

LAB17:    xsi_set_current_line(81, ng0);

LAB66:    xsi_set_current_line(82, ng0);
    t3 = (t0 + 2136U);
    t4 = *((char **)t3);
    memset(t7, 0, 8);
    t3 = (t7 + 4);
    t8 = (t4 + 4);
    t15 = *((unsigned int *)t4);
    t16 = (~(t15));
    *((unsigned int *)t7) = t16;
    *((unsigned int *)t3) = 0;
    if (*((unsigned int *)t8) != 0)
        goto LAB68;

LAB67:    t21 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t21 & 65535U);
    t22 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t22 & 65535U);
    t9 = (t0 + 2856);
    xsi_vlogvar_wait_assign_value(t9, t7, 0, 0, 16, 0LL);
    goto LAB25;

LAB19:    xsi_set_current_line(86, ng0);

LAB69:    xsi_set_current_line(87, ng0);
    t3 = (t0 + 2136U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng1)));
    xsi_vlogtype_concat(t7, 16, 16, 2U, t3, 8, t4, 8);
    t8 = (t0 + 3176);
    xsi_vlogvar_wait_assign_value(t8, t7, 0, 0, 16, 0LL);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 3176);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t8 = (t0 + 2296U);
    t9 = *((char **)t8);
    memset(t7, 0, 8);
    xsi_vlog_unsigned_lshift(t7, 16, t4, 16, t9, 8);
    t8 = (t0 + 2856);
    xsi_vlogvar_wait_assign_value(t8, t7, 0, 0, 16, 0LL);
    goto LAB25;

LAB21:    xsi_set_current_line(92, ng0);

LAB70:    xsi_set_current_line(93, ng0);
    t3 = (t0 + 2136U);
    t4 = *((char **)t3);
    t3 = (t0 + 2296U);
    t8 = *((char **)t3);
    memset(t7, 0, 8);
    xsi_vlog_unsigned_rshift(t7, 16, t4, 8, t8, 8);
    t3 = (t0 + 2856);
    xsi_vlogvar_wait_assign_value(t3, t7, 0, 0, 16, 0LL);
    goto LAB25;

LAB29:    t33 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t33) = 1;
    goto LAB30;

LAB31:    xsi_set_current_line(36, ng0);

LAB34:    xsi_set_current_line(37, ng0);
    t40 = ((char*)((ng1)));
    t41 = (t0 + 2856);
    xsi_vlogvar_wait_assign_value(t41, t40, 0, 0, 16, 0LL);
    goto LAB33;

LAB38:    t11 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB40;

LAB39:    *((unsigned int *)t7) = 1;
    goto LAB40;

LAB42:    xsi_set_current_line(48, ng0);

LAB45:    xsi_set_current_line(49, ng0);
    t14 = ((char*)((ng1)));
    t33 = (t0 + 2856);
    xsi_vlogvar_wait_assign_value(t33, t14, 0, 0, 16, 0LL);
    goto LAB44;

LAB50:    t11 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB51;

LAB52:    xsi_set_current_line(60, ng0);

LAB55:    xsi_set_current_line(61, ng0);
    t14 = ((char*)((ng1)));
    t33 = (t0 + 2856);
    xsi_vlogvar_wait_assign_value(t33, t14, 0, 0, 16, 0LL);
    goto LAB54;

LAB57:    t18 = *((unsigned int *)t42);
    t47 = (t18 + 0);
    t19 = *((unsigned int *)t10);
    t20 = *((unsigned int *)t13);
    t48 = (t19 - t20);
    t49 = (t48 + 1);
    xsi_vlogvar_wait_assign_value(t2, t7, t47, *((unsigned int *)t13), t49, 0LL);
    goto LAB58;

LAB59:    t18 = *((unsigned int *)t42);
    t47 = (t18 + 0);
    t19 = *((unsigned int *)t10);
    t20 = *((unsigned int *)t13);
    t48 = (t19 - t20);
    t49 = (t48 + 1);
    xsi_vlogvar_wait_assign_value(t2, t7, t47, *((unsigned int *)t13), t49, 0LL);
    goto LAB60;

LAB63:    t23 = *((unsigned int *)t7);
    t24 = *((unsigned int *)t11);
    *((unsigned int *)t7) = (t23 | t24);
    t12 = (t4 + 4);
    t14 = (t8 + 4);
    t25 = *((unsigned int *)t12);
    t26 = (~(t25));
    t27 = *((unsigned int *)t4);
    t43 = (t27 & t26);
    t28 = *((unsigned int *)t14);
    t29 = (~(t28));
    t30 = *((unsigned int *)t8);
    t44 = (t30 & t29);
    t31 = (~(t43));
    t32 = (~(t44));
    t35 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t35 & t31);
    t36 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t36 & t32);
    goto LAB65;

LAB68:    t17 = *((unsigned int *)t7);
    t18 = *((unsigned int *)t8);
    *((unsigned int *)t7) = (t17 | t18);
    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t8);
    *((unsigned int *)t3) = (t19 | t20);
    goto LAB67;

}


extern void work_m_00000000003483943987_0886308060_init()
{
	static char *pe[] = {(void *)Initial_22_0,(void *)Always_28_1};
	xsi_register_didat("work_m_00000000003483943987_0886308060", "isim/TB_Top_isim_beh.exe.sim/work/m_00000000003483943987_0886308060.didat");
	xsi_register_executes(pe);
}
