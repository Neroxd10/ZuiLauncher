.class public final Lcom/amap/api/col/l3s/ai;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/ai$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/base/amap/api/mapcore/overlays/ITileOverlayDelegate;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/amap/api/col/l3s/ai$a;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/amap/api/col/l3s/dj;

.field e:[F

.field private f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field private g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/ai;->a:Ljava/util/List;

    new-instance v0, Lcom/amap/api/col/l3s/ai$a;

    invoke-direct {v0}, Lcom/amap/api/col/l3s/ai$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/ai;->b:Lcom/amap/api/col/l3s/ai$a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/ai;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/ai;->d:Lcom/amap/api/col/l3s/dj;

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/amap/api/col/l3s/ai;->e:[F

    iput-object p2, p0, Lcom/amap/api/col/l3s/ai;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iput-object p1, p0, Lcom/amap/api/col/l3s/ai;->g:Landroid/content/Context;

    new-instance p1, Lcom/amap/api/col/l3s/ea;

    iget-object p2, p0, Lcom/amap/api/col/l3s/ai;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amap/api/col/l3s/ea;-><init>(Lcom/autonavi/base/amap/mapcore/MapConfig;)V

    new-instance p2, Lcom/amap/api/maps/model/TileOverlayOptions;

    invoke-direct {p2}, Lcom/amap/api/maps/model/TileOverlayOptions;-><init>()V

    invoke-virtual {p2, p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->tileProvider(Lcom/amap/api/maps/model/TileProvider;)Lcom/amap/api/maps/model/TileOverlayOptions;

    move-result-object p1

    const/high16 p2, 0xa00000

    invoke-virtual {p1, p2}, Lcom/amap/api/maps/model/TileOverlayOptions;->memCacheSize(I)Lcom/amap/api/maps/model/TileOverlayOptions;

    const/16 p2, 0x5000

    invoke-virtual {p1, p2}, Lcom/amap/api/maps/model/TileOverlayOptions;->diskCacheSize(I)Lcom/amap/api/maps/model/TileOverlayOptions;

    new-instance p2, Lcom/amap/api/col/l3s/dj;

    const/4 v0, 0x1

    invoke-direct {p2, p1, p0, v0}, Lcom/amap/api/col/l3s/dj;-><init>(Lcom/amap/api/maps/model/TileOverlayOptions;Lcom/amap/api/col/l3s/ai;Z)V

    iput-object p2, p0, Lcom/amap/api/col/l3s/ai;->d:Lcom/amap/api/col/l3s/dj;

    return-void
.end method

.method private b(Lcom/autonavi/base/amap/api/mapcore/overlays/ITileOverlayDelegate;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/ai;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/ai;->a(Lcom/autonavi/base/amap/api/mapcore/overlays/ITileOverlayDelegate;)Z

    iget-object v1, p0, Lcom/amap/api/col/l3s/ai;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ai;->d()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private i()Z
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/ai;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->isLoadWorldGridMap()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/amap/api/col/l3s/ai;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "en"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Lcom/amap/api/maps/model/TileOverlayOptions;)Lcom/amap/api/maps/model/TileOverlay;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getTileProvider()Lcom/amap/api/maps/model/TileProvider;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/amap/api/col/l3s/dj;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/amap/api/col/l3s/dj;-><init>(Lcom/amap/api/maps/model/TileOverlayOptions;Lcom/amap/api/col/l3s/ai;Z)V

    invoke-direct {p0, v1}, Lcom/amap/api/col/l3s/ai;->b(Lcom/autonavi/base/amap/api/mapcore/overlays/ITileOverlayDelegate;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lcom/amap/api/col/l3s/dj;->refresh(Z)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/ai;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p0, v2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    new-instance p0, Lcom/amap/api/maps/model/TileOverlay;

    invoke-direct {p0, v1}, Lcom/amap/api/maps/model/TileOverlay;-><init>(Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final a()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ai;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    return-object p0
.end method

.method public final a(I)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ai;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Z)V
    .locals 5

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/l3s/ai;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3s/ai;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/amap/api/maps/model/CameraPosition;->isAbroad:Z

    if-eqz v1, :cond_2

    iget v0, v0, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    const/high16 v1, 0x40c00000    # 6.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/ai;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/ai;->d:Lcom/amap/api/col/l3s/dj;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3s/ai;->d:Lcom/amap/api/col/l3s/dj;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/dj;->refresh(Z)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/ai;->d:Lcom/amap/api/col/l3s/dj;

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/ai;->d:Lcom/amap/api/col/l3s/dj;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3s/ai;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3s/ai;->d:Lcom/amap/api/col/l3s/dj;

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/ai;->d:Lcom/amap/api/col/l3s/dj;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/dj;->a()V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/ai;->a:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/l3s/ai;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_6

    iget-object v3, p0, Lcom/amap/api/col/l3s/ai;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/base/amap/api/mapcore/overlays/ITileOverlayDelegate;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3, p1}, Lcom/autonavi/base/amap/api/mapcore/overlays/ITileOverlayDelegate;->refresh(Z)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    const-string p1, "TileOverlayView"

    const-string v0, "refresh"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/autonavi/base/amap/api/mapcore/overlays/ITileOverlayDelegate;)Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/ai;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/ai;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b(Z)V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3s/ai;->d:Lcom/amap/api/col/l3s/dj;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/dj;->onFling(Z)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ai;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/ai;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/amap/api/col/l3s/ai;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/base/amap/api/mapcore/overlays/ITileOverlayDelegate;

    if-eqz v3, :cond_1

    invoke-interface {v3, p1}, Lcom/autonavi/base/amap/api/mapcore/overlays/ITileOverlayDelegate;->onFling(Z)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/ai;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/amap/api/col/l3s/ex;->b(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/ai;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/amap/api/col/l3s/ai;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3s/ai;->d:Lcom/amap/api/col/l3s/dj;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3s/ai;->d:Lcom/amap/api/col/l3s/dj;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/dj;->drawTiles()V

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/l3s/ai;->a:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/amap/api/col/l3s/ai;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_3

    iget-object v4, p0, Lcom/amap/api/col/l3s/ai;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autonavi/base/amap/api/mapcore/overlays/ITileOverlayDelegate;

    invoke-interface {v4}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Lcom/autonavi/base/amap/api/mapcore/overlays/ITileOverlayDelegate;->drawTiles()V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    monitor-exit v1

    const/4 v0, 0x1

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :goto_2
    return v0
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Lcom/amap/api/col/l3s/ai;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/ai;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/amap/api/col/l3s/ai;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/base/amap/api/mapcore/overlays/ITileOverlayDelegate;

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->destroy(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/ai;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/ai;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/ai;->a:Ljava/util/List;

    iget-object p0, p0, Lcom/amap/api/col/l3s/ai;->b:Lcom/amap/api/col/l3s/ai$a;

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3s/ai;->d:Lcom/amap/api/col/l3s/dj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/dj;->onResume()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ai;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/ai;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/amap/api/col/l3s/ai;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/base/amap/api/mapcore/overlays/ITileOverlayDelegate;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/overlays/ITileOverlayDelegate;->onResume()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final f()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ai;->g:Landroid/content/Context;

    return-object p0
.end method

.method public final g()[F
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/ai;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getFinalMatrix()[F

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/ai;->e:[F

    return-object p0
.end method

.method public final h()V
    .locals 5

    iget-object v0, p0, Lcom/amap/api/col/l3s/ai;->d:Lcom/amap/api/col/l3s/dj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/dj;->clearTileCache()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/ai;->g:Landroid/content/Context;

    const-string v1, "Map3DCache"

    const-string v2, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/col/l3s/en;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ai;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/ai;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/amap/api/col/l3s/ai;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/base/amap/api/mapcore/overlays/ITileOverlayDelegate;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->clearTileCache()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
