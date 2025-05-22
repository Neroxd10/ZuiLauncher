.class public Lcom/zui/launcher/effect/MoveBackInterpolator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field a:Z

.field b:F

.field c:Landroid/view/animation/Interpolator;

.field d:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(FLandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/effect/MoveBackInterpolator;->a:Z

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/zui/launcher/effect/MoveBackInterpolator;->b:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/effect/MoveBackInterpolator;->a:Z

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "max must be > 0 and < 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput p1, p0, Lcom/zui/launcher/effect/MoveBackInterpolator;->b:F

    iput-object p2, p0, Lcom/zui/launcher/effect/MoveBackInterpolator;->c:Landroid/view/animation/Interpolator;

    iput-object p3, p0, Lcom/zui/launcher/effect/MoveBackInterpolator;->d:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    iget-boolean v0, p0, Lcom/zui/launcher/effect/MoveBackInterpolator;->a:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/zui/launcher/effect/MoveBackInterpolator;->b:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/effect/MoveBackInterpolator;->c:Landroid/view/animation/Interpolator;

    div-float/2addr p1, v0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    return p0

    :cond_0
    return p1

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/effect/MoveBackInterpolator;->d:Landroid/view/animation/Interpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p0, :cond_2

    sub-float/2addr p1, v0

    sub-float v0, v1, v0

    div-float/2addr p1, v0

    invoke-interface {p0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    sub-float/2addr v1, p0

    return v1

    :cond_2
    sub-float p0, v1, p1

    sub-float/2addr v1, v0

    div-float/2addr p0, v1

    return p0

    :cond_3
    float-to-double p0, p1

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    const-wide v0, 0x4012d97c7f3321d2L    # 4.71238898038469

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method
