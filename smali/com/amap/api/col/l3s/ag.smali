.class final Lcom/amap/api/col/l3s/ag;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/autonavi/base/amap/api/mapcore/IProjectionDelegate;


# instance fields
.field private a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;


# direct methods
.method public constructor <init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/ag;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    return-void
.end method


# virtual methods
.method public final calculateMapZoomer(Lcom/amap/api/maps/model/LatLng;I)F
    .locals 9

    iget-object v0, p0, Lcom/amap/api/col/l3s/ag;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapProjection()Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v1

    iget-object p0, p0, Lcom/amap/api/col/l3s/ag;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object p0

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IMapConfig;->getSX()D

    move-result-wide v2

    double-to-int v2, v2

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IMapConfig;->getSY()D

    move-result-wide v3

    double-to-int v3, v3

    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v6, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move v8, p2

    invoke-static/range {v1 .. v8}, Lcom/amap/api/col/l3s/ex;->a(Lcom/autonavi/amap/api/mapcore/IGLMapState;IIDDI)F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, 0x40400000    # 3.0f

    return p0
.end method

.method public final fromBoundsToTile(Lcom/amap/api/maps/model/LatLngBounds;II)Lcom/amap/api/maps/model/TileProjection;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-eqz v1, :cond_1

    if-ltz v2, :cond_1

    const/16 v3, 0x14

    if-gt v2, v3, :cond_1

    if-gtz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v10

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v11

    iget-object v4, v0, Lcom/amap/api/col/l3s/ag;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-object v5, v1, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v5, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v8, v5, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-wide v5, v6

    move-wide v7, v8

    move-object v9, v10

    invoke-interface/range {v4 .. v9}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->latlon2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    iget-object v4, v0, Lcom/amap/api/col/l3s/ag;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-object v0, v1, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v5, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v7, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v9, v11

    invoke-interface/range {v4 .. v9}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->latlon2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    iget v0, v10, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v2

    shr-int v1, v0, v3

    div-int v15, v1, p3

    iget v1, v10, Landroid/graphics/Point;->y:I

    shr-int/2addr v1, v3

    div-int v18, v1, p3

    iget v1, v11, Landroid/graphics/Point;->x:I

    shr-int/2addr v1, v3

    div-int v16, v1, p3

    iget v1, v11, Landroid/graphics/Point;->y:I

    shr-int v2, v1, v3

    div-int v17, v2, p3

    shl-int v2, v15, v3

    mul-int v2, v2, p3

    shl-int v4, v17, v3

    mul-int v4, v4, p3

    sub-int/2addr v0, v2

    shr-int v13, v0, v3

    sub-int/2addr v1, v4

    shr-int v14, v1, v3

    invoke-virtual {v10}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    invoke-virtual {v11}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    new-instance v0, Lcom/amap/api/maps/model/TileProjection;

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Lcom/amap/api/maps/model/TileProjection;-><init>(IIIIII)V

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final fromScreenLocation(Landroid/graphics/Point;)Lcom/amap/api/maps/model/LatLng;
    .locals 5

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ag;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-interface {p0, v1, p1, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getPixel2LatLng(IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance p0, Lcom/amap/api/maps/model/LatLng;

    iget-wide v1, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v3, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    return-object p0
.end method

.method public final getCameraInfo()Lcom/amap/api/maps/model/AMapCameraInfo;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ag;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getCamerInfo()Lcom/amap/api/maps/model/AMapCameraInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getMapBounds(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/model/LatLngBounds;
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/ag;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapBounds(Lcom/amap/api/maps/model/LatLng;FFF)Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getVisibleRegion()Lcom/amap/api/maps/model/VisibleRegion;
    .locals 10

    iget-object v0, p0, Lcom/amap/api/col/l3s/ag;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapWidth()I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/ag;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapHeight()I

    move-result v1

    new-instance v2, Landroid/graphics/Point;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/amap/api/col/l3s/ag;->fromScreenLocation(Landroid/graphics/Point;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v7

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/amap/api/col/l3s/ag;->fromScreenLocation(Landroid/graphics/Point;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v8

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/amap/api/col/l3s/ag;->fromScreenLocation(Landroid/graphics/Point;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v5

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/amap/api/col/l3s/ag;->fromScreenLocation(Landroid/graphics/Point;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v6

    invoke-static {}, Lcom/amap/api/maps/model/LatLngBounds;->builder()Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object p0

    invoke-virtual {p0, v7}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object p0

    invoke-virtual {p0, v8}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v9

    new-instance p0, Lcom/amap/api/maps/model/VisibleRegion;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/amap/api/maps/model/VisibleRegion;-><init>(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLngBounds;)V

    return-object p0
.end method

.method public final toMapLenWithWin(I)F
    .locals 0

    if-gtz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/ag;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p0, p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->toMapLenWithWin(I)F

    move-result p0

    return p0
.end method

.method public final toMapLocation(Lcom/amap/api/maps/model/LatLng;)Landroid/graphics/PointF;
    .locals 7

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v6

    iget-object v0, p0, Lcom/amap/api/col/l3s/ag;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-wide v1, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v3, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLatLng2Map(DDLcom/autonavi/base/amap/mapcore/FPoint;)V

    new-instance p0, Landroid/graphics/PointF;

    iget p1, v6, Landroid/graphics/PointF;->x:F

    iget v0, v6, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, p1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v6}, Lcom/autonavi/base/amap/mapcore/FPoint;->recycle()V

    return-object p0
.end method

.method public final toScreenLocation(Lcom/amap/api/maps/model/LatLng;)Landroid/graphics/Point;
    .locals 7

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v6

    iget-object v0, p0, Lcom/amap/api/col/l3s/ag;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-wide v1, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v3, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLatLng2Pixel(DDLcom/autonavi/amap/mapcore/IPoint;)V

    new-instance p0, Landroid/graphics/Point;

    iget p1, v6, Landroid/graphics/Point;->x:I

    iget v0, v6, Landroid/graphics/Point;->y:I

    invoke-direct {p0, p1, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v6}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    return-object p0
.end method
