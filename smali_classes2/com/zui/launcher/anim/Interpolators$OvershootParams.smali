.class public Lcom/zui/launcher/anim/Interpolators$OvershootParams;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/anim/Interpolators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OvershootParams"
.end annotation


# instance fields
.field public duration:J

.field public end:F

.field public interpolator:Landroid/view/animation/Interpolator;

.field public start:F


# direct methods
.method public constructor <init>(FFFFILandroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    iput p1, p0, Lcom/zui/launcher/anim/Interpolators$OvershootParams;->start:F

    int-to-float p5, p5

    mul-float/2addr p1, p5

    float-to-int p1, p1

    const v0, 0x3f666666    # 0.9f

    mul-float/2addr v0, p4

    invoke-static {p6}, Lcom/zui/launcher/util/DefaultDisplay;->getSingleFrameMs(Landroid/content/Context;)I

    move-result p6

    int-to-float p6, p6

    mul-float/2addr v0, p6

    div-float/2addr v0, p5

    const/high16 p6, 0x40000000    # 2.0f

    div-float/2addr v0, p6

    const p6, 0x3ca3d70a    # 0.02f

    const v1, 0x3e19999a    # 0.15f

    invoke-static {v0, p6, v1}, Lcom/zui/launcher/Utilities;->boundToRange(FFF)F

    move-result p6

    add-float/2addr p2, p6

    iput p2, p0, Lcom/zui/launcher/anim/Interpolators$OvershootParams;->end:F

    mul-float p6, p2, p5

    float-to-int p6, p6

    sub-int/2addr p6, p1

    mul-float p1, p4, p4

    mul-int/lit8 p6, p6, 0x2

    int-to-float p6, p6

    div-float/2addr p1, p6

    div-float/2addr p4, p1

    float-to-long v0, p4

    iput-wide v0, p0, Lcom/zui/launcher/anim/Interpolators$OvershootParams;->duration:J

    sub-float/2addr p2, p3

    mul-float/2addr p2, p5

    float-to-int p2, p2

    int-to-float p2, p2

    div-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-long p1, p1

    const-wide/16 p4, 0x4

    mul-long/2addr p1, p4

    const-wide/16 p4, 0xc8

    invoke-static {p4, p5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iget-wide p4, p0, Lcom/zui/launcher/anim/Interpolators$OvershootParams;->duration:J

    long-to-float p6, p4

    add-long v0, p4, p1

    long-to-float v0, v0

    div-float/2addr p6, v0

    add-long/2addr p4, p1

    iput-wide p4, p0, Lcom/zui/launcher/anim/Interpolators$OvershootParams;->duration:J

    sget-object p1, Lcom/zui/launcher/anim/Interpolators;->DEACCEL:Landroid/view/animation/Interpolator;

    const/4 p2, 0x0

    invoke-static {p1, p2, p6}, Lcom/zui/launcher/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object p1

    sget-object p2, Lcom/zui/launcher/anim/Interpolators;->ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    iget p4, p0, Lcom/zui/launcher/anim/Interpolators$OvershootParams;->start:F

    sub-float/2addr p3, p4

    iget p5, p0, Lcom/zui/launcher/anim/Interpolators$OvershootParams;->end:F

    sub-float/2addr p5, p4

    div-float/2addr p3, p5

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-static {p2, p4, p3}, Lcom/zui/launcher/anim/Interpolators;->mapToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-static {p2, p6, p4}, Lcom/zui/launcher/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object p2

    new-instance p3, Lcom/zui/launcher/anim/j;

    invoke-direct {p3, p6, p1, p2}, Lcom/zui/launcher/anim/j;-><init>(FLandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    iput-object p3, p0, Lcom/zui/launcher/anim/Interpolators$OvershootParams;->interpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method static synthetic a(FLandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;F)F
    .locals 0

    cmpg-float p0, p3, p0

    if-gtz p0, :cond_0

    invoke-interface {p1, p3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-interface {p2, p3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    :goto_0
    return p0
.end method
