.class public Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;
.super Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;
.source ""


# instance fields
.field private fromCenter:Lcom/autonavi/amap/mapcore/IPoint;

.field private hasCheckParams:Z

.field private lastMoveX:I

.field private lastMoveY:I

.field private moveParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

.field private needMove:Z

.field private screenCenterX:I

.field private screenCenterY:I

.field private velocityX:F

.field private velocityY:F


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;-><init>()V

    iput p2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->screenCenterX:I

    iput p3, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->screenCenterY:I

    iput p2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->lastMoveX:I

    iput p3, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->lastMoveY:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->moveParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    invoke-virtual {p0}, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->reset()V

    iput p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->duration:I

    return-void
.end method


# virtual methods
.method public commitAnimation(Ljava/lang/Object;)V
    .locals 8

    check-cast p1, Lcom/autonavi/base/ae/gmap/GLMapState;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->hasCheckParams:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->isOver:Z

    iget v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->velocityX:F

    iget v3, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->duration:I

    int-to-float v4, v3

    mul-float/2addr v2, v4

    const/high16 v4, 0x44fa0000    # 2000.0f

    div-float/2addr v2, v4

    float-to-int v2, v2

    iget v5, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->velocityY:F

    int-to-float v3, v3

    mul-float/2addr v5, v3

    div-float/2addr v5, v4

    float-to-int v3, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->fromCenter:Lcom/autonavi/amap/mapcore/IPoint;

    if-nez v4, :cond_1

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v4

    iput-object v4, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->fromCenter:Lcom/autonavi/amap/mapcore/IPoint;

    :cond_1
    iget-object v4, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->fromCenter:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {p1, v4}, Lcom/autonavi/base/ae/gmap/GLMapState;->getMapGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->isOver:Z

    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->moveParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    iget v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->screenCenterX:I

    int-to-double v4, v0

    iget v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->screenCenterY:I

    int-to-double v6, v0

    invoke-virtual {p1, v4, v5, v6, v7}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->setFromValue(DD)V

    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->moveParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    iget v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->screenCenterX:I

    sub-int/2addr v0, v2

    int-to-double v4, v0

    iget v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->screenCenterY:I

    sub-int/2addr v0, v3

    int-to-double v2, v0

    invoke-virtual {p1, v4, v5, v2, v3}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->setToValue(DD)V

    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->moveParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->needToCaculate()Z

    move-result p1

    iput-boolean p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->needMove:Z

    :cond_2
    iput-boolean v1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->hasCheckParams:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->startTime:J

    return-void
.end method

.method public commitAnimationold(Ljava/lang/Object;)V
    .locals 7

    check-cast p1, Lcom/autonavi/base/ae/gmap/GLMapState;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->hasCheckParams:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->isOver:Z

    iget v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->velocityX:F

    mul-float/2addr v2, v2

    iget v3, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->velocityY:F

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    const v3, 0x3dcccccd    # 0.1f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_2

    const v3, 0x3ca3d70a    # 0.02f

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->fromCenter:Lcom/autonavi/amap/mapcore/IPoint;

    if-nez v3, :cond_1

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v3

    iput-object v3, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->fromCenter:Lcom/autonavi/amap/mapcore/IPoint;

    :cond_1
    iget-object v3, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->fromCenter:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {p1, v3}, Lcom/autonavi/base/ae/gmap/GLMapState;->getMapGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->isOver:Z

    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->moveParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    iget v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->screenCenterX:I

    int-to-double v3, v0

    iget v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->screenCenterY:I

    int-to-double v5, v0

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->setFromValue(DD)V

    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->moveParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    iget v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->screenCenterX:I

    int-to-float v0, v0

    iget v3, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->velocityX:F

    mul-float/2addr v3, v2

    sub-float/2addr v0, v3

    float-to-double v3, v0

    iget v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->screenCenterY:I

    int-to-float v0, v0

    iget v5, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->velocityY:F

    mul-float/2addr v5, v2

    sub-float/2addr v0, v5

    float-to-double v5, v0

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->setToValue(DD)V

    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->moveParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->needToCaculate()Z

    move-result p1

    iput-boolean p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->needMove:Z

    :cond_2
    iput-boolean v1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->hasCheckParams:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->startTime:J

    return-void
.end method

.method public doAnimation(Ljava/lang/Object;)V
    .locals 7

    move-object v0, p1

    check-cast v0, Lcom/autonavi/base/ae/gmap/GLMapState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->hasCheckParams:Z

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->commitAnimation(Ljava/lang/Object;)V

    :cond_1
    iget-boolean p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->isOver:Z

    if-eqz p1, :cond_2

    return-void

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->startTime:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->offsetTime:J

    long-to-float p1, v1

    iget v1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->duration:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->isOver:Z

    move p1, v1

    :cond_3
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_4

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_4

    iget-boolean v1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->needMove:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->moveParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    invoke-virtual {v1, p1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->setNormalizedTime(F)V

    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->moveParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->getCurXValue()D

    move-result-wide v1

    double-to-int p1, v1

    iget-object v1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->moveParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    invoke-virtual {v1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->getCurYValue()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v2

    iget v3, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->screenCenterX:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->lastMoveX:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->screenCenterY:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->lastMoveY:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v3, v4, v2}, Lcom/autonavi/base/ae/gmap/GLMapState;->screenToP20Point(IILandroid/graphics/Point;)V

    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-double v3, v3

    iget v5, v2, Landroid/graphics/Point;->y:I

    int-to-double v5, v5

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/autonavi/base/ae/gmap/GLMapState;->setMapGeoCenter(DD)V

    iput p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->lastMoveX:I

    iput v1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->lastMoveY:I

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    :cond_4
    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->moveParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->reset()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->velocityX:F

    iput v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->velocityY:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->needMove:Z

    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->hasCheckParams:Z

    return-void
.end method

.method public setPositionAndVelocity(FF)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->moveParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    iput p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->velocityX:F

    iput p2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->velocityY:F

    new-instance p1, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    invoke-direct {p1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;-><init>()V

    iput-object p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->moveParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    const/4 p2, 0x2

    const v0, 0x3f99999a    # 1.2f

    invoke-virtual {p1, p2, v0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->setInterpolatorType(IF)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->needMove:Z

    iput-boolean p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimFling;->hasCheckParams:Z

    return-void
.end method
