.class public Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;
.super Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;
.source ""


# instance fields
.field private beginCenterGeoX:I

.field private beginCenterGeoY:I

.field private hasCheckParams:Z

.field private mapLevelTo:F

.field private pivotGeoX:I

.field private pivotGeoY:I

.field private winPivotX:F

.field private winPivotY:F

.field private zoomCenter:Z

.field zoomParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->zoomParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {p0}, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->reset()V

    iput p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->duration:I

    return-void
.end method


# virtual methods
.method public commitAnimation(Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->isOver:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->hasCheckParams:Z

    check-cast p1, Lcom/autonavi/base/ae/gmap/GLMapState;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/GLMapState;->getMapZoomer()F

    move-result v2

    iget v3, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->mapLevelTo:F

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v3, v3, v5

    if-gez v3, :cond_1

    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->isOver:Z

    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->hasCheckParams:Z

    return-void

    :cond_1
    iget-object v3, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->zoomParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {v3, v2}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->setFromValue(F)V

    iget-object v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->zoomParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    iget v3, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->mapLevelTo:F

    invoke-virtual {v2, v3}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->setToValue(F)V

    iget-boolean v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->zoomCenter:Z

    if-nez v2, :cond_2

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/autonavi/base/ae/gmap/GLMapState;->getMapGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    iget v3, v2, Landroid/graphics/Point;->x:I

    iput v3, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->beginCenterGeoX:I

    iget v3, v2, Landroid/graphics/Point;->y:I

    iput v3, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->beginCenterGeoY:I

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v3

    iget v4, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->winPivotX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->winPivotY:F

    float-to-int v5, v5

    invoke-virtual {p1, v4, v5, v3}, Lcom/autonavi/base/ae/gmap/GLMapState;->screenToP20Point(IILandroid/graphics/Point;)V

    iget p1, v3, Landroid/graphics/Point;->x:I

    iput p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->pivotGeoX:I

    iget p1, v3, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->pivotGeoY:I

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    :cond_2
    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->hasCheckParams:Z

    iput-boolean v1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->isOver:Z

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
    iget-boolean v1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->hasCheckParams:Z

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->commitAnimation(Ljava/lang/Object;)V

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

    const/4 v3, 0x1

    if-lez v2, :cond_3

    iput-boolean v3, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->isOver:Z

    move p1, v1

    :cond_3
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_7

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_7

    iget-object v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->zoomParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {v2, p1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->setNormalizedTime(F)V

    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->zoomParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->getCurValue()F

    move-result p1

    const/high16 v2, 0x41a00000    # 20.0f

    cmpl-float v4, p1, v2

    if-lez v4, :cond_4

    iput-boolean v3, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->isOver:Z

    move p1, v2

    :cond_4
    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float v4, p1, v2

    if-gez v4, :cond_5

    iput-boolean v3, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->isOver:Z

    move p1, v2

    :cond_5
    iget-boolean v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->zoomCenter:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->zoomParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {v2}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->getFromValue()F

    move-result v2

    sub-float v2, p1, v2

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    float-to-double v5, v2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    iget v3, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->pivotGeoX:I

    iget v4, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->beginCenterGeoX:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v2, v1, v2

    sub-float/2addr v1, v2

    mul-float/2addr v3, v1

    float-to-int v2, v3

    iget v3, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->pivotGeoY:I

    iget p0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->beginCenterGeoY:I

    sub-int/2addr v3, p0

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v1, v3

    add-int/2addr v4, v2

    int-to-double v2, v4

    add-int/2addr p0, v1

    int-to-double v4, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/autonavi/base/ae/gmap/GLMapState;->setMapGeoCenter(DD)V

    :cond_6
    invoke-virtual {v0, p1}, Lcom/autonavi/base/ae/gmap/GLMapState;->setMapZoomer(F)V

    :cond_7
    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->isOver:Z

    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->hasCheckParams:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->zoomCenter:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->mapLevelTo:F

    iput v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->beginCenterGeoX:I

    iput v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->beginCenterGeoY:I

    iput v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->pivotGeoX:I

    iput v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->pivotGeoY:I

    iput v1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->winPivotX:F

    iput v1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->winPivotY:F

    iget-object p0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->zoomParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->reset()V

    :cond_0
    return-void
.end method

.method public setToMapZoomAndPivot(FILandroid/graphics/Point;)V
    .locals 2

    new-instance v0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-direct {v0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;-><init>()V

    iput-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->zoomParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p2, v1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->setInterpolatorType(IF)V

    const/high16 p2, 0x41a00000    # 20.0f

    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    move p1, p2

    :cond_0
    const/high16 p2, 0x40400000    # 3.0f

    cmpg-float v0, p1, p2

    if-gez v0, :cond_1

    move p1, p2

    :cond_1
    iput p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->mapLevelTo:F

    if-eqz p3, :cond_2

    iget p1, p3, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iput p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->winPivotX:F

    iget p1, p3, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    iput p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->winPivotY:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimPivotZoom;->zoomCenter:Z

    :cond_2
    return-void
.end method
