.class public Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;
.super Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;
.source ""


# static fields
.field public static final CAMERA_MAX_DEGREE:I = 0x50

.field public static final CAMERA_MIN_DEGREE:I = 0x0

.field public static final MAXMAPLEVEL:I = 0x14

.field public static final MINMAPLEVEL:I = 0x3


# instance fields
.field endZoomDuration:I

.field hasCheckParams:Z

.field hasMidZoom:Z

.field midZoomDuration:I

.field moveParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

.field public needMove:Z

.field needRotateCamera:Z

.field needRotateMap:Z

.field needZoom:Z

.field rotateCameraParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

.field rotateMapParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

.field startZoomDuration:I

.field zoomEndParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

.field zoomStartParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->zoomStartParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    iput-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->zoomEndParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    iput-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->moveParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    iput-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->rotateMapParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    iput-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->rotateCameraParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {p0}, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->reset()V

    iput p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->duration:I

    return-void
.end method

.method public static checkLevel(F)Z
    .locals 1

    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x41a00000    # 20.0f

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private initZoomEndParam(FFI)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->zoomEndParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-direct {v0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;-><init>()V

    iput-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->zoomEndParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->zoomEndParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->reset()V

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->zoomEndParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p3, v1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->setInterpolatorType(IF)V

    iget-object p3, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->zoomEndParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {p3, p2}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->setToValue(F)V

    iget-object p0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->zoomEndParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {p0, p1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->setFromValue(F)V

    return-void
.end method

.method private initZoomStartParam(FI)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->zoomStartParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-direct {v0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;-><init>()V

    iput-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->zoomStartParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->zoomStartParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->reset()V

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->zoomStartParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p2, v1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->setInterpolatorType(IF)V

    iget-object p0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->zoomStartParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {p0, p1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->setToValue(F)V

    return-void
.end method


# virtual methods
.method public commitAnimation(Ljava/lang/Object;)V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->isOver:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->hasCheckParams:Z

    check-cast p1, Lcom/autonavi/base/ae/gmap/GLMapState;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needZoom:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->zoomStartParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    if-nez v2, :cond_1

    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->hasCheckParams:Z

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/GLMapState;->getMapZoomer()F

    move-result v2

    iget-object v3, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->zoomStartParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {v3, v2}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->setFromValue(F)V

    iget-boolean v3, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->hasMidZoom:Z

    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->zoomStartParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {v3}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->getToValue()F

    move-result v3

    sub-float/2addr v3, v2

    iget-object v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->zoomEndParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {v2}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->getFromValue()F

    move-result v2

    iget-object v6, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->zoomEndParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {v6}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->getToValue()F

    move-result v6

    sub-float/2addr v2, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v6, v3

    cmpg-double v3, v6, v4

    if-ltz v3, :cond_3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->zoomStartParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {v2}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->needToCaculate()Z

    iget-object v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->zoomEndParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {v2}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->needToCaculate()Z

    goto :goto_1

    :cond_3
    :goto_0
    iput-boolean v1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->hasMidZoom:Z

    iget-object v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->zoomStartParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    iget-object v3, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->zoomEndParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {v3}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->getToValue()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->setToValue(F)V

    iget-object v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->zoomStartParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {v2}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->needToCaculate()Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->zoomEndParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    :cond_4
    :goto_1
    iget-boolean v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->hasMidZoom:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->zoomStartParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {v2}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->getFromValue()F

    move-result v2

    iget-object v3, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->zoomStartParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {v3}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->getToValue()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    cmpg-double v2, v2, v4

    if-gez v2, :cond_5

    iput-boolean v1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needZoom:Z

    :cond_5
    iget-boolean v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needZoom:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->hasMidZoom:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->duration:I

    iget v3, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->midZoomDuration:I

    sub-int/2addr v2, v3

    shr-int/2addr v2, v0

    iput v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->startZoomDuration:I

    iput v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->endZoomDuration:I

    goto :goto_2

    :cond_6
    iget v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->duration:I

    iput v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->startZoomDuration:I

    :cond_7
    :goto_2
    iget-boolean v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needMove:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->moveParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/autonavi/base/ae/gmap/GLMapState;->getMapGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    iget-object v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->moveParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    int-to-double v5, v3

    int-to-double v3, v4

    invoke-virtual {v2, v5, v6, v3, v4}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->setFromValue(DD)V

    iget-object v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->moveParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    invoke-virtual {v2}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->needToCaculate()Z

    move-result v2

    iput-boolean v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needMove:Z

    :cond_8
    iget-boolean v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needRotateMap:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->rotateMapParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    if-eqz v2, :cond_c

    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/GLMapState;->getMapAngle()F

    move-result v2

    iget-object v3, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->rotateMapParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {v3}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->getToValue()F

    move-result v3

    const/high16 v4, 0x43340000    # 180.0f

    cmpl-float v5, v2, v4

    const/high16 v6, 0x43b40000    # 360.0f

    if-lez v5, :cond_9

    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-nez v5, :cond_9

    move v3, v6

    :cond_9
    float-to-int v5, v3

    float-to-int v7, v2

    sub-int/2addr v5, v7

    int-to-float v5, v5

    cmpl-float v4, v5, v4

    if-lez v4, :cond_a

    sub-float/2addr v3, v6

    goto :goto_3

    :cond_a
    const/high16 v4, -0x3ccc0000    # -180.0f

    cmpg-float v4, v5, v4

    if-gez v4, :cond_b

    add-float/2addr v3, v6

    :cond_b
    :goto_3
    iget-object v4, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->rotateMapParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {v4, v2}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->setFromValue(F)V

    iget-object v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->rotateMapParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {v2, v3}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->setToValue(F)V

    iget-object v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->rotateMapParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {v2}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->needToCaculate()Z

    move-result v2

    iput-boolean v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needRotateMap:Z

    :cond_c
    iget-boolean v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needRotateCamera:Z

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->rotateCameraParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    if-eqz v2, :cond_d

    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/GLMapState;->getCameraDegree()F

    move-result p1

    iget-object v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->rotateCameraParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {v2, p1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->setFromValue(F)V

    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->rotateCameraParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->needToCaculate()Z

    move-result p1

    iput-boolean p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needRotateCamera:Z

    :cond_d
    iget-boolean p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needMove:Z

    if-nez p1, :cond_e

    iget-boolean p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needZoom:Z

    if-nez p1, :cond_e

    iget-boolean p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needRotateMap:Z

    if-nez p1, :cond_e

    iget-boolean p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needRotateCamera:Z

    if-nez p1, :cond_e

    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->isOver:Z

    goto :goto_4

    :cond_e
    iput-boolean v1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->isOver:Z

    :goto_4
    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->hasCheckParams:Z

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
    iget-boolean v1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->hasCheckParams:Z

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->commitAnimation(Ljava/lang/Object;)V

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

    iget p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->duration:I

    int-to-float v3, p1

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    const/4 v5, 0x1

    if-nez v3, :cond_3

    iput-boolean v5, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->isOver:Z

    return-void

    :cond_3
    long-to-float v1, v1

    int-to-float p1, p1

    div-float/2addr v1, p1

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float v2, v1, p1

    if-lez v2, :cond_4

    iput-boolean v5, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->isOver:Z

    move v1, p1

    goto :goto_0

    :cond_4
    cmpg-float p1, v1, v4

    if-gez p1, :cond_5

    iput-boolean v5, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->isOver:Z

    return-void

    :cond_5
    :goto_0
    iget-boolean p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needZoom:Z

    if-eqz p1, :cond_a

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->getMapZoomer()F

    iget-boolean p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->hasMidZoom:Z

    if-eqz p1, :cond_8

    iget-wide v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->offsetTime:J

    iget p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->startZoomDuration:I

    int-to-long v4, p1

    cmp-long v4, v2, v4

    if-gtz v4, :cond_6

    long-to-float v2, v2

    int-to-float p1, p1

    div-float/2addr v2, p1

    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->zoomStartParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {p1, v2}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->setNormalizedTime(F)V

    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->zoomStartParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    :goto_1
    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->getCurValue()F

    move-result p1

    goto :goto_2

    :cond_6
    iget v4, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->midZoomDuration:I

    add-int v5, p1, v4

    int-to-long v5, v5

    cmp-long v5, v2, v5

    if-gtz v5, :cond_7

    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->zoomStartParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->getToValue()F

    move-result p1

    goto :goto_2

    :cond_7
    int-to-long v5, p1

    sub-long/2addr v2, v5

    int-to-long v4, v4

    sub-long/2addr v2, v4

    long-to-float p1, v2

    iget v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->endZoomDuration:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    iget-object v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->zoomEndParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {v2, p1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->setNormalizedTime(F)V

    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->zoomEndParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    goto :goto_1

    :goto_2
    iget-boolean v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->isOver:Z

    if-eqz v2, :cond_9

    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->zoomEndParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->getToValue()F

    move-result p1

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->zoomStartParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {p1, v1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->setNormalizedTime(F)V

    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->zoomStartParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->getCurValue()F

    move-result p1

    :cond_9
    :goto_3
    invoke-virtual {v0, p1}, Lcom/autonavi/base/ae/gmap/GLMapState;->setMapZoomer(F)V

    :cond_a
    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->moveParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    if-eqz p1, :cond_b

    iget-boolean v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needMove:Z

    if-eqz v2, :cond_b

    invoke-virtual {p1, v1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->setNormalizedTime(F)V

    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->moveParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->getFromXValue()D

    move-result-wide v2

    double-to-int p1, v2

    iget-object v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->moveParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    invoke-virtual {v2}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->getFromYValue()D

    move-result-wide v2

    double-to-int v2, v2

    iget-object v3, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->moveParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    invoke-virtual {v3}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->getToXValue()D

    move-result-wide v3

    double-to-int v3, v3

    iget-object v4, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->moveParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    invoke-virtual {v4}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->getToYValue()D

    move-result-wide v4

    double-to-int v4, v4

    iget-object v5, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->moveParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    invoke-virtual {v5}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->getCurMult()F

    move-result v5

    sub-int/2addr v3, p1

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    sub-int/2addr v4, v2

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr p1, v3

    int-to-double v5, p1

    add-int/2addr v2, v4

    int-to-double v2, v2

    invoke-virtual {v0, v5, v6, v2, v3}, Lcom/autonavi/base/ae/gmap/GLMapState;->setMapGeoCenter(DD)V

    :cond_b
    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->rotateMapParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    if-eqz p1, :cond_c

    iget-boolean v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needRotateMap:Z

    if-eqz v2, :cond_c

    invoke-virtual {p1, v1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->setNormalizedTime(F)V

    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->rotateMapParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->getCurValue()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/autonavi/base/ae/gmap/GLMapState;->setMapAngle(F)V

    :cond_c
    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->rotateCameraParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    if-eqz p1, :cond_d

    iget-boolean v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needRotateCamera:Z

    if-eqz v2, :cond_d

    invoke-virtual {p1, v1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->setNormalizedTime(F)V

    iget-object p0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->rotateCameraParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {p0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->getCurValue()F

    move-result p0

    float-to-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Lcom/autonavi/base/ae/gmap/GLMapState;->setCameraDegree(F)V

    :cond_d
    return-void
.end method

.method public isValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needRotateCamera:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needRotateMap:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needMove:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needZoom:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->isOver:Z

    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->hasCheckParams:Z

    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needZoom:Z

    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needMove:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->moveParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needRotateMap:Z

    iput-object v1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->rotateMapParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->hasMidZoom:Z

    iput v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->duration:I

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->reset()V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->moveParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->reset()V

    :cond_1
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->zoomStartParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->reset()V

    :cond_2
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->zoomEndParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->reset()V

    :cond_3
    iget-object p0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->rotateCameraParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->reset()V

    :cond_4
    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->duration:I

    return-void
.end method

.method public setToCameraDegree(FI)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needRotateCamera:Z

    const/high16 v0, 0x42a00000    # 80.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needRotateCamera:Z

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->rotateCameraParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-direct {v0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;-><init>()V

    iput-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->rotateCameraParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->rotateCameraParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->reset()V

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->rotateCameraParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p2, v1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->setInterpolatorType(IF)V

    iget-object p0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->rotateCameraParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {p0, p1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->setToValue(F)V

    :cond_1
    return-void
.end method

.method public setToMapAngle(FI)V
    .locals 2

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needRotateMap:Z

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->rotateMapParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-direct {v0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;-><init>()V

    iput-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->rotateMapParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->rotateMapParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->reset()V

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->rotateMapParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p2, v1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->setInterpolatorType(IF)V

    iget-object p0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->rotateMapParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;

    invoke-virtual {p0, p1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam1V;->setToValue(F)V

    return-void
.end method

.method public setToMapCenterGeo(III)V
    .locals 2

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needMove:Z

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->moveParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    invoke-direct {v0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;-><init>()V

    iput-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->moveParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->moveParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->reset()V

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->moveParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p3, v1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->setInterpolatorType(IF)V

    iget-object p0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->moveParam:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    int-to-double v0, p1

    int-to-double p1, p2

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->setToValue(DD)V

    :cond_1
    return-void
.end method

.method public setToMapLevel(FFI)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needZoom:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->midZoomDuration:I

    iput-boolean v1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->hasMidZoom:Z

    if-lez p3, :cond_0

    iget v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->duration:I

    if-ge p3, v2, :cond_0

    iput p3, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->midZoomDuration:I

    :cond_0
    invoke-static {p1}, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->checkLevel(F)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p2}, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->checkLevel(F)Z

    move-result p3

    if-eqz p3, :cond_1

    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->hasMidZoom:Z

    invoke-direct {p0, p2, v1}, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->initZoomStartParam(FI)V

    invoke-direct {p0, p2, p1, v1}, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->initZoomEndParam(FFI)V

    return-void

    :cond_1
    invoke-static {p1}, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->checkLevel(F)Z

    move-result p3

    if-eqz p3, :cond_2

    iput-boolean v1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->hasMidZoom:Z

    invoke-direct {p0, p1, v1}, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->initZoomStartParam(FI)V

    return-void

    :cond_2
    invoke-static {p2}, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->checkLevel(F)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-boolean v1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->hasMidZoom:Z

    invoke-direct {p0, p2, v1}, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->initZoomStartParam(FI)V

    return-void

    :cond_3
    iput-boolean v1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needZoom:Z

    return-void
.end method

.method public setToMapLevel(FI)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needZoom:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->midZoomDuration:I

    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->hasMidZoom:Z

    invoke-static {p1}, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->checkLevel(F)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->initZoomStartParam(FI)V

    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needZoom:Z

    return-void
.end method

.method public typeEqueal(Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needRotateCamera:Z

    iget-boolean v1, p1, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needRotateCamera:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needRotateMap:Z

    iget-boolean v1, p1, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needRotateMap:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needZoom:Z

    iget-boolean v1, p1, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needZoom:Z

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needMove:Z

    iget-boolean p1, p1, Lcom/autonavi/base/ae/gmap/glanimation/AdglMapAnimGroup;->needMove:Z

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
