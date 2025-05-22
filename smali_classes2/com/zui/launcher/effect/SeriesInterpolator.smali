.class public Lcom/zui/launcher/effect/SeriesInterpolator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field a:F

.field b:F

.field c:Landroid/view/animation/Interpolator;

.field d:Landroid/view/animation/Interpolator;

.field e:F

.field f:F


# direct methods
.method public constructor <init>(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-gtz v0, :cond_1

    cmpl-float v0, p3, v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "switchTime must be > 0 and < 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput p3, p0, Lcom/zui/launcher/effect/SeriesInterpolator;->a:F

    iput p4, p0, Lcom/zui/launcher/effect/SeriesInterpolator;->b:F

    iput-object p1, p0, Lcom/zui/launcher/effect/SeriesInterpolator;->c:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/zui/launcher/effect/SeriesInterpolator;->d:Landroid/view/animation/Interpolator;

    sub-float p1, v1, p3

    iput p1, p0, Lcom/zui/launcher/effect/SeriesInterpolator;->e:F

    sub-float/2addr v1, p4

    iput v1, p0, Lcom/zui/launcher/effect/SeriesInterpolator;->f:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    iget v0, p0, Lcom/zui/launcher/effect/SeriesInterpolator;->a:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/effect/SeriesInterpolator;->c:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_0

    div-float/2addr p1, v0

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    iget p0, p0, Lcom/zui/launcher/effect/SeriesInterpolator;->b:F

    mul-float/2addr p1, p0

    return p1

    :cond_0
    iget p0, p0, Lcom/zui/launcher/effect/SeriesInterpolator;->b:F

    mul-float/2addr p0, p1

    div-float/2addr p0, v0

    return p0

    :cond_1
    iget v1, p0, Lcom/zui/launcher/effect/SeriesInterpolator;->e:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/zui/launcher/effect/SeriesInterpolator;->d:Landroid/view/animation/Interpolator;

    sub-float/2addr p1, v0

    if-eqz v2, :cond_2

    div-float/2addr p1, v1

    invoke-interface {v2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    iget v0, p0, Lcom/zui/launcher/effect/SeriesInterpolator;->f:F

    mul-float/2addr p1, v0

    iget p0, p0, Lcom/zui/launcher/effect/SeriesInterpolator;->b:F

    add-float/2addr p1, p0

    return p1

    :cond_2
    iget v0, p0, Lcom/zui/launcher/effect/SeriesInterpolator;->f:F

    mul-float/2addr p1, v0

    div-float/2addr p1, v1

    iget p0, p0, Lcom/zui/launcher/effect/SeriesInterpolator;->b:F

    add-float/2addr p1, p0

    return p1

    :cond_3
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method
