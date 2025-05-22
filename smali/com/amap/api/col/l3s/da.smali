.class public final Lcom/amap/api/col/l3s/da;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/autonavi/amap/mapcore/interfaces/IHeatMapLayer;
.implements Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;


# instance fields
.field a:J

.field private b:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:F

.field private f:Z

.field private g:Lcom/amap/api/col/l3s/dl;

.field private h:Lcom/amap/api/maps/model/HeatMapLayerOptions;

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/interfaces/IGlOverlayLayer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/amap/api/col/l3s/da;->a:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/da;->c:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3s/da;->e:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/da;->i:Z

    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/col/l3s/da;->i:Z

    iput-object p1, p0, Lcom/amap/api/col/l3s/da;->b:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/da;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/da;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/amap/api/col/l3s/dl;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/da;->g:Lcom/amap/api/col/l3s/dl;

    return-void
.end method

.method public final calMapFPoint()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final checkInBounds()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final destroy()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/col/l3s/da;->i:Z

    iget-wide v0, p0, Lcom/amap/api/col/l3s/da;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/amap/api/col/l3s/da;->a:J

    invoke-static {v0, v1}, Lcom/autonavi/base/amap/mapcore/AMapNativeHeatMapLayer;->nativeDestroy(J)J

    iput-wide v2, p0, Lcom/amap/api/col/l3s/da;->a:J

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final draw(Lcom/autonavi/base/amap/mapcore/MapConfig;)V
    .locals 24

    move-object/from16 v1, p0

    :try_start_0
    iget-boolean v0, v1, Lcom/amap/api/col/l3s/da;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v1, Lcom/amap/api/col/l3s/da;->b:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/amap/api/col/l3s/da;->g:Lcom/amap/api/col/l3s/dl;

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/amap/api/col/l3s/da;->b:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v0}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getGLShaderManager()Lcom/amap/api/col/l3s/dl;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/col/l3s/da;->g:Lcom/amap/api/col/l3s/dl;

    :cond_1
    iget-object v0, v1, Lcom/amap/api/col/l3s/da;->g:Lcom/amap/api/col/l3s/dl;

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-boolean v0, v1, Lcom/amap/api/col/l3s/da;->c:Z

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-wide v2, v1, Lcom/amap/api/col/l3s/da;->a:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_14

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-wide v2, v1, Lcom/amap/api/col/l3s/da;->a:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_13

    iget-boolean v0, v1, Lcom/amap/api/col/l3s/da;->f:Z

    if-eqz v0, :cond_12

    iget-object v0, v1, Lcom/amap/api/col/l3s/da;->h:Lcom/amap/api/maps/model/HeatMapLayerOptions;

    const/4 v2, 0x0

    if-nez v0, :cond_6

    :cond_5
    :goto_0
    move v0, v2

    goto :goto_1

    :cond_6
    iget-object v0, v1, Lcom/amap/api/col/l3s/da;->h:Lcom/amap/api/maps/model/HeatMapLayerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/HeatMapLayerOptions;->getData()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/amap/api/col/l3s/da;->h:Lcom/amap/api/maps/model/HeatMapLayerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/HeatMapLayerOptions;->getData()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-gtz v0, :cond_7

    goto :goto_0

    :cond_7
    iget-object v0, v1, Lcom/amap/api/col/l3s/da;->h:Lcom/amap/api/maps/model/HeatMapLayerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/HeatMapLayerOptions;->getGradient()Lcom/amap/api/maps/model/Gradient;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    iget-object v0, v1, Lcom/amap/api/col/l3s/da;->h:Lcom/amap/api/maps/model/HeatMapLayerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/HeatMapLayerOptions;->getGradient()Lcom/amap/api/maps/model/Gradient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Gradient;->getColors()[I

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/amap/api/col/l3s/da;->h:Lcom/amap/api/maps/model/HeatMapLayerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/HeatMapLayerOptions;->getGradient()Lcom/amap/api/maps/model/Gradient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Gradient;->getColors()[I

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_9

    goto :goto_0

    :cond_9
    iget-object v0, v1, Lcom/amap/api/col/l3s/da;->h:Lcom/amap/api/maps/model/HeatMapLayerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/HeatMapLayerOptions;->getGradient()Lcom/amap/api/maps/model/Gradient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Gradient;->getStartPoints()[F

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/amap/api/col/l3s/da;->h:Lcom/amap/api/maps/model/HeatMapLayerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/HeatMapLayerOptions;->getGradient()Lcom/amap/api/maps/model/Gradient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Gradient;->getStartPoints()[F

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_12

    iget-object v0, v1, Lcom/amap/api/col/l3s/da;->h:Lcom/amap/api/maps/model/HeatMapLayerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/HeatMapLayerOptions;->getData()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    new-array v5, v0, [D

    const-wide/16 v3, 0x0

    iget-object v0, v1, Lcom/amap/api/col/l3s/da;->h:Lcom/amap/api/maps/model/HeatMapLayerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/HeatMapLayerOptions;->getData()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    move v10, v2

    move-wide v8, v6

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/amap/api/maps/model/WeightedLatLng;

    if-eqz v11, :cond_f

    iget-object v12, v11, Lcom/amap/api/maps/model/WeightedLatLng;->latLng:Lcom/amap/api/maps/model/LatLng;

    if-eqz v12, :cond_f

    mul-int/lit8 v12, v10, 0x3

    add-int/lit8 v13, v12, 0x0

    iget-object v14, v11, Lcom/amap/api/maps/model/WeightedLatLng;->latLng:Lcom/amap/api/maps/model/LatLng;

    iget-wide v14, v14, Lcom/amap/api/maps/model/LatLng;->latitude:D

    aput-wide v14, v5, v13

    add-int/lit8 v13, v12, 0x1

    iget-object v14, v11, Lcom/amap/api/maps/model/WeightedLatLng;->latLng:Lcom/amap/api/maps/model/LatLng;

    iget-wide v14, v14, Lcom/amap/api/maps/model/LatLng;->longitude:D

    aput-wide v14, v5, v13

    add-int/lit8 v12, v12, 0x2

    iget-wide v13, v11, Lcom/amap/api/maps/model/WeightedLatLng;->intensity:D

    aput-wide v13, v5, v12

    iget-object v11, v11, Lcom/amap/api/maps/model/WeightedLatLng;->latLng:Lcom/amap/api/maps/model/LatLng;

    iget-wide v11, v11, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v13

    if-eqz v13, :cond_b

    move-wide v6, v11

    :cond_b
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v13

    if-eqz v13, :cond_c

    move-wide v8, v11

    :cond_c
    cmpl-double v13, v11, v8

    if-lez v13, :cond_d

    move-wide v8, v11

    :cond_d
    cmpg-double v13, v11, v6

    if-gez v13, :cond_e

    goto :goto_3

    :cond_e
    move-wide v11, v6

    :goto_3
    move-wide v6, v11

    goto :goto_4

    :cond_f
    const-string v11, "mapcore"

    const-string v12, "read file failed"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_10
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_11

    add-double/2addr v6, v8

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v3

    move-wide v15, v6

    goto :goto_5

    :cond_11
    move-wide v15, v3

    :goto_5
    iget-wide v3, v1, Lcom/amap/api/col/l3s/da;->a:J

    iget-object v0, v1, Lcom/amap/api/col/l3s/da;->h:Lcom/amap/api/maps/model/HeatMapLayerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/HeatMapLayerOptions;->getMaxIntensity()D

    move-result-wide v6

    double-to-int v6, v6

    iget-object v0, v1, Lcom/amap/api/col/l3s/da;->h:Lcom/amap/api/maps/model/HeatMapLayerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/HeatMapLayerOptions;->getSize()F

    move-result v7

    iget-object v0, v1, Lcom/amap/api/col/l3s/da;->h:Lcom/amap/api/maps/model/HeatMapLayerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/HeatMapLayerOptions;->getGradient()Lcom/amap/api/maps/model/Gradient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Gradient;->getColors()[I

    move-result-object v8

    iget-object v0, v1, Lcom/amap/api/col/l3s/da;->h:Lcom/amap/api/maps/model/HeatMapLayerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/HeatMapLayerOptions;->getGradient()Lcom/amap/api/maps/model/Gradient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Gradient;->getStartPoints()[F

    move-result-object v9

    iget-object v0, v1, Lcom/amap/api/col/l3s/da;->h:Lcom/amap/api/maps/model/HeatMapLayerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/HeatMapLayerOptions;->getMaxZoom()F

    move-result v10

    iget-object v0, v1, Lcom/amap/api/col/l3s/da;->h:Lcom/amap/api/maps/model/HeatMapLayerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/HeatMapLayerOptions;->getMinZoom()F

    move-result v11

    iget-object v0, v1, Lcom/amap/api/col/l3s/da;->h:Lcom/amap/api/maps/model/HeatMapLayerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/HeatMapLayerOptions;->getOpacity()F

    move-result v12

    iget-object v0, v1, Lcom/amap/api/col/l3s/da;->h:Lcom/amap/api/maps/model/HeatMapLayerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/HeatMapLayerOptions;->getGap()F

    move-result v13

    iget-object v0, v1, Lcom/amap/api/col/l3s/da;->h:Lcom/amap/api/maps/model/HeatMapLayerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/HeatMapLayerOptions;->getType()I

    move-result v14

    invoke-static/range {v3 .. v16}, Lcom/autonavi/base/amap/mapcore/AMapNativeHeatMapLayer;->nativeSetOptions(J[DIF[I[FFFFFID)V

    iput-boolean v2, v1, Lcom/amap/api/col/l3s/da;->f:Z

    :cond_12
    iget-wide v2, v1, Lcom/amap/api/col/l3s/da;->a:J

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getViewMatrix()[F

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getProjectionMatrix()[F

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v4

    double-to-int v0, v4

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result v23

    move-wide/from16 v17, v2

    move/from16 v21, v0

    move/from16 v22, v4

    invoke-static/range {v17 .. v23}, Lcom/autonavi/base/amap/mapcore/AMapNativeHeatMapLayer;->nativeRender(J[F[FIIF)V

    :cond_13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :cond_14
    invoke-static {}, Lcom/autonavi/base/amap/mapcore/AMapNativeHeatMapLayer;->nativeCreate()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/amap/api/col/l3s/da;->a:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_15

    iget-object v0, v1, Lcom/amap/api/col/l3s/da;->g:Lcom/amap/api/col/l3s/dl;

    if-eqz v0, :cond_15

    iget-object v0, v1, Lcom/amap/api/col/l3s/da;->g:Lcom/amap/api/col/l3s/dl;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/dl;->a()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Lcom/autonavi/base/amap/mapcore/AMapNativeHeatMapLayer;->nativeSetGLShaderManager(JJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_15
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getHeatMapItem(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/HeatMapItem;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-wide v1, p0, Lcom/amap/api/col/l3s/da;->a:J

    const-wide/16 v3, -0x1

    cmp-long p0, v1, v3

    if-eqz p0, :cond_1

    iget-wide v3, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v5, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-static/range {v1 .. v6}, Lcom/autonavi/base/amap/mapcore/AMapNativeHeatMapLayer;->nativeGetHeatMapItem(JDD)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of p1, p0, Lcom/amap/api/maps/model/HeatMapItem;

    if-eqz p1, :cond_1

    check-cast p0, Lcom/amap/api/maps/model/HeatMapItem;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/da;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/da;->b:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    const-string v1, "HeatMapLayer"

    invoke-interface {v0, v1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->createId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/da;->d:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/da;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final getOptions()Lcom/amap/api/maps/model/HeatMapLayerOptions;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/da;->h:Lcom/amap/api/maps/model/HeatMapLayerOptions;

    return-object p0
.end method

.method public final getZIndex()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/da;->e:F

    return p0
.end method

.method public final hashCodeRemote()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isAboveMaskLayer()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isDrawFinish()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/da;->c:Z

    return p0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/da;->b:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3s/da;->d:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->removeOverlay(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/da;->destroy()V

    :cond_0
    return-void
.end method

.method public final setAboveMaskLayer(Z)V
    .locals 0

    return-void
.end method

.method public final setOptions(Lcom/amap/api/maps/model/HeatMapLayerOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/da;->h:Lcom/amap/api/maps/model/HeatMapLayerOptions;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/HeatMapLayerOptions;->getZIndex()F

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/da;->e:F

    iget-object p1, p0, Lcom/amap/api/col/l3s/da;->h:Lcom/amap/api/maps/model/HeatMapLayerOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/HeatMapLayerOptions;->isVisible()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/da;->c:Z

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/da;->f:Z

    return-void
.end method

.method public final setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/da;->c:Z

    return-void
.end method

.method public final setZIndex(F)V
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/amap/api/col/l3s/da;->e:F

    iget-object p0, p0, Lcom/amap/api/col/l3s/da;->b:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {p0}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->changeOverlayIndex()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
