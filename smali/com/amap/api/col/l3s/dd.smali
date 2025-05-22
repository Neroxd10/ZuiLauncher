.class public final Lcom/amap/api/col/l3s/dd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/autonavi/base/amap/api/mapcore/overlays/INavigateArrowDelegate;


# instance fields
.field private A:Z

.field a:[I

.field b:[I

.field c:F

.field d:F

.field e:F

.field f:F

.field g:Landroid/graphics/Rect;

.field h:Z

.field i:[F

.field j:I

.field private k:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field private l:F

.field private m:I

.field private n:I

.field private o:F

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;"
        }
    .end annotation
.end field

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Ljava/lang/Object;

.field private y:Ljava/lang/String;

.field private final z:I


# direct methods
.method public constructor <init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/amap/api/col/l3s/dd;->l:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/amap/api/col/l3s/dd;->m:I

    iput v0, p0, Lcom/amap/api/col/l3s/dd;->n:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3s/dd;->o:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/dd;->p:Z

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/l3s/dd;->r:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/col/l3s/dd;->a:[I

    iput-object v1, p0, Lcom/amap/api/col/l3s/dd;->b:[I

    const/4 v2, 0x0

    iput v2, p0, Lcom/amap/api/col/l3s/dd;->s:I

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/dd;->t:Z

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/dd;->u:Z

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/dd;->v:Z

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/dd;->w:Z

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/amap/api/col/l3s/dd;->x:Ljava/lang/Object;

    iput-object v1, p0, Lcom/amap/api/col/l3s/dd;->g:Landroid/graphics/Rect;

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/dd;->h:Z

    iput v2, p0, Lcom/amap/api/col/l3s/dd;->j:I

    iput-object v1, p0, Lcom/amap/api/col/l3s/dd;->y:Ljava/lang/String;

    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/amap/api/col/l3s/dd;->z:I

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/dd;->A:Z

    iput-object p1, p0, Lcom/amap/api/col/l3s/dd;->k:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/dd;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/dd;->q:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "NavigateArrowDelegateImp"

    const-string v1, "create"

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    iput-boolean v2, p0, Lcom/amap/api/col/l3s/dd;->h:Z

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/dd;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/dd;->k:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    return-object p0
.end method

.method private a()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3s/dd;->r:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/dd;->x:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/amap/api/col/l3s/dd;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/amap/mapcore/IPoint;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v4

    iget-object v5, p0, Lcom/amap/api/col/l3s/dd;->k:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-interface {v5, v6, v3, v4}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->geo2Latlng(IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance v3, Lcom/amap/api/maps/model/LatLng;

    iget-wide v5, v4, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v7, v4, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Lcom/autonavi/base/amap/mapcore/MapConfig;)Z
    .locals 8

    iget-object v0, p0, Lcom/amap/api/col/l3s/dd;->x:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v2

    double-to-int p1, v2

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/dd;->t:Z

    iget-object v3, p0, Lcom/amap/api/col/l3s/dd;->r:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/amap/api/col/l3s/dd;->i:[F

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/amap/api/col/l3s/dd;->i:[F

    array-length v4, v4

    mul-int/lit8 v5, v3, 0x3

    if-ge v4, v5, :cond_1

    :cond_0
    mul-int/lit8 v4, v3, 0x3

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/amap/api/col/l3s/dd;->i:[F

    :cond_1
    mul-int/lit8 v3, v3, 0x3

    iput v3, p0, Lcom/amap/api/col/l3s/dd;->j:I

    iget-object v3, p0, Lcom/amap/api/col/l3s/dd;->r:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autonavi/amap/mapcore/IPoint;

    iget-object v5, p0, Lcom/amap/api/col/l3s/dd;->i:[F

    mul-int/lit8 v6, v2, 0x3

    iget v7, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v1

    int-to-float v7, v7

    aput v7, v5, v6

    iget-object v5, p0, Lcom/amap/api/col/l3s/dd;->i:[F

    add-int/lit8 v7, v6, 0x1

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, p1

    int-to-float v4, v4

    aput v4, v5, v7

    iget-object v4, p0, Lcom/amap/api/col/l3s/dd;->i:[F

    add-int/lit8 v6, v6, 0x2

    const/4 v5, 0x0

    aput v5, v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3s/dd;->r:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/dd;->s:I

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/dd;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/dd;->y:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/amap/api/col/l3s/dd;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/dd;->y:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final calMapFPoint()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final checkInBounds()Z
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/dd;->g:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/dd;->k:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/base/amap/mapcore/Rectangle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/dd;->g:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Lcom/autonavi/base/amap/mapcore/Rectangle;->isOverlap(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final destroy()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/dd;->remove()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/dd;->i:[F

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/dd;->i:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "NavigateArrowDelegateImp"

    const-string v1, "destroy"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "destroy erro"

    const-string v0, "NavigateArrowDelegateImp destroy"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final draw(Lcom/autonavi/base/amap/mapcore/MapConfig;)V
    .locals 21

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/amap/api/col/l3s/dd;->h:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/amap/api/col/l3s/dd;->r:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_6

    iget v1, v0, Lcom/amap/api/col/l3s/dd;->l:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-boolean v1, v0, Lcom/amap/api/col/l3s/dd;->u:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/amap/api/col/l3s/dd;->y:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/amap/api/col/l3s/dd;->v:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/amap/api/col/l3s/dd;->k:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/amap/api/col/l3s/dd;->y:Ljava/lang/String;

    iget-object v7, v0, Lcom/amap/api/col/l3s/dd;->a:[I

    iget-object v8, v0, Lcom/amap/api/col/l3s/dd;->b:[I

    iget v9, v0, Lcom/amap/api/col/l3s/dd;->m:I

    iget v10, v0, Lcom/amap/api/col/l3s/dd;->n:I

    iget v11, v0, Lcom/amap/api/col/l3s/dd;->z:I

    iget v12, v0, Lcom/amap/api/col/l3s/dd;->l:F

    const/16 v13, 0x6f

    const/16 v14, 0xde

    const/16 v15, 0x14d

    const/16 v16, 0x0

    invoke-virtual/range {v4 .. v16}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->updateNativeArrowOverlay(ILjava/lang/String;[I[IIIIFIIIZ)V

    iput-boolean v3, v0, Lcom/amap/api/col/l3s/dd;->A:Z

    :cond_2
    iget-object v1, v0, Lcom/amap/api/col/l3s/dd;->k:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3s/dd;->a(Lcom/autonavi/base/amap/mapcore/MapConfig;)Z

    iget-object v1, v0, Lcom/amap/api/col/l3s/dd;->i:[F

    if-eqz v1, :cond_5

    iget v1, v0, Lcom/amap/api/col/l3s/dd;->s:I

    if-lez v1, :cond_5

    iget-object v1, v0, Lcom/amap/api/col/l3s/dd;->k:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapProjection()Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v1

    iget v4, v0, Lcom/amap/api/col/l3s/dd;->l:F

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Lcom/autonavi/base/ae/gmap/GLMapState;->getMapLenWithWin(I)F

    move-result v7

    iget-object v5, v0, Lcom/amap/api/col/l3s/dd;->i:[F

    iget v6, v0, Lcom/amap/api/col/l3s/dd;->j:I

    iget-object v1, v0, Lcom/amap/api/col/l3s/dd;->k:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureID()I

    move-result v8

    iget-object v1, v0, Lcom/amap/api/col/l3s/dd;->k:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureRatio()F

    move-result v9

    iget v10, v0, Lcom/amap/api/col/l3s/dd;->d:F

    iget v11, v0, Lcom/amap/api/col/l3s/dd;->e:F

    iget v12, v0, Lcom/amap/api/col/l3s/dd;->f:F

    iget v13, v0, Lcom/amap/api/col/l3s/dd;->c:F

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    iget-object v1, v0, Lcom/amap/api/col/l3s/dd;->k:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getFinalMatrix()[F

    move-result-object v18

    const/16 v19, 0x2

    const/16 v20, 0x0

    invoke-static/range {v5 .. v20}, Lcom/autonavi/base/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFFZZZ[FII)V

    iput-boolean v3, v0, Lcom/amap/api/col/l3s/dd;->v:Z

    iput-boolean v3, v0, Lcom/amap/api/col/l3s/dd;->w:Z

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/amap/api/col/l3s/dd;->k:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/amap/api/col/l3s/dd;->y:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/amap/api/col/l3s/dd;->k:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v1

    sget-object v4, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->AMAPOVERLAY_ARROW:Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v1, v2, v4, v5}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->addNativeOverlay(III)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/col/l3s/dd;->y:Ljava/lang/String;

    :cond_4
    iget-object v1, v0, Lcom/amap/api/col/l3s/dd;->y:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-boolean v1, v0, Lcom/amap/api/col/l3s/dd;->A:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/amap/api/col/l3s/dd;->k:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/amap/api/col/l3s/dd;->y:Ljava/lang/String;

    iget-object v7, v0, Lcom/amap/api/col/l3s/dd;->a:[I

    iget-object v8, v0, Lcom/amap/api/col/l3s/dd;->b:[I

    iget v9, v0, Lcom/amap/api/col/l3s/dd;->m:I

    iget v10, v0, Lcom/amap/api/col/l3s/dd;->n:I

    iget v11, v0, Lcom/amap/api/col/l3s/dd;->z:I

    iget v12, v0, Lcom/amap/api/col/l3s/dd;->l:F

    const/16 v13, 0x6f

    const/16 v14, 0xde

    const/16 v15, 0x14d

    iget-boolean v1, v0, Lcom/amap/api/col/l3s/dd;->p:Z

    move/from16 v16, v1

    invoke-virtual/range {v4 .. v16}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->updateNativeArrowOverlay(ILjava/lang/String;[I[IIIIFIIIZ)V

    iput-boolean v2, v0, Lcom/amap/api/col/l3s/dd;->v:Z

    iget-boolean v1, v0, Lcom/amap/api/col/l3s/dd;->p:Z

    iput-boolean v1, v0, Lcom/amap/api/col/l3s/dd;->w:Z

    iput-boolean v3, v0, Lcom/amap/api/col/l3s/dd;->A:Z

    :cond_5
    :goto_0
    iput-boolean v2, v0, Lcom/amap/api/col/l3s/dd;->t:Z

    :cond_6
    :goto_1
    return-void
.end method

.method public final equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/dd;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

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

.method public final getId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/dd;->q:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/dd;->k:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const-string v1, "NavigateArrow"

    invoke-interface {v0, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->createId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/dd;->q:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/dd;->q:Ljava/lang/String;

    return-object p0
.end method

.method public final getPoints()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/amap/api/col/l3s/dd;->a()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getSideColor()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/dd;->n:I

    return p0
.end method

.method public final getTopColor()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/dd;->m:I

    return p0
.end method

.method public final getWidth()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/dd;->l:F

    return p0
.end method

.method public final getZIndex()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/dd;->o:F

    return p0
.end method

.method public final hashCodeRemote()I
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final is3DModel()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/dd;->u:Z

    return p0
.end method

.method public final isAboveMaskLayer()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isDrawFinish()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/dd;->t:Z

    return p0
.end method

.method public final isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/dd;->u:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/dd;->p:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/dd;->w:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    iget-boolean p0, p0, Lcom/amap/api/col/l3s/dd;->p:Z

    return p0
.end method

.method public final remove()V
    .locals 2

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/dd;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/dd;->k:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/dd;->y:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/dd;->k:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    new-instance v1, Lcom/amap/api/col/l3s/dd$1;

    invoke-direct {v1, p0}, Lcom/amap/api/col/l3s/dd$1;-><init>(Lcom/amap/api/col/l3s/dd;)V

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->queueEvent(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/dd;->k:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/dd;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->removeGLOverlay(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/amap/api/col/l3s/dd;->k:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/dd;->h:Z

    return-void
.end method

.method public final set3DModel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/dd;->u:Z

    iget-boolean p1, p0, Lcom/amap/api/col/l3s/dd;->p:Z

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/dd;->w:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/dd;->A:Z

    return-void
.end method

.method public final setAboveMaskLayer(Z)V
    .locals 0

    return-void
.end method

.method public final setPoints(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3s/dd;->x:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/dd;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/amap/api/col/l3s/dd;->g:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/l3s/dd;->g:Landroid/graphics/Rect;

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/dd;->g:Landroid/graphics/Rect;

    invoke-static {v1}, Lcom/amap/api/col/l3s/ex;->a(Landroid/graphics/Rect;)V

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/LatLng;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lcom/amap/api/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    iget-object v4, p0, Lcom/amap/api/col/l3s/dd;->k:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-wide v5, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v7, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v9, v1

    invoke-interface/range {v4 .. v9}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->latlon2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    iget-object v3, p0, Lcom/amap/api/col/l3s/dd;->r:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/amap/api/col/l3s/dd;->g:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4, v1}, Lcom/amap/api/col/l3s/ex;->b(Landroid/graphics/Rect;II)V

    move-object v1, v2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput p1, p0, Lcom/amap/api/col/l3s/dd;->s:I

    iget-object v1, p0, Lcom/amap/api/col/l3s/dd;->g:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->sort()V

    iget-object v1, p0, Lcom/amap/api/col/l3s/dd;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/amap/api/col/l3s/dd;->a:[I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/amap/api/col/l3s/dd;->b:[I

    iget-object v1, p0, Lcom/amap/api/col/l3s/dd;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, p1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/amap/mapcore/IPoint;

    iget-object v4, p0, Lcom/amap/api/col/l3s/dd;->a:[I

    iget v5, v3, Landroid/graphics/Point;->x:I

    aput v5, v4, v2

    iget-object v4, p0, Lcom/amap/api/col/l3s/dd;->b:[I

    iget v3, v3, Landroid/graphics/Point;->y:I

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/dd;->k:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/dd;->A:Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setSideColor(I)V
    .locals 1

    iput p1, p0, Lcom/amap/api/col/l3s/dd;->n:I

    iget-object p1, p0, Lcom/amap/api/col/l3s/dd;->k:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/dd;->A:Z

    return-void
.end method

.method public final setTopColor(I)V
    .locals 2

    iput p1, p0, Lcom/amap/api/col/l3s/dd;->m:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/col/l3s/dd;->c:F

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/col/l3s/dd;->d:F

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/col/l3s/dd;->e:F

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    iput p1, p0, Lcom/amap/api/col/l3s/dd;->f:F

    iget-object p1, p0, Lcom/amap/api/col/l3s/dd;->k:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/dd;->A:Z

    return-void
.end method

.method public final setVisible(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/dd;->p:Z

    iget-object p1, p0, Lcom/amap/api/col/l3s/dd;->k:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/dd;->A:Z

    return-void
.end method

.method public final setWidth(F)V
    .locals 1

    iput p1, p0, Lcom/amap/api/col/l3s/dd;->l:F

    iget-object p1, p0, Lcom/amap/api/col/l3s/dd;->k:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/dd;->A:Z

    return-void
.end method

.method public final setZIndex(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/dd;->o:F

    iget-object p1, p0, Lcom/amap/api/col/l3s/dd;->k:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->changeGLOverlayIndex()V

    iget-object p0, p0, Lcom/amap/api/col/l3s/dd;->k:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method
