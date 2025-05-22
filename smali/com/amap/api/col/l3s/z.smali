.class public final Lcom/amap/api/col/l3s/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/amap/api/maps/interfaces/IGlOverlayLayer;
.implements Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$setRunLowFrameListener;


# instance fields
.field a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field b:Z

.field private c:Lcom/amap/api/col/l3s/dl;

.field private d:I

.field private final e:Ljava/lang/Object;

.field private f:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amap/api/maps/model/Polyline;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Lcom/amap/api/maps/model/BaseOverlay;",
            "Lcom/amap/api/maps/model/BaseOptions;",
            ">;>;"
        }
    .end annotation
.end field

.field private i:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private j:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private k:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private l:Lcom/amap/api/maps/model/BitmapDescriptor;


# direct methods
.method public constructor <init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3s/z;->d:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/l3s/z;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/col/l3s/z;->i:Lcom/amap/api/maps/model/BitmapDescriptor;

    iput-object v1, p0, Lcom/amap/api/col/l3s/z;->j:Lcom/amap/api/maps/model/BitmapDescriptor;

    iput-object v1, p0, Lcom/amap/api/col/l3s/z;->k:Lcom/amap/api/maps/model/BitmapDescriptor;

    iput-object v1, p0, Lcom/amap/api/col/l3s/z;->l:Lcom/amap/api/maps/model/BitmapDescriptor;

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/z;->b:Z

    iput-object p1, p0, Lcom/amap/api/col/l3s/z;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/z;->g:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/z;->h:Ljava/util/ArrayList;

    new-instance p1, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    invoke-direct {p1}, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/z;->f:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    return-void
.end method

.method private static a(Lcom/amap/api/maps/model/BaseOverlay;Ljava/lang/Object;)V
    .locals 6

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setOptionPointList"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setOptionPointList:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GlOverlayLayer"

    invoke-static {p0, v0, p1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final IsCircleContainPoint(Lcom/amap/api/maps/model/CircleOptions;Lcom/amap/api/maps/model/LatLng;)Z
    .locals 4

    const/4 p0, 0x0

    if-eqz p2, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getHoleOptions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/BaseHoleOptions;

    invoke-static {v1, p2}, Lcom/amap/api/col/l3s/ex;->a(Lcom/amap/api/maps/model/BaseHoleOptions;Lcom/amap/api/maps/model/LatLng;)Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit p1

    return p0

    :cond_2
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getRadius()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result p2

    float-to-double v2, p2

    cmpl-double p2, v0, v2

    if-ltz p2, :cond_3

    const/4 p2, 0x1

    monitor-exit p1

    return p2

    :cond_3
    monitor-exit p1

    return p0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_0
    return p0
.end method

.method public final IsPolygonContainsPoint(Lcom/amap/api/maps/model/PolygonOptions;Lcom/amap/api/maps/model/LatLng;)Z
    .locals 2

    const/4 p0, 0x0

    if-nez p2, :cond_0

    return p0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getHoleOptions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/BaseHoleOptions;

    invoke-static {v1, p2}, Lcom/amap/api/col/l3s/ex;->a(Lcom/amap/api/maps/model/BaseHoleOptions;Lcom/amap/api/maps/model/LatLng;)Z

    move-result v1

    if-eqz v1, :cond_1

    return p0

    :cond_2
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getPoints()Ljava/util/List;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amap/api/col/l3s/ex;->a(Lcom/amap/api/maps/model/LatLng;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p0
.end method

.method public final addOverlayObject(Ljava/lang/String;Lcom/amap/api/maps/model/BaseOverlay;Lcom/amap/api/maps/model/BaseOptions;)Lcom/amap/api/maps/model/BaseOverlay;
    .locals 4

    instance-of v0, p2, Lcom/amap/api/maps/model/Polyline;

    if-eqz v0, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/amap/api/maps/model/Polyline;

    invoke-static {v1, p3}, Lcom/amap/api/col/l3s/z;->a(Lcom/amap/api/maps/model/BaseOverlay;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1, p3}, Lcom/amap/api/col/l3s/z;->prepareIcon(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    instance-of v1, p2, Lcom/amap/api/maps/model/Polygon;

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Lcom/amap/api/maps/model/Polygon;

    invoke-static {v1, p3}, Lcom/amap/api/col/l3s/z;->a(Lcom/amap/api/maps/model/BaseOverlay;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    instance-of v1, p2, Lcom/amap/api/maps/model/particle/ParticleOverlay;

    if-eqz v1, :cond_2

    :goto_1
    goto :goto_0

    :cond_2
    instance-of v1, p2, Lcom/amap/api/maps/model/GroundOverlay;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/z;->f:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    invoke-virtual {v1, p1, p3}, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;->createOverlay(Ljava/lang/String;Lcom/amap/api/maps/model/BaseOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p3

    const-string v1, "GlOverlayLayer"

    const-string v2, "addOverlay"

    invoke-static {p3, v1, v2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "amapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GlOverlayLayer addOverlay error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    if-eqz v0, :cond_4

    iget-object p3, p0, Lcom/amap/api/col/l3s/z;->g:Ljava/util/Map;

    monitor-enter p3

    :try_start_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/z;->g:Ljava/util/Map;

    move-object v0, p2

    check-cast v0, Lcom/amap/api/maps/model/Polyline;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p3

    goto :goto_4

    :catchall_1
    move-exception p0

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_4
    :goto_4
    return-object p2
.end method

.method public final addRecycleTextureIds(Lcom/amap/api/col/l3s/af;)V
    .locals 0

    return-void
.end method

.method public final changeOverlayIndex()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized clear(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/z;->f:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/z;->f:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    invoke-virtual {v0, p1}, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;->clear(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/z;->g:Ljava/util/Map;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/z;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lcom/amap/api/col/l3s/z;->h:Ljava/util/ArrayList;

    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v0, p0, Lcom/amap/api/col/l3s/z;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_8
    const-string v0, "GlOverlayLayer"

    const-string v1, "clear"

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    monitor-exit p0

    return-void

    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final createId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/z;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/amap/api/col/l3s/z;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amap/api/col/l3s/z;->d:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/amap/api/col/l3s/z;->d:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final declared-synchronized destroy()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/z;->f:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/z;->g:Ljava/util/Map;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, p0, Lcom/amap/api/col/l3s/z;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, p0, Lcom/amap/api/col/l3s/z;->h:Ljava/util/ArrayList;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v1, p0, Lcom/amap/api/col/l3s/z;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, p0, Lcom/amap/api/col/l3s/z;->f:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;->clear(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/z;->f:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;->destroy()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_1
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_a
    const-string v1, "GlOverlayLayer"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    monitor-exit p0

    return-void

    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized draw(ZI)Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/z;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/amap/api/col/l3s/z;->f:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/l3s/z;->f:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    iget-object v3, p0, Lcom/amap/api/col/l3s/z;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getZoomLevel()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;->setConfig(Lcom/autonavi/base/amap/mapcore/MapConfig;Ljava/lang/Float;)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/z;->f:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    invoke-virtual {v1, p1, p2}, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;->render(ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    const-string p2, "GlOverlayLayer"

    const-string v1, "draw"

    invoke-static {p1, p2, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    monitor-exit p0

    return v0

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getCurrentParticleNum(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/z;->f:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;->getCurrentParticleNum(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getFinalMatrix()[F
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/z;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getFinalMatrix()[F

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0x10

    new-array p0, p0, [F

    return-object p0
.end method

.method public final getGLShaderManager()Lcom/amap/api/col/l3s/dl;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/z;->c:Lcom/amap/api/col/l3s/dl;

    return-object p0
.end method

.method public final declared-synchronized getHitOverlay(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/Polyline;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/z;->f:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/z;->f:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    invoke-virtual {v0, p1}, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;->contain(Lcom/amap/api/maps/model/LatLng;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/z;->g:Ljava/util/Map;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/amap/api/col/l3s/z;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/amap/api/maps/model/Polyline;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-object v1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/z;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    return-object p0
.end method

.method public final getNativeProperties(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/z;->f:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;->getNativeProperties(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getNearestLatLng(Lcom/amap/api/maps/model/PolylineOptions;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;
    .locals 5

    const/4 p0, 0x0

    if-eqz p2, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getPoints()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    if-nez v1, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    invoke-static {p2, v0}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v0

    goto :goto_1

    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps/model/LatLng;

    invoke-static {p2, v3}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v3

    cmpl-float v4, v0, v3

    if-lez v4, :cond_3

    move v2, v1

    move v0, v3

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/maps/model/LatLng;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string p2, "PolylineDelegate"

    const-string v0, "getNearestLatLng"

    invoke-static {p1, p2, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_2
    return-object p0
.end method

.method public final getTextureItem(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/col/l3s/af;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final loadBitmapDescription(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/z;->i:Lcom/amap/api/maps/model/BitmapDescriptor;

    const-string v1, "amap_sdk_lineTexture.png"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p1, v1}, Lcom/amap/api/col/l3s/ex;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/z;->i:Lcom/amap/api/maps/model/BitmapDescriptor;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/z;->l:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {p1, v1}, Lcom/amap/api/col/l3s/ex;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/z;->l:Lcom/amap/api/maps/model/BitmapDescriptor;

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3s/z;->j:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string v0, "amap_sdk_lineDashTexture_square.png"

    invoke-static {p1, v0}, Lcom/amap/api/col/l3s/ex;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/z;->j:Lcom/amap/api/maps/model/BitmapDescriptor;

    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/l3s/z;->k:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const-string v0, "amap_sdk_lineDashTexture_circle.png"

    invoke-static {p1, v0}, Lcom/amap/api/col/l3s/ex;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/z;->k:Lcom/amap/api/maps/model/BitmapDescriptor;

    :cond_7
    return-void
.end method

.method public final onCreateAMapInstance()V
    .locals 7

    iget-object v0, p0, Lcom/amap/api/col/l3s/z;->f:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    invoke-direct {v0}, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/z;->f:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/z;->f:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;->createNative()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/z;->f:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    iget-object v1, p0, Lcom/amap/api/col/l3s/z;->c:Lcom/amap/api/col/l3s/dl;

    invoke-virtual {v0, v1}, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;->setShaderManager(Lcom/amap/api/col/l3s/dl;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/z;->f:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    invoke-virtual {v0, p0}, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;->setLowFrameListener(Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$setRunLowFrameListener;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/z;->f:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    iget-object v1, p0, Lcom/amap/api/col/l3s/z;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getNativeInstance()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;->setAMapEngine(J)V

    const/4 v0, 0x4

    new-array v1, v0, [Lcom/amap/api/maps/model/BitmapDescriptor;

    iget-object v2, p0, Lcom/amap/api/col/l3s/z;->i:Lcom/amap/api/maps/model/BitmapDescriptor;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/amap/api/col/l3s/z;->j:Lcom/amap/api/maps/model/BitmapDescriptor;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/amap/api/col/l3s/z;->k:Lcom/amap/api/maps/model/BitmapDescriptor;

    aput-object v4, v1, v2

    const/4 v2, 0x3

    iget-object v4, p0, Lcom/amap/api/col/l3s/z;->l:Lcom/amap/api/maps/model/BitmapDescriptor;

    aput-object v4, v1, v2

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v2, v1, v3

    iget-object v4, p0, Lcom/amap/api/col/l3s/z;->f:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/BitmapDescriptor;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v6, ""

    invoke-virtual {v4, v5, v2, v6}, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;->addTexture(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/z;->f:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    iget-object v1, p0, Lcom/amap/api/col/l3s/z;->j:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/l3s/z;->k:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/BitmapDescriptor;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/l3s/z;->i:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v3}, Lcom/amap/api/maps/model/BitmapDescriptor;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/amap/api/col/l3s/z;->l:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;->initDefaultBitmapSymbols(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onSetRunLowFrame(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/z;->setRunLowFrame(Z)V

    return-void
.end method

.method public final prepareIcon(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3s/z;->f:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p2, Lcom/amap/api/maps/model/GroundOverlayOptions;

    if-eqz v0, :cond_2

    check-cast p2, Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-virtual {p2}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getImage()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/amap/api/col/l3s/z;->f:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    invoke-virtual {p2}, Lcom/amap/api/maps/model/BitmapDescriptor;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p0, v0, p2, p1}, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;->addTexture(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    instance-of v0, p2, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz v0, :cond_4

    check-cast p2, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {p2}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getIcon()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/amap/api/col/l3s/z;->f:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    invoke-virtual {p2}, Lcom/amap/api/maps/model/BitmapDescriptor;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p0, v0, p2, p1}, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;->addTexture(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    instance-of v0, p2, Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v0, :cond_9

    check-cast p2, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {p2}, Lcom/amap/api/maps/model/PolylineOptions;->getCustomTextureList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/amap/api/col/l3s/z;->f:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v3, v1, p1}, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;->addTexture(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Lcom/amap/api/maps/model/PolylineOptions;->getCustomTexture()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/amap/api/col/l3s/z;->f:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v2, v0, p1}, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;->addTexture(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p2}, Lcom/amap/api/maps/model/PolylineOptions;->getFootPrintTexture()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/amap/api/col/l3s/z;->f:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v2, v0, p1}, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;->addTexture(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p2}, Lcom/amap/api/maps/model/PolylineOptions;->getEraseTexture()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object p2

    if-eqz p2, :cond_9

    iget-object p0, p0, Lcom/amap/api/col/l3s/z;->f:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    invoke-virtual {p2}, Lcom/amap/api/maps/model/BitmapDescriptor;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p0, v0, p2, p1}, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;->addTexture(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public final processCircleHoleOption(Lcom/amap/api/maps/model/CircleOptions;)V
    .locals 6

    const-string p0, "isHoleOptionsUpdated"

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "Circle"

    invoke-static {v1, v2, p0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move p0, v0

    :goto_0
    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getHoleOptions()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getHoleOptions()Ljava/util/List;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/BaseHoleOptions;

    instance-of v3, v2, Lcom/amap/api/maps/model/PolygonHoleOptions;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/amap/api/maps/model/PolygonHoleOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getRadius()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v5

    invoke-static {v3, v4, v5, p0, v2}, Lcom/amap/api/col/l3s/ex;->a(DLcom/amap/api/maps/model/LatLng;Ljava/util/List;Lcom/amap/api/maps/model/PolygonHoleOptions;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0, v2}, Lcom/amap/api/col/l3s/ex;->a(Ljava/util/List;Lcom/amap/api/maps/model/PolygonHoleOptions;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_0
    instance-of v3, v2, Lcom/amap/api/maps/model/CircleHoleOptions;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/amap/api/maps/model/CircleHoleOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getRadius()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v5

    invoke-static {v3, v4, v5, v2}, Lcom/amap/api/col/l3s/ex;->a(DLcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/CircleHoleOptions;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0, v2}, Lcom/amap/api/col/l3s/ex;->a(Ljava/util/List;Lcom/amap/api/maps/model/CircleHoleOptions;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_2
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getHoleOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p1, p0}, Lcom/amap/api/maps/model/CircleOptions;->addHoles(Ljava/lang/Iterable;)Lcom/amap/api/maps/model/CircleOptions;

    :cond_3
    return-void
.end method

.method public final processPolygonHoleOption(Lcom/amap/api/maps/model/PolygonOptions;)V
    .locals 4

    const-string p0, "isHoleOptionsUpdated"

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "Polygon"

    invoke-static {v1, v2, p0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move p0, v0

    :goto_0
    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getHoleOptions()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getHoleOptions()Ljava/util/List;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/BaseHoleOptions;

    instance-of v3, v2, Lcom/amap/api/maps/model/PolygonHoleOptions;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/amap/api/maps/model/PolygonHoleOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getPoints()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/amap/api/col/l3s/ex;->b(Ljava/util/List;Lcom/amap/api/maps/model/PolygonHoleOptions;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0, v2}, Lcom/amap/api/col/l3s/ex;->a(Ljava/util/List;Lcom/amap/api/maps/model/PolygonHoleOptions;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_0
    instance-of v3, v2, Lcom/amap/api/maps/model/CircleHoleOptions;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/amap/api/maps/model/CircleHoleOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getPoints()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, p0, v2}, Lcom/amap/api/col/l3s/ex;->a(Ljava/util/List;Ljava/util/List;Lcom/amap/api/maps/model/CircleHoleOptions;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0, v2}, Lcom/amap/api/col/l3s/ex;->a(Ljava/util/List;Lcom/amap/api/maps/model/CircleHoleOptions;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_2
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p0}, Lcom/amap/api/maps/model/PolygonOptions;->setHoleOptions(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public final removeOverlay(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/z;->f:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;->removeOverlay(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/z;->g:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/z;->g:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeOverlay(Ljava/lang/String;Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final setGlShaderManager(Lcom/amap/api/col/l3s/dl;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/z;->c:Lcom/amap/api/col/l3s/dl;

    return-void
.end method

.method public final setRunLowFrame(Z)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/z;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    :cond_0
    return-void
.end method

.method public final updateOption(Ljava/lang/String;Lcom/amap/api/maps/model/BaseOptions;)V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/z;->setRunLowFrame(Z)V

    invoke-virtual {p0, p1, p2}, Lcom/amap/api/col/l3s/z;->prepareIcon(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/z;->f:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    invoke-virtual {p0, p1, p2}, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;->updateOptions(Ljava/lang/String;Lcom/amap/api/maps/model/BaseOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "GlOverlayLayer"

    const-string p2, "updateOption"

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
