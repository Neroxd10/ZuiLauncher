.class public final Lcom/amap/api/col/l3s/am;
.super Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final mergeCameraUpdateDelegate(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V
    .locals 0

    return-void
.end method

.method public final runCameraUpdate(Lcom/autonavi/amap/api/mapcore/IGLMapState;)V
    .locals 5

    iget v0, p0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->xPixel:F

    iget v1, p0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->yPixel:F

    iget v2, p0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->width:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v0

    iget p0, p0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->height:I

    int-to-float p0, p0

    div-float/2addr p0, v3

    add-float/2addr p0, v1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    float-to-int v1, v2

    float-to-int p0, p0

    invoke-interface {p1, v1, p0, v0}, Lcom/autonavi/amap/api/mapcore/IGLMapState;->screenToP20Point(IILandroid/graphics/Point;)V

    iget p0, v0, Landroid/graphics/Point;->x:I

    int-to-double v1, p0

    iget p0, v0, Landroid/graphics/Point;->y:I

    int-to-double v3, p0

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/autonavi/amap/api/mapcore/IGLMapState;->setMapGeoCenter(DD)V

    return-void
.end method
