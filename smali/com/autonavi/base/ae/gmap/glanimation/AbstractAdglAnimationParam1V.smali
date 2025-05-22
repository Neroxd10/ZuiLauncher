.class public Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;
.super Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;
.source ""


# instance fields
.field private fromValue:F

.field private toValue:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;-><init>()V

    invoke-virtual {p0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->reset()V

    return-void
.end method


# virtual methods
.method public checkParam()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->needToCaculate:Z

    iget-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->hasFromValue:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->hasToValue:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->toValue:F

    iget v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->fromValue:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, v0

    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v0, v2, v4

    if-lez v0, :cond_0

    iput-boolean v1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->needToCaculate:Z

    :cond_0
    iput-boolean v1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->hasCheckedParam:Z

    return-void
.end method

.method public getCurValue()F
    .locals 2

    iget v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->fromValue:F

    iget v1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->toValue:F

    sub-float/2addr v1, v0

    iget p0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->mult:F

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    return v0
.end method

.method public getFromValue()F
    .locals 0

    iget p0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->fromValue:F

    return p0
.end method

.method public getToValue()F
    .locals 0

    iget p0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->toValue:F

    return p0
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->fromValue:F

    iput v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->toValue:F

    return-void
.end method

.method public setFromValue(F)V
    .locals 0

    iput p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->fromValue:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->hasFromValue:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->hasCheckedParam:Z

    return-void
.end method

.method public setToValue(F)V
    .locals 0

    iput p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->toValue:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->hasToValue:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->hasCheckedParam:Z

    return-void
.end method
