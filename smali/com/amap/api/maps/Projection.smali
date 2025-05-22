.class public Lcom/amap/api/maps/Projection;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final projectionDelegate:Lcom/autonavi/amap/mapcore/interfaces/IProjection;


# direct methods
.method public constructor <init>(Lcom/autonavi/amap/mapcore/interfaces/IProjection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/maps/Projection;->projectionDelegate:Lcom/autonavi/amap/mapcore/interfaces/IProjection;

    return-void
.end method


# virtual methods
.method public calZoomByTargetPos(Lcom/amap/api/maps/model/LatLng;I)F
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/Projection;->projectionDelegate:Lcom/autonavi/amap/mapcore/interfaces/IProjection;

    invoke-interface {p0, p1, p2}, Lcom/autonavi/amap/mapcore/interfaces/IProjection;->calculateMapZoomer(Lcom/amap/api/maps/model/LatLng;I)F

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/high16 p0, 0x40400000    # 3.0f

    return p0
.end method

.method public fromBoundsToTile(Lcom/amap/api/maps/model/LatLngBounds;II)Lcom/amap/api/maps/model/TileProjection;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/Projection;->projectionDelegate:Lcom/autonavi/amap/mapcore/interfaces/IProjection;

    invoke-interface {p0, p1, p2, p3}, Lcom/autonavi/amap/mapcore/interfaces/IProjection;->fromBoundsToTile(Lcom/amap/api/maps/model/LatLngBounds;II)Lcom/amap/api/maps/model/TileProjection;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public fromScreenLocation(Landroid/graphics/Point;)Lcom/amap/api/maps/model/LatLng;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/Projection;->projectionDelegate:Lcom/autonavi/amap/mapcore/interfaces/IProjection;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IProjection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/amap/api/maps/model/LatLng;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCameraInfo()Lcom/amap/api/maps/model/AMapCameraInfo;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/Projection;->projectionDelegate:Lcom/autonavi/amap/mapcore/interfaces/IProjection;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IProjection;->getCameraInfo()Lcom/amap/api/maps/model/AMapCameraInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMapBounds(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/model/LatLngBounds;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/Projection;->projectionDelegate:Lcom/autonavi/amap/mapcore/interfaces/IProjection;

    invoke-interface {p0, p1, p2}, Lcom/autonavi/amap/mapcore/interfaces/IProjection;->getMapBounds(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVisibleRegion()Lcom/amap/api/maps/model/VisibleRegion;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/Projection;->projectionDelegate:Lcom/autonavi/amap/mapcore/interfaces/IProjection;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IProjection;->getVisibleRegion()Lcom/amap/api/maps/model/VisibleRegion;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public toMapLocation(Lcom/amap/api/maps/model/LatLng;)Landroid/graphics/PointF;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/Projection;->projectionDelegate:Lcom/autonavi/amap/mapcore/interfaces/IProjection;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IProjection;->toMapLocation(Lcom/amap/api/maps/model/LatLng;)Landroid/graphics/PointF;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public toOpenGLLocation(Lcom/amap/api/maps/model/LatLng;)Landroid/graphics/PointF;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/Projection;->projectionDelegate:Lcom/autonavi/amap/mapcore/interfaces/IProjection;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IProjection;->toMapLocation(Lcom/amap/api/maps/model/LatLng;)Landroid/graphics/PointF;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public toOpenGLWidth(I)F
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/Projection;->projectionDelegate:Lcom/autonavi/amap/mapcore/interfaces/IProjection;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IProjection;->toMapLenWithWin(I)F

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public toScreenLocation(Lcom/amap/api/maps/model/LatLng;)Landroid/graphics/Point;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/Projection;->projectionDelegate:Lcom/autonavi/amap/mapcore/interfaces/IProjection;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IProjection;->toScreenLocation(Lcom/amap/api/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
