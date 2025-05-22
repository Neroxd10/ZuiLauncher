.class public Lcom/zui/launcher/anim/Interpolators;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/anim/Interpolators$OvershootParams;
    }
.end annotation


# static fields
.field public static final ACCEL:Landroid/view/animation/Interpolator;

.field public static final ACCELERATED_EASE:Landroid/view/animation/Interpolator;

.field public static final ACCEL_0_5:Landroid/view/animation/Interpolator;

.field public static final ACCEL_0_75:Landroid/view/animation/Interpolator;

.field public static final ACCEL_1_5:Landroid/view/animation/Interpolator;

.field public static final ACCEL_2:Landroid/view/animation/Interpolator;

.field public static final ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

.field public static final AGGRESSIVE_EASE:Landroid/view/animation/Interpolator;

.field public static final AGGRESSIVE_EASE_IN_OUT:Landroid/view/animation/Interpolator;

.field public static final ALPHA_IN:Landroid/view/animation/Interpolator;

.field public static final ALPHA_OUT:Landroid/view/animation/Interpolator;

.field public static final DEACCEL:Landroid/view/animation/Interpolator;

.field public static final DEACCEL_1_5:Landroid/view/animation/Interpolator;

.field public static final DEACCEL_1_7:Landroid/view/animation/Interpolator;

.field public static final DEACCEL_2:Landroid/view/animation/Interpolator;

.field public static final DEACCEL_2_5:Landroid/view/animation/Interpolator;

.field public static final DEACCEL_3:Landroid/view/animation/Interpolator;

.field public static final DECELERATED_EASE:Landroid/view/animation/Interpolator;

.field public static final EXAGGERATED_EASE:Landroid/view/animation/Interpolator;

.field public static final FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field public static final FINAL_FRAME:Landroid/view/animation/Interpolator;

.field public static final INSTANT:Landroid/view/animation/Interpolator;

.field public static final LINEAR:Landroid/view/animation/Interpolator;

.field public static final OVERSHOOT_1_2:Landroid/view/animation/Interpolator;

.field public static final OVERSHOOT_1_7:Landroid/view/animation/Interpolator;

.field public static final SCROLL:Landroid/view/animation/Interpolator;

.field public static final SCROLL_CUBIC:Landroid/view/animation/Interpolator;

.field public static final SEARCH_DECELERATE_QUINT:Landroid/view/animation/Interpolator;

.field public static final SEARCH_LAUNCHER_ICON_SCALE:Landroid/view/animation/Interpolator;

.field public static final TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final TOUCH_RESPONSE_INTERPOLATOR_ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

.field public static final ZOOM_IN:Landroid/view/animation/Interpolator;

.field public static final ZOOM_OUT:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/zui/launcher/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/zui/launcher/anim/Interpolators;->ACCEL_0_5:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/zui/launcher/anim/Interpolators;->ACCEL_0_75:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/zui/launcher/anim/Interpolators;->ACCEL_1_5:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/zui/launcher/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/zui/launcher/anim/Interpolators;->DEACCEL:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/zui/launcher/anim/Interpolators;->DEACCEL_1_5:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const v1, 0x3fd9999a    # 1.7f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/zui/launcher/anim/Interpolators;->DEACCEL_1_7:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/zui/launcher/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40200000    # 2.5f

    invoke-direct {v0, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/zui/launcher/anim/Interpolators;->DEACCEL_2_5:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-direct {v0, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/zui/launcher/anim/Interpolators;->DEACCEL_3:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/zui/launcher/anim/Interpolators;->ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ecccccd    # 0.4f

    const/4 v4, 0x0

    const v5, 0x3e4ccccd    # 0.2f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/zui/launcher/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v4, v4, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/zui/launcher/anim/Interpolators;->AGGRESSIVE_EASE:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v7, 0x3f19999a    # 0.6f

    invoke-direct {v0, v7, v4, v3, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/zui/launcher/anim/Interpolators;->AGGRESSIVE_EASE_IN_OUT:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/zui/launcher/anim/Interpolators;->DECELERATED_EASE:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v3, v4, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/zui/launcher/anim/Interpolators;->ACCELERATED_EASE:Landroid/view/animation/Interpolator;

    sget-object v0, Lcom/zui/launcher/anim/n;->a:Lcom/zui/launcher/anim/n;

    sput-object v0, Lcom/zui/launcher/anim/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    sget-object v0, Lcom/zui/launcher/anim/k;->a:Lcom/zui/launcher/anim/k;

    sput-object v0, Lcom/zui/launcher/anim/Interpolators;->FINAL_FRAME:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/zui/launcher/anim/Interpolators;->SEARCH_DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/zui/launcher/anim/Interpolators;->SEARCH_LAUNCHER_ICON_SCALE:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v3, v4, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/zui/launcher/anim/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v4, v4, v2, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/zui/launcher/anim/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, v4, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const v8, 0x3d4ccccd    # 0.05f

    const/4 v9, 0x0

    const v10, 0x3e088872

    const v11, 0x3da3d70a    # 0.08f

    const v12, 0x3e2aaa7e

    const v13, 0x3ecccccd    # 0.4f

    move-object v7, v0

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const v8, 0x3e666666    # 0.225f

    const v9, 0x3f70a3d7    # 0.94f

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v0}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    sput-object v2, Lcom/zui/launcher/anim/Interpolators;->EXAGGERATED_EASE:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x3f99999a    # 1.2f

    invoke-direct {v0, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    sput-object v0, Lcom/zui/launcher/anim/Interpolators;->OVERSHOOT_1_2:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    sput-object v0, Lcom/zui/launcher/anim/Interpolators;->OVERSHOOT_1_7:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v4, v2, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/zui/launcher/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    sget-object v0, Lcom/zui/launcher/anim/l;->a:Lcom/zui/launcher/anim/l;

    sput-object v0, Lcom/zui/launcher/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR_ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/zui/launcher/anim/Interpolators$a;

    invoke-direct {v0}, Lcom/zui/launcher/anim/Interpolators$a;-><init>()V

    sput-object v0, Lcom/zui/launcher/anim/Interpolators;->ZOOM_IN:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/zui/launcher/anim/Interpolators$b;

    invoke-direct {v0}, Lcom/zui/launcher/anim/Interpolators$b;-><init>()V

    sput-object v0, Lcom/zui/launcher/anim/Interpolators;->ZOOM_OUT:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/zui/launcher/anim/Interpolators$c;

    invoke-direct {v0}, Lcom/zui/launcher/anim/Interpolators$c;-><init>()V

    sput-object v0, Lcom/zui/launcher/anim/Interpolators;->SCROLL:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/zui/launcher/anim/Interpolators$d;

    invoke-direct {v0}, Lcom/zui/launcher/anim/Interpolators$d;-><init>()V

    sput-object v0, Lcom/zui/launcher/anim/Interpolators;->SCROLL_CUBIC:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(FFLandroid/view/animation/Interpolator;F)F
    .locals 3

    cmpl-float v0, p3, p0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez v0, :cond_1

    cmpl-float v0, p3, p1

    if-nez v0, :cond_1

    cmpl-float p0, p3, v2

    if-nez p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    cmpg-float v0, p3, p0

    if-gez v0, :cond_2

    return v2

    :cond_2
    cmpl-float v0, p3, p1

    if-lez v0, :cond_3

    return v1

    :cond_3
    sub-float/2addr p3, p0

    sub-float/2addr p1, p0

    div-float/2addr p3, p1

    invoke-interface {p2, p3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method

.method static synthetic b(Landroid/view/animation/Interpolator;FFF)F
    .locals 0

    invoke-interface {p0, p3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    invoke-static {p0, p1, p2}, Lcom/zui/launcher/Utilities;->mapRange(FFF)F

    move-result p0

    return p0
.end method

.method static synthetic c(F)F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public static clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;
    .locals 2

    cmpg-float v0, p2, p1

    if-ltz v0, :cond_0

    new-instance v0, Lcom/zui/launcher/anim/m;

    invoke-direct {v0, p1, p2, p0}, Lcom/zui/launcher/anim/m;-><init>(FFLandroid/view/animation/Interpolator;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, p2

    const-string p1, "upperBound (%f) must be greater than lowerBound (%f)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic d(F)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method static synthetic e(F)F
    .locals 2

    sget-object v0, Lcom/zui/launcher/anim/Interpolators;->ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    sget-object v1, Lcom/zui/launcher/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    invoke-interface {v0, p0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method

.method public static mapToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;
    .locals 1

    new-instance v0, Lcom/zui/launcher/anim/i;

    invoke-direct {v0, p0, p1, p2}, Lcom/zui/launcher/anim/i;-><init>(Landroid/view/animation/Interpolator;FF)V

    return-object v0
.end method

.method public static overshootInterpolatorForVelocity(F)Landroid/view/animation/Interpolator;
    .locals 2

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-direct {v0, p0}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    return-object v0
.end method

.method public static scrollInterpolatorForVelocity(F)Landroid/view/animation/Interpolator;
    .locals 1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    sget-object p0, Lcom/zui/launcher/anim/Interpolators;->SCROLL:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/zui/launcher/anim/Interpolators;->SCROLL_CUBIC:Landroid/view/animation/Interpolator;

    :goto_0
    return-object p0
.end method
