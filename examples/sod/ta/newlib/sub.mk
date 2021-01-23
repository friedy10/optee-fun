cflags-y += -Wno-sign-compare
cflags-y += -Wno-parentheses
cflags-remove-y += -Wcast-align

srcs-y += abs.c
srcs-y += bcmp.c
srcs-y += memchr.c
srcs-y += memcmp.c
srcs-y += memcpy.c
ifeq (s,$(CFG_CC_OPT_LEVEL))
cflags-memcpy.c-y += -O2
endif
cflags-memcpy.c-y += $(call cc-option,-fno-tree-loop-distribute-patterns)
srcs-y += memmove.c
cflags-memmove.c-y += $(call cc-option,-fno-tree-loop-distribute-patterns)
srcs-y += memset.c
cflags-memset.c-y += $(call cc-option,-fno-tree-loop-distribute-patterns)
srcs-y += strchr.c
srcs-y += strcmp.c
srcs-y += strcpy.c
srcs-y += strlen.c
srcs-y += strncmp.c
srcs-y += strncpy.c
srcs-y += strnlen.c
srcs-y += strrchr.c
srcs-y += strstr.c
srcs-y += strtoul.c

# MATH STUFF

srcs-y += acos.c
srcs-y += acosf.c
srcs-y += acosh.c
srcs-y += acoshf.c
srcs-y += acoshl.c
srcs-y += acosl.c
srcs-y += asin.c
srcs-y += asinf.c
srcs-y += asinh.c
srcs-y += asinhf.c
srcs-y += asinhl.c
srcs-y += asinl.c
srcs-y += atan2.c
srcs-y += atan2f.c
srcs-y += atan2l.c
srcs-y += atan.c
srcs-y += atanf.c
srcs-y += atanh.c
srcs-y += atanhf.c
srcs-y += atanhl.c
srcs-y += atanl.c
srcs-y += cbrt.c
srcs-y += cbrtf.c
srcs-y += cbrtl.c
srcs-y += ceil.c
srcs-y += ceilf.c
srcs-y += ceill.c
srcs-y += copysign.c
srcs-y += copysignf.c
srcs-y += copysignl.c
srcs-y += __cos.c
srcs-y += cos.c
srcs-y += __cosdf.c
srcs-y += cosf.c
srcs-y += cosh.c
srcs-y += coshf.c
srcs-y += coshl.c
srcs-y += __cosl.c
srcs-y += cosl.c
srcs-y += erf.c
srcs-y += erff.c
srcs-y += erfl.c
srcs-y += exp10.c
srcs-y += exp10f.c
srcs-y += exp10l.c
srcs-y += exp2.c
srcs-y += exp2f.c
srcs-y += exp2l.c
srcs-y += exp.c
srcs-y += expf.c
srcs-y += expl.c
srcs-y += expm1.c
srcs-y += expm1f.c
srcs-y += expm1l.c
srcs-y += __expo2.c
srcs-y += __expo2f.c
srcs-y += fabs.c
srcs-y += fabsf.c
srcs-y += fabsl.c
srcs-y += fdim.c
srcs-y += fdimf.c
srcs-y += fdiml.c
srcs-y += finite.c
srcs-y += finitef.c
srcs-y += floor.c
srcs-y += floorf.c
srcs-y += floorl.c
srcs-y += fma.c
srcs-y += fmaf.c
srcs-y += fmal.c
srcs-y += fmax.c
srcs-y += fmaxf.c
srcs-y += fmaxl.c
srcs-y += fmin.c
srcs-y += fminf.c
srcs-y += fminl.c
srcs-y += fmod.c
srcs-y += fmodf.c
srcs-y += fmodl.c
srcs-y += __fpclassify.c
srcs-y += __fpclassifyf.c
srcs-y += __fpclassifyl.c
srcs-y += frexp.c
srcs-y += frexpf.c
srcs-y += frexpl.c
srcs-y += hypot.c
srcs-y += hypotf.c
srcs-y += hypotl.c
srcs-y += ilogb.c
srcs-y += ilogbf.c
srcs-y += ilogbl.c
srcs-y += __invtrigl.c
srcs-y += j0.c
srcs-y += j0f.c
srcs-y += j1.c
srcs-y += j1f.c
srcs-y += jn.c
srcs-y += jnf.c
srcs-y += ldexp.c
srcs-y += ldexpf.c
srcs-y += ldexpl.c
srcs-y += lgamma.c
srcs-y += lgammaf.c
srcs-y += lgammaf_r.c
srcs-y += lgammal.c
srcs-y += lgamma_r.c
srcs-y += llrint.c
srcs-y += llrintf.c
srcs-y += llrintl.c
srcs-y += llround.c
srcs-y += llroundf.c
srcs-y += llroundl.c
srcs-y += log10.c
srcs-y += log10f.c
srcs-y += log10l.c
srcs-y += log1p.c
srcs-y += log1pf.c
srcs-y += log1pl.c
srcs-y += log2.c
srcs-y += log2f.c
srcs-y += log2l.c
srcs-y += logb.c
srcs-y += logbf.c
srcs-y += logbl.c
srcs-y += log.c
srcs-y += logf.c
srcs-y += logl.c
srcs-y += lrint.c
srcs-y += lrintf.c
srcs-y += lrintl.c
srcs-y += lround.c
srcs-y += lroundf.c
srcs-y += lroundl.c
srcs-y += modf.c
srcs-y += modff.c
srcs-y += modfl.c
srcs-y += nan.c
srcs-y += nanf.c
srcs-y += nanl.c
srcs-y += nearbyint.c
srcs-y += nearbyintf.c
srcs-y += nearbyintl.c
srcs-y += nextafter.c
srcs-y += nextafterf.c
srcs-y += nextafterl.c
srcs-y += nexttoward.c
srcs-y += nexttowardf.c
srcs-y += nexttowardl.c
srcs-y += __polevll.c
srcs-y += pow.c
srcs-y += powf.c
srcs-y += powl.c
srcs-y += remainder.c
srcs-y += remainderf.c
srcs-y += remainderl.c
srcs-y += __rem_pio2.c
srcs-y += __rem_pio2f.c
srcs-y += __rem_pio2_large.c
srcs-y += __rem_pio2l.c
srcs-y += remquo.c
srcs-y += remquof.c
srcs-y += remquol.c
srcs-y += rint.c
srcs-y += rintf.c
srcs-y += rintl.c
srcs-y += round.c
srcs-y += roundf.c
srcs-y += roundl.c
srcs-y += scalb.c
srcs-y += scalbf.c
srcs-y += scalbln.c
srcs-y += scalblnf.c
srcs-y += scalblnl.c
srcs-y += scalbn.c
srcs-y += scalbnf.c
srcs-y += scalbnl.c
srcs-y += __signbit.c
srcs-y += __signbitf.c
srcs-y += __signbitl.c
srcs-y += signgam.c
srcs-y += significand.c
srcs-y += significandf.c
srcs-y += __sin.c
srcs-y += sin.c
srcs-y += sincos.c
srcs-y += sincosf.c
srcs-y += sincosl.c
srcs-y += __sindf.c
srcs-y += sinf.c
srcs-y += sinh.c
srcs-y += sinhf.c
srcs-y += sinhl.c
srcs-y += __sinl.c
srcs-y += sinl.c
srcs-y += sqrt.c
srcs-y += sqrtf.c
srcs-y += sqrtl.c
srcs-y += __tan.c
srcs-y += tan.c
srcs-y += __tandf.c
srcs-y += tanf.c
srcs-y += tanh.c
srcs-y += tanhf.c
srcs-y += tanhl.c
srcs-y += __tanl.c
srcs-y += tanl.c
srcs-y += tgamma.c
srcs-y += tgammaf.c
srcs-y += tgammal.c
srcs-y += trunc.c
srcs-y += truncf.c
srcs-y += truncl.c




