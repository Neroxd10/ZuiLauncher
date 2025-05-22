.class final Lcom/amap/api/col/l3s/k$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/k;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/k;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/k$b;->a:Lcom/amap/api/col/l3s/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/amap/api/col/l3s/ax;)V
    .locals 9

    const-class v0, Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;

    const-class v1, Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

    iget-object v2, p0, Lcom/amap/api/col/l3s/k$b;->a:Lcom/amap/api/col/l3s/k;

    iget-object v2, v2, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isIndoorEnable()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_a

    :cond_0
    iget-object v2, p0, Lcom/amap/api/col/l3s/k$b;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {v2}, Lcom/amap/api/col/l3s/k;->c(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/fo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/col/l3s/fo;->e()Lcom/amap/api/col/l3s/fm;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    const/4 v4, 0x0

    if-nez p1, :cond_8

    :try_start_0
    iget-object v5, p0, Lcom/amap/api/col/l3s/k$b;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {v5}, Lcom/amap/api/col/l3s/k;->b(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/p;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/amap/api/col/l3s/p;->a(I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v6, v4

    :goto_0
    :try_start_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

    invoke-interface {v7, p1}, Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;->OnIndoorBuilding(Lcom/amap/api/maps/model/IndoorBuildingInfo;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/amap/api/col/l3s/k$b;->a:Lcom/amap/api/col/l3s/k;

    iget-object v5, v5, Lcom/amap/api/col/l3s/k;->d:Lcom/amap/api/col/l3s/ax;

    if-eqz v5, :cond_3

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/amap/api/col/l3s/ax;->g:Landroid/graphics/Point;

    :cond_3
    invoke-virtual {v2}, Lcom/amap/api/col/l3s/fm;->b()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/amap/api/col/l3s/k$b;->a:Lcom/amap/api/col/l3s/k;

    iget-object v5, v5, Lcom/amap/api/col/l3s/k;->j:Landroid/os/Handler;

    new-instance v6, Lcom/amap/api/col/l3s/k$b$1;

    invoke-direct {v6, p0, v2}, Lcom/amap/api/col/l3s/k$b$1;-><init>(Lcom/amap/api/col/l3s/k$b;Lcom/amap/api/col/l3s/fm;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    iget-object v5, p0, Lcom/amap/api/col/l3s/k$b;->a:Lcom/amap/api/col/l3s/k;

    iget-object v5, v5, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v5}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isSetLimitZoomLevel()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/amap/api/col/l3s/k$b;->a:Lcom/amap/api/col/l3s/k;

    iget-object v6, v6, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v6}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result v6

    goto :goto_2

    :cond_5
    move v6, v3

    :goto_2
    iput v6, v5, Lcom/autonavi/base/amap/mapcore/MapConfig;->maxZoomLevel:F

    :try_start_3
    iget-object v5, p0, Lcom/amap/api/col/l3s/k$b;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {v5}, Lcom/amap/api/col/l3s/k;->t(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/aj;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amap/api/col/l3s/aj;->isZoomControlsEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/amap/api/col/l3s/k$b;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {v5}, Lcom/amap/api/col/l3s/k;->b(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/p;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/amap/api/col/l3s/p;->a(I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_7

    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move v6, v4

    :goto_3
    :try_start_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;

    iget-object v8, p0, Lcom/amap/api/col/l3s/k$b;->a:Lcom/amap/api/col/l3s/k;

    iget-object v8, v8, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v8}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result v8

    invoke-interface {v7, v8}, Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;->invalidateZoomController(F)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    monitor-exit v5

    return-void

    :catchall_2
    move-exception v6

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_7
    return-void

    :catchall_3
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    if-eqz p1, :cond_a

    iget-object v5, p1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->floor_indexs:[I

    if-eqz v5, :cond_a

    iget-object v6, p1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->floor_names:[Ljava/lang/String;

    if-eqz v6, :cond_a

    array-length v5, v5

    array-length v6, v6

    if-ne v5, v6, :cond_a

    move v5, v4

    :goto_4
    iget-object v6, p1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->floor_indexs:[I

    array-length v7, v6

    if-ge v5, v7, :cond_a

    iget v7, p1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->activeFloorIndex:I

    aget v6, v6, v5

    if-ne v7, v6, :cond_9

    iget-object v6, p1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->floor_names:[Ljava/lang/String;

    aget-object v5, v6, v5

    iput-object v5, p1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->activeFloorName:Ljava/lang/String;

    goto :goto_5

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    if-eqz p1, :cond_b

    iget-object v5, p0, Lcom/amap/api/col/l3s/k$b;->a:Lcom/amap/api/col/l3s/k;

    iget-object v5, v5, Lcom/amap/api/col/l3s/k;->d:Lcom/amap/api/col/l3s/ax;

    if-eqz v5, :cond_b

    iget v5, v5, Lcom/amap/api/maps/model/IndoorBuildingInfo;->activeFloorIndex:I

    iget v6, p1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->activeFloorIndex:I

    if-eq v5, v6, :cond_b

    invoke-virtual {v2}, Lcom/amap/api/col/l3s/fm;->b()Z

    move-result v5

    if-eqz v5, :cond_b

    return-void

    :cond_b
    if-eqz p1, :cond_e

    iget-object v5, p0, Lcom/amap/api/col/l3s/k$b;->a:Lcom/amap/api/col/l3s/k;

    iget-object v5, v5, Lcom/amap/api/col/l3s/k;->d:Lcom/amap/api/col/l3s/ax;

    if-eqz v5, :cond_c

    iget-object v5, v5, Lcom/amap/api/maps/model/IndoorBuildingInfo;->poiid:Ljava/lang/String;

    iget-object v6, p1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->poiid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/amap/api/col/l3s/k$b;->a:Lcom/amap/api/col/l3s/k;

    iget-object v5, v5, Lcom/amap/api/col/l3s/k;->d:Lcom/amap/api/col/l3s/ax;

    iget-object v5, v5, Lcom/amap/api/col/l3s/ax;->g:Landroid/graphics/Point;

    if-nez v5, :cond_e

    :cond_c
    iget-object v5, p0, Lcom/amap/api/col/l3s/k$b;->a:Lcom/amap/api/col/l3s/k;

    iput-object p1, v5, Lcom/amap/api/col/l3s/k;->d:Lcom/amap/api/col/l3s/ax;

    iget-object v5, v5, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v5, :cond_e

    iget-object v5, p1, Lcom/amap/api/col/l3s/ax;->g:Landroid/graphics/Point;

    if-nez v5, :cond_d

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    iput-object v5, p1, Lcom/amap/api/col/l3s/ax;->g:Landroid/graphics/Point;

    :cond_d
    iget-object v5, p0, Lcom/amap/api/col/l3s/k$b;->a:Lcom/amap/api/col/l3s/k;

    iget-object v5, v5, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v5}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapGeoCenter()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v5

    if-eqz v5, :cond_e

    iget-object v6, p0, Lcom/amap/api/col/l3s/k$b;->a:Lcom/amap/api/col/l3s/k;

    iget-object v6, v6, Lcom/amap/api/col/l3s/k;->d:Lcom/amap/api/col/l3s/ax;

    iget-object v6, v6, Lcom/amap/api/col/l3s/ax;->g:Landroid/graphics/Point;

    iget-wide v7, v5, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    double-to-int v7, v7

    iput v7, v6, Landroid/graphics/Point;->x:I

    iget-wide v7, v5, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    double-to-int v5, v7

    iput v5, v6, Landroid/graphics/Point;->y:I

    :cond_e
    :try_start_6
    iget-object v5, p0, Lcom/amap/api/col/l3s/k$b;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {v5}, Lcom/amap/api/col/l3s/k;->b(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/p;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/amap/api/col/l3s/p;->a(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_10

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    move v5, v4

    :goto_6
    :try_start_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_f

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

    invoke-interface {v6, p1}, Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;->OnIndoorBuilding(Lcom/amap/api/maps/model/IndoorBuildingInfo;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_f
    monitor-exit v1

    goto :goto_7

    :catchall_4
    move-exception p0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    throw p0

    :cond_10
    :goto_7
    iget-object p1, p0, Lcom/amap/api/col/l3s/k$b;->a:Lcom/amap/api/col/l3s/k;

    iget-object p1, p1, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    iget-object v1, p0, Lcom/amap/api/col/l3s/k$b;->a:Lcom/amap/api/col/l3s/k;

    iget-object v1, v1, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isSetLimitZoomLevel()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/amap/api/col/l3s/k$b;->a:Lcom/amap/api/col/l3s/k;

    iget-object v1, v1, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result v3

    :cond_11
    iput v3, p1, Lcom/autonavi/base/amap/mapcore/MapConfig;->maxZoomLevel:F

    iget-object p1, p0, Lcom/amap/api/col/l3s/k$b;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {p1}, Lcom/amap/api/col/l3s/k;->t(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/aj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/aj;->isZoomControlsEnabled()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/amap/api/col/l3s/k$b;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {p1}, Lcom/amap/api/col/l3s/k;->b(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/p;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amap/api/col/l3s/p;->a(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_13

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_13

    monitor-enter p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    move v0, v4

    :goto_8
    :try_start_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_12

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;

    iget-object v3, p0, Lcom/amap/api/col/l3s/k$b;->a:Lcom/amap/api/col/l3s/k;

    iget-object v3, v3, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result v3

    invoke-interface {v1, v3}, Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;->invalidateZoomController(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_12
    monitor-exit p1

    goto :goto_9

    :catchall_5
    move-exception p0

    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :try_start_a
    throw p0

    :cond_13
    :goto_9
    iget-object p1, p0, Lcom/amap/api/col/l3s/k$b;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {p1}, Lcom/amap/api/col/l3s/k;->t(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/aj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/aj;->isIndoorSwitchEnabled()Z

    move-result p1

    if-eqz p1, :cond_15

    invoke-virtual {v2}, Lcom/amap/api/col/l3s/fm;->b()Z

    move-result p1

    if-nez p1, :cond_14

    iget-object p1, p0, Lcom/amap/api/col/l3s/k$b;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {p1}, Lcom/amap/api/col/l3s/k;->t(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/aj;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amap/api/col/l3s/aj;->setIndoorSwitchEnabled(Z)V

    :cond_14
    iget-object p1, p0, Lcom/amap/api/col/l3s/k$b;->a:Lcom/amap/api/col/l3s/k;

    iget-object p1, p1, Lcom/amap/api/col/l3s/k;->j:Landroid/os/Handler;

    new-instance v0, Lcom/amap/api/col/l3s/k$b$2;

    invoke-direct {v0, p0, v2}, Lcom/amap/api/col/l3s/k$b$2;-><init>(Lcom/amap/api/col/l3s/k$b;Lcom/amap/api/col/l3s/fm;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_15
    iget-object p1, p0, Lcom/amap/api/col/l3s/k$b;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {p1}, Lcom/amap/api/col/l3s/k;->t(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/aj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/aj;->isIndoorSwitchEnabled()Z

    move-result p1

    if-nez p1, :cond_16

    invoke-virtual {v2}, Lcom/amap/api/col/l3s/fm;->b()Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p0, p0, Lcom/amap/api/col/l3s/k$b;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {p0}, Lcom/amap/api/col/l3s/k;->t(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/aj;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/amap/api/col/l3s/aj;->setIndoorSwitchEnabled(Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :cond_16
    return-void

    :catchall_6
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_17
    :goto_a
    return-void
.end method
