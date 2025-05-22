.class public final Lcom/amap/api/col/l3s/ak;
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
    .locals 4

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->mapConfig:Lcom/autonavi/amap/mapcore/interfaces/IMapConfig;

    invoke-static {p0, v0}, Lcom/amap/api/col/l3s/ex;->a(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;Lcom/autonavi/amap/mapcore/interfaces/IMapConfig;)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/api/mapcore/IGLMapState;->setMapZoomer(F)V

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/autonavi/amap/mapcore/IPoint;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    check-cast p0, Lcom/autonavi/amap/mapcore/IPoint;

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-double v2, p0

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/autonavi/amap/api/mapcore/IGLMapState;->setMapGeoCenter(DD)V

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lcom/autonavi/amap/api/mapcore/IGLMapState;->setCameraDegree(F)V

    invoke-interface {p1, p0}, Lcom/autonavi/amap/api/mapcore/IGLMapState;->setMapAngle(F)V

    return-void
.end method
