.class public final Lcom/amap/api/col/l3s/cw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/autonavi/amap/api/mapcore/overlays/IBuildingDelegate;
.implements Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;


# instance fields
.field a:J

.field private b:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

.field private c:Lcom/amap/api/maps/model/BuildingOverlayOptions;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BuildingOverlayOptions;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BuildingOverlayOptions;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:F

.field private i:Z

.field private j:Lcom/amap/api/col/l3s/dl;


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/interfaces/IGlOverlayLayer;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/amap/api/col/l3s/cw;->a:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/cw;->d:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/cw;->f:Z

    :try_start_0
    iput-object p1, p0, Lcom/amap/api/col/l3s/cw;->b:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    iget-object p1, p0, Lcom/amap/api/col/l3s/cw;->c:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    if-nez p1, :cond_0

    new-instance p1, Lcom/amap/api/maps/model/BuildingOverlayOptions;

    invoke-direct {p1}, Lcom/amap/api/maps/model/BuildingOverlayOptions;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/cw;->c:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/model/BuildingOverlayOptions;->setVisible(Z)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    const-wide v2, -0x3f99833333333333L    # -179.9

    const-wide v4, 0x405539999999999aL    # 84.9

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    const-wide v6, 0x40667ccccccccccdL    # 179.9

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    const-wide v4, -0x3faac66666666666L    # -84.9

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/amap/api/col/l3s/cw;->c:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    invoke-virtual {v1, p1}, Lcom/amap/api/maps/model/BuildingOverlayOptions;->setBuildingLatlngs(Ljava/util/List;)Lcom/amap/api/maps/model/BuildingOverlayOptions;

    iget-object p1, p0, Lcom/amap/api/col/l3s/cw;->c:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    const/high16 v1, -0x10000

    invoke-virtual {p1, v1}, Lcom/amap/api/maps/model/BuildingOverlayOptions;->setBuildingTopColor(I)Lcom/amap/api/maps/model/BuildingOverlayOptions;

    iget-object p1, p0, Lcom/amap/api/col/l3s/cw;->c:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    const v1, -0xbbbbbc

    invoke-virtual {p1, v1}, Lcom/amap/api/maps/model/BuildingOverlayOptions;->setBuildingSideColor(I)Lcom/amap/api/maps/model/BuildingOverlayOptions;

    iget-object p1, p0, Lcom/amap/api/col/l3s/cw;->c:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/model/BuildingOverlayOptions;->setVisible(Z)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/cw;->c:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Lcom/amap/api/maps/model/BuildingOverlayOptions;->setZIndex(F)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/cw;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/amap/api/col/l3s/cw;->c:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/cw;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/cw;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/cw;->g:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "BuildingOverlayDelegateImp"

    const-string v0, "create"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private a(Z)V
    .locals 2

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/cw;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/amap/api/col/l3s/cw;->c:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/cw;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/amap/api/col/l3s/cw;->e:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/amap/api/col/l3s/cw;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/amap/api/col/l3s/cw;->c:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/amap/api/col/l3s/cw;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/amap/api/col/l3s/cw;->e:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/cw;->i:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/amap/api/col/l3s/dl;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/cw;->j:Lcom/amap/api/col/l3s/dl;

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

    :try_start_0
    iget-wide v0, p0, Lcom/amap/api/col/l3s/cw;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/amap/api/col/l3s/cw;->a:J

    invoke-static {v0, v1}, Lcom/autonavi/base/amap/mapcore/AMapNativeBuildingRenderer;->nativeDestory(J)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/cw;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/cw;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/cw;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/amap/api/col/l3s/cw;->c:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    iput-wide v2, p0, Lcom/amap/api/col/l3s/cw;->a:J

    :cond_1
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
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/amap/api/col/l3s/cw;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-wide v0, p0, Lcom/amap/api/col/l3s/cw;->a:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/cw;->i:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/amap/api/col/l3s/cw;->a:J

    invoke-static {v0, v1}, Lcom/autonavi/base/amap/mapcore/AMapNativeBuildingRenderer;->nativeClearBuildingOptions(J)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/amap/api/col/l3s/cw;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/l3s/cw;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/BuildingOverlayOptions;

    iget-wide v3, p0, Lcom/amap/api/col/l3s/cw;->a:J

    invoke-static {v3, v4, v2}, Lcom/autonavi/base/amap/mapcore/AMapNativeBuildingRenderer;->addBuildingOptions(JLcom/amap/api/maps/model/BuildingOverlayOptions;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/amap/api/col/l3s/cw;->i:Z

    :cond_2
    iget-wide v0, p0, Lcom/amap/api/col/l3s/cw;->a:J

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getViewMatrix()[F

    move-result-object v2

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getProjectionMatrix()[F

    move-result-object v3

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v5

    double-to-int v5, v5

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result v6

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getCurTileIds()[I

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/autonavi/base/amap/mapcore/AMapNativeBuildingRenderer;->render(J[F[FIIF[I)V

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_4
    invoke-static {}, Lcom/autonavi/base/amap/mapcore/AMapNativeBuildingRenderer;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/cw;->a:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/amap/api/col/l3s/cw;->j:Lcom/amap/api/col/l3s/dl;

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/amap/api/col/l3s/cw;->j:Lcom/amap/api/col/l3s/dl;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/dl;->a()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lcom/autonavi/base/amap/mapcore/AMapNativeBuildingRenderer;->nativeSetGLShaderManager(JJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getCustomOptions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BuildingOverlayOptions;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/amap/api/col/l3s/cw;->e:Ljava/util/List;

    return-object p0
.end method

.method public final getDefaultOptions()Lcom/amap/api/maps/model/BuildingOverlayOptions;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/cw;->c:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/cw;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/cw;->b:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    const-string v1, "Building"

    invoke-interface {v0, v1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->createId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/cw;->g:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/cw;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final getZIndex()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/cw;->h:F

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

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/cw;->f:Z

    return p0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/cw;->b:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3s/cw;->g:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->removeOverlay(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/cw;->destroy()V

    :cond_0
    return-void
.end method

.method public final setAboveMaskLayer(Z)V
    .locals 0

    return-void
.end method

.method public final setCustomOptions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BuildingOverlayOptions;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/amap/api/col/l3s/cw;->e:Ljava/util/List;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/cw;->a(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public final setDefaultOptions(Lcom/amap/api/maps/model/BuildingOverlayOptions;)V
    .locals 0

    if-eqz p1, :cond_0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/amap/api/col/l3s/cw;->c:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/cw;->a(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public final setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/cw;->f:Z

    return-void
.end method

.method public final setZIndex(F)V
    .locals 1

    :try_start_0
    iput p1, p0, Lcom/amap/api/col/l3s/cw;->h:F

    iget-object p1, p0, Lcom/amap/api/col/l3s/cw;->b:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {p1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->changeOverlayIndex()V

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/cw;->c:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    iget v0, p0, Lcom/amap/api/col/l3s/cw;->h:F

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/model/BuildingOverlayOptions;->setZIndex(F)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    :try_start_2
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/cw;->a(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
