.class public final Lcom/amap/api/col/l3s/dg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/autonavi/base/amap/api/mapcore/overlays/IPolylineDelegate;


# instance fields
.field private A:Z

.field private B:I

.field private C:I

.field private D:F

.field private E:I

.field private F:I

.field private G:I

.field private H:F

.field private I:F

.field private J:F

.field private K:F

.field private L:F

.field private M:F

.field private N:F

.field private O:F

.field private P:F

.field private Q:[F

.field private R:[I

.field private S:[I

.field private T:Z

.field private U:Lcom/autonavi/base/amap/mapcore/FPointBounds;

.field private V:Lcom/amap/api/maps/model/PolylineOptions;

.field private W:I

.field private X:Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;

.field private Y:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

.field private Z:Lcom/amap/api/col/l3s/dl;

.field a:Landroid/graphics/Rect;

.field private aa:Z

.field private ab:F

.field private ac:F

.field private ad:F

.field private ae:I

.field private af:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;"
        }
    .end annotation
.end field

.field private ag:Z

.field b:I

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/base/amap/mapcore/FPoint;",
            ">;"
        }
    .end annotation
.end field

.field d:J

.field private e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/base/amap/mapcore/FPoint;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3s/af;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/nio/FloatBuffer;

.field private q:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private r:Ljava/lang/Object;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/interfaces/IGlOverlayLayer;Lcom/amap/api/maps/model/PolylineOptions;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/dg;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/dg;->h:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/dg;->i:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/dg;->j:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/dg;->k:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/dg;->l:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/dg;->m:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/dg;->n:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/dg;->o:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/dg;->q:Lcom/amap/api/maps/model/BitmapDescriptor;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/l3s/dg;->r:Ljava/lang/Object;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/dg;->s:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/dg;->t:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/dg;->u:Z

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/dg;->v:Z

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/dg;->w:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/dg;->x:Z

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/dg;->y:Z

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/dg;->z:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/dg;->A:Z

    iput v2, p0, Lcom/amap/api/col/l3s/dg;->B:I

    iput v2, p0, Lcom/amap/api/col/l3s/dg;->C:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/amap/api/col/l3s/dg;->D:F

    const/high16 v3, -0x1000000

    iput v3, p0, Lcom/amap/api/col/l3s/dg;->E:I

    iput v2, p0, Lcom/amap/api/col/l3s/dg;->F:I

    iput v2, p0, Lcom/amap/api/col/l3s/dg;->G:I

    const/high16 v3, 0x41200000    # 10.0f

    iput v3, p0, Lcom/amap/api/col/l3s/dg;->H:F

    const/4 v3, 0x0

    iput v3, p0, Lcom/amap/api/col/l3s/dg;->I:F

    iput v3, p0, Lcom/amap/api/col/l3s/dg;->J:F

    iput v1, p0, Lcom/amap/api/col/l3s/dg;->O:F

    iput v3, p0, Lcom/amap/api/col/l3s/dg;->P:F

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/dg;->T:Z

    iput-object v0, p0, Lcom/amap/api/col/l3s/dg;->U:Lcom/autonavi/base/amap/mapcore/FPointBounds;

    iput-object v0, p0, Lcom/amap/api/col/l3s/dg;->a:Landroid/graphics/Rect;

    iput v2, p0, Lcom/amap/api/col/l3s/dg;->W:I

    sget-object v0, Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;->LineJoinBevel:Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;

    iput-object v0, p0, Lcom/amap/api/col/l3s/dg;->X:Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;

    sget-object v0, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->LineCapRound:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    iput-object v0, p0, Lcom/amap/api/col/l3s/dg;->Y:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/dg;->aa:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/amap/api/col/l3s/dg;->ab:F

    iput v0, p0, Lcom/amap/api/col/l3s/dg;->ac:F

    iput v0, p0, Lcom/amap/api/col/l3s/dg;->ad:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/col/l3s/dg;->ae:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/dg;->af:Ljava/util/List;

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/dg;->ag:Z

    iput v2, p0, Lcom/amap/api/col/l3s/dg;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/dg;->c:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/dg;->d:J

    iput-object p1, p0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-virtual {p0, p2}, Lcom/amap/api/col/l3s/dg;->setOptions(Lcom/amap/api/maps/model/PolylineOptions;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/dg;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/dg;->f:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "PolylineDelegateImp"

    const-string p2, "create"

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method private a(ZLcom/amap/api/maps/model/BitmapDescriptor;Z)Lcom/amap/api/col/l3s/af;
    .locals 1

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/dg;->b()V

    :cond_0
    const/4 p3, 0x0

    if-eqz p1, :cond_1

    iget-object p3, p0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {p3, p2}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getTextureItem(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/col/l3s/af;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/amap/api/col/l3s/af;->l()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0, p3}, Lcom/amap/api/col/l3s/dg;->a(Lcom/amap/api/col/l3s/af;)V

    return-object p3

    :cond_1
    if-nez p3, :cond_2

    new-instance p3, Lcom/amap/api/col/l3s/af;

    const/4 v0, 0x0

    invoke-direct {p3, p2, v0}, Lcom/amap/api/col/l3s/af;-><init>(Lcom/amap/api/maps/model/BitmapDescriptor;I)V

    :cond_2
    invoke-virtual {p2}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/amap/api/col/l3s/dg;->c()I

    move-result v0

    if-eqz p1, :cond_3

    invoke-virtual {p3, v0}, Lcom/amap/api/col/l3s/af;->a(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {p1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->addTextureItem(Lcom/amap/api/col/l3s/af;)V

    :cond_3
    invoke-direct {p0, p3}, Lcom/amap/api/col/l3s/dg;->a(Lcom/amap/api/col/l3s/af;)V

    const/4 p0, 0x1

    invoke-static {v0, p2, p0}, Lcom/amap/api/col/l3s/ex;->a(ILandroid/graphics/Bitmap;Z)I

    :cond_4
    return-object p3
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v0}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v0

    iget v1, p0, Lcom/amap/api/col/l3s/dg;->F:I

    const/high16 v2, 0x40000000    # 2.0f

    const/16 v3, 0x1388

    if-le v1, v3, :cond_2

    iget v1, p0, Lcom/amap/api/col/l3s/dg;->J:F

    const/high16 v3, 0x41400000    # 12.0f

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_1

    iget v3, p0, Lcom/amap/api/col/l3s/dg;->H:F

    div-float/2addr v3, v2

    div-float/2addr v1, v2

    add-float/2addr v3, v1

    const/high16 v1, 0x43480000    # 200.0f

    cmpg-float v2, v3, v1

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    mul-float/2addr v0, v3

    :goto_1
    iput v0, p0, Lcom/amap/api/col/l3s/dg;->P:F

    return-void

    :cond_1
    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    goto :goto_1

    :cond_2
    mul-float/2addr v0, v2

    goto :goto_1
.end method

.method private a(FLcom/autonavi/base/amap/mapcore/MapConfig;)V
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lcom/amap/api/col/l3s/dg;->m:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/amap/api/col/l3s/dg;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget-object v5, v0, Lcom/amap/api/col/l3s/dg;->m:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget-object v5, v0, Lcom/amap/api/col/l3s/dg;->m:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-virtual/range {p2 .. p2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/base/amap/mapcore/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/Rectangle;->getClipMapRect()[Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v1

    :try_start_1
    iget-object v2, v0, Lcom/amap/api/col/l3s/dg;->h:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/amap/api/col/l3s/dg;->a([Lcom/autonavi/base/amap/mapcore/FPoint;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v2, v0, Lcom/amap/api/col/l3s/dg;->r:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v4, v0, Lcom/amap/api/col/l3s/dg;->h:Ljava/util/List;

    invoke-static {v1, v4}, Lcom/amap/api/col/l3s/ex;->b([Lcom/autonavi/base/amap/mapcore/FPoint;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    monitor-exit v2

    move-object v2, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x2

    if-lt v1, v4, :cond_4

    invoke-direct {p0, v2}, Lcom/amap/api/col/l3s/dg;->b(Ljava/util/List;)V

    iget-object v1, v0, Lcom/amap/api/col/l3s/dg;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    new-array v8, v9, [I

    move v1, v3

    :goto_2
    if-ge v1, v9, :cond_2

    iget-object v2, v0, Lcom/amap/api/col/l3s/dg;->o:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lcom/amap/api/col/l3s/dg;->R:[I

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    move v3, v2

    :cond_3
    and-int/lit8 v1, v3, 0x1

    if-eqz v1, :cond_4

    iget-object v4, v0, Lcom/amap/api/col/l3s/dg;->Q:[F

    iget v5, v0, Lcom/amap/api/col/l3s/dg;->b:I

    iget-object v1, v0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureID()I

    move-result v7

    iget-object v10, v0, Lcom/amap/api/col/l3s/dg;->R:[I

    iget-object v1, v0, Lcom/amap/api/col/l3s/dg;->R:[I

    array-length v11, v1

    iget-object v1, v0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getFinalMatrix()[F

    move-result-object v12

    iget-object v1, v0, Lcom/amap/api/col/l3s/dg;->Y:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->getTypeValue()I

    move-result v13

    iget-object v0, v0, Lcom/amap/api/col/l3s/dg;->X:Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;->getTypeValue()I

    move-result v14

    move/from16 v6, p1

    invoke-static/range {v4 .. v14}, Lcom/autonavi/base/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByMultiColor([FIFI[II[II[FII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method private a(Lcom/amap/api/col/l3s/af;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/dg;->k:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/af;->n()V

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/List;Ljava/util/List;D)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;",
            "Ljava/util/List<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;D)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0xa

    if-gt v2, v3, :cond_1

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float v3, v2, v3

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v4

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    float-to-double v7, v3

    sub-double/2addr v5, v7

    mul-double v7, v5, v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/autonavi/amap/mapcore/IPoint;

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-double v9, v9

    mul-double/2addr v9, v7

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v11, v3

    float-to-double v11, v11

    mul-double/2addr v11, v5

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/autonavi/amap/mapcore/IPoint;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-double v13, v6

    mul-double/2addr v13, v11

    mul-double v13, v13, p2

    add-double/2addr v9, v13

    mul-float/2addr v3, v3

    const/4 v6, 0x2

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/autonavi/amap/mapcore/IPoint;

    iget v13, v13, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    mul-float/2addr v13, v3

    float-to-double v13, v13

    add-double/2addr v9, v13

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/autonavi/amap/mapcore/IPoint;

    iget v13, v13, Landroid/graphics/Point;->y:I

    int-to-double v13, v13

    mul-double/2addr v13, v7

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/autonavi/amap/mapcore/IPoint;

    iget v5, v5, Landroid/graphics/Point;->y:I

    move v15, v2

    int-to-double v1, v5

    mul-double/2addr v1, v11

    mul-double v1, v1, p2

    add-double/2addr v13, v1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/amap/mapcore/IPoint;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-double v1, v1

    add-double/2addr v13, v1

    mul-double v11, v11, p2

    add-double/2addr v7, v11

    float-to-double v1, v3

    add-double/2addr v7, v1

    div-double/2addr v9, v7

    double-to-int v1, v9

    iput v1, v4, Landroid/graphics/Point;->x:I

    div-double/2addr v13, v7

    double-to-int v1, v13

    iput v1, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v1, p1

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v15

    float-to-int v2, v2

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Ljava/util/List;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->r:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/autonavi/base/amap/mapcore/FPointBounds$Builder;

    invoke-direct {v1}, Lcom/autonavi/base/amap/mapcore/FPointBounds$Builder;-><init>()V

    iget-object v2, p0, Lcom/amap/api/col/l3s/dg;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/dg;->z:Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/amap/api/col/l3s/dg;->Q:[F

    array-length v3, v3

    iput v3, p0, Lcom/amap/api/col/l3s/dg;->b:I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/autonavi/amap/mapcore/IPoint;

    new-instance v7, Lcom/autonavi/base/amap/mapcore/FPoint3;

    invoke-direct {v7}, Lcom/autonavi/base/amap/mapcore/FPoint3;-><init>()V

    iget-object v8, p0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v8}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v8

    iget v9, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-interface {v8, v9, v5, v7}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->geo2Map(IILcom/autonavi/base/amap/mapcore/FPoint;)V

    iget-object v5, p0, Lcom/amap/api/col/l3s/dg;->Q:[F

    mul-int/lit8 v8, v4, 0x3

    iget v9, v7, Landroid/graphics/PointF;->x:F

    aput v9, v5, v8

    iget-object v5, p0, Lcom/amap/api/col/l3s/dg;->Q:[F

    add-int/lit8 v9, v8, 0x1

    iget v10, v7, Landroid/graphics/PointF;->y:F

    aput v10, v5, v9

    iget-object v5, p0, Lcom/amap/api/col/l3s/dg;->Q:[F

    add-int/lit8 v8, v8, 0x2

    const/4 v9, 0x0

    aput v9, v5, v8

    iget-object v5, p0, Lcom/amap/api/col/l3s/dg;->l:Ljava/util/List;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/amap/api/col/l3s/dg;->l:Ljava/util/List;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v8, p0, Lcom/amap/api/col/l3s/dg;->l:Ljava/util/List;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/amap/api/col/l3s/dg;->l:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v4, :cond_1

    iget v8, p0, Lcom/amap/api/col/l3s/dg;->ae:I

    if-gtz v8, :cond_0

    iget-object v8, p0, Lcom/amap/api/col/l3s/dg;->l:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_1
    invoke-virtual {v7, v8}, Lcom/autonavi/base/amap/mapcore/FPoint3;->setColorIndex(I)V

    goto :goto_2

    :cond_0
    iget v8, p0, Lcom/amap/api/col/l3s/dg;->ae:I

    add-int/2addr v8, v4

    iget-object v9, p0, Lcom/amap/api/col/l3s/dg;->l:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    iget-object v8, p0, Lcom/amap/api/col/l3s/dg;->l:Ljava/util/List;

    iget v9, p0, Lcom/amap/api/col/l3s/dg;->ae:I

    add-int/2addr v9, v4

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_1

    :cond_1
    move v6, v2

    :cond_2
    :goto_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v5, p0, Lcom/amap/api/col/l3s/dg;->m:Ljava/util/List;

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v6, :cond_4

    :try_start_3
    iget-object v6, p0, Lcom/amap/api/col/l3s/dg;->m:Ljava/util/List;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/amap/api/col/l3s/dg;->m:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v4, :cond_4

    iget v6, p0, Lcom/amap/api/col/l3s/dg;->ae:I

    if-gtz v6, :cond_3

    iget-object v6, p0, Lcom/amap/api/col/l3s/dg;->m:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_3
    invoke-virtual {v7, v6}, Lcom/autonavi/base/amap/mapcore/FPoint3;->setColorIndex(I)V

    goto :goto_4

    :cond_3
    iget v6, p0, Lcom/amap/api/col/l3s/dg;->ae:I

    add-int/2addr v6, v4

    iget-object v8, p0, Lcom/amap/api/col/l3s/dg;->m:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_4

    iget-object v6, p0, Lcom/amap/api/col/l3s/dg;->m:Ljava/util/List;

    iget v8, p0, Lcom/amap/api/col/l3s/dg;->ae:I

    add-int/2addr v8, v4

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_3

    :cond_4
    :goto_4
    monitor-exit v5

    goto :goto_5

    :catchall_0
    move-exception p0

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0

    :cond_5
    :goto_5
    iget-object v5, p0, Lcom/amap/api/col/l3s/dg;->h:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v7}, Lcom/autonavi/base/amap/mapcore/FPointBounds$Builder;->include(Lcom/autonavi/base/amap/mapcore/FPoint;)Lcom/autonavi/base/amap/mapcore/FPointBounds$Builder;

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/FPointBounds$Builder;->build()Lcom/autonavi/base/amap/mapcore/FPointBounds;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/l3s/dg;->U:Lcom/autonavi/base/amap/mapcore/FPointBounds;

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/dg;->A:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/amap/api/col/l3s/dg;->Q:[F

    invoke-static {v1}, Lcom/amap/api/col/l3s/ex;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/l3s/dg;->p:Ljava/nio/FloatBuffer;

    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/dg;->F:I

    invoke-direct {p0}, Lcom/amap/api/col/l3s/dg;->a()V

    monitor-exit v0

    return v6

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0
.end method

.method private a([Lcom/autonavi/base/amap/mapcore/FPoint;)Z
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v0}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getZoomLevel()F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3s/dg;->J:F

    invoke-direct {p0}, Lcom/amap/api/col/l3s/dg;->a()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x2710

    if-le v0, v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    iget v1, p0, Lcom/amap/api/col/l3s/dg;->J:F

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    return v1

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v0}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->U:Lcom/autonavi/base/amap/mapcore/FPointBounds;

    iget-object v0, v0, Lcom/autonavi/base/amap/mapcore/FPointBounds;->northeast:Lcom/autonavi/base/amap/mapcore/FPoint;

    invoke-static {v0, p1}, Lcom/amap/api/col/l3s/ex;->a(Lcom/autonavi/base/amap/mapcore/FPoint;[Lcom/autonavi/base/amap/mapcore/FPoint;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/amap/api/col/l3s/dg;->U:Lcom/autonavi/base/amap/mapcore/FPointBounds;

    iget-object p0, p0, Lcom/autonavi/base/amap/mapcore/FPointBounds;->southwest:Lcom/autonavi/base/amap/mapcore/FPoint;

    invoke-static {p0, p1}, Lcom/amap/api/col/l3s/ex;->a(Lcom/autonavi/base/amap/mapcore/FPoint;[Lcom/autonavi/base/amap/mapcore/FPoint;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0

    :catchall_0
    :cond_3
    return v1
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->k:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/col/l3s/af;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->addRecycleTextureIds(Lcom/amap/api/col/l3s/af;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/dg;->k:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_2
    return-void
.end method

.method private b(FLcom/autonavi/base/amap/mapcore/MapConfig;)V
    .locals 20

    move-object/from16 v0, p0

    :try_start_0
    iget-object v1, v0, Lcom/amap/api/col/l3s/dg;->h:Ljava/util/List;

    iget-object v2, v0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v2}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getChangeRatio()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    const/4 v3, 0x2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/amap/api/col/l3s/dg;->Q:[F

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/amap/api/col/l3s/dg;->W:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/amap/api/col/l3s/dg;->W:I

    if-le v2, v3, :cond_1

    iget-object v4, v0, Lcom/amap/api/col/l3s/dg;->Q:[F

    iget v5, v0, Lcom/amap/api/col/l3s/dg;->b:I

    iget-object v1, v0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureID()I

    move-result v7

    iget-object v1, v0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureRatio()F

    move-result v8

    iget v9, v0, Lcom/amap/api/col/l3s/dg;->L:F

    iget v10, v0, Lcom/amap/api/col/l3s/dg;->M:F

    iget v11, v0, Lcom/amap/api/col/l3s/dg;->N:F

    iget v12, v0, Lcom/amap/api/col/l3s/dg;->K:F

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    iget-object v1, v0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getFinalMatrix()[F

    move-result-object v17

    iget-object v1, v0, Lcom/amap/api/col/l3s/dg;->Y:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->getTypeValue()I

    move-result v18

    iget-object v0, v0, Lcom/amap/api/col/l3s/dg;->X:Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;->getTypeValue()I

    move-result v19

    move/from16 v6, p1

    invoke-static/range {v4 .. v19}, Lcom/autonavi/base/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFFZZZ[FII)V

    return-void

    :cond_1
    const/4 v2, 0x0

    iput v2, v0, Lcom/amap/api/col/l3s/dg;->W:I

    invoke-virtual/range {p2 .. p2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/base/amap/mapcore/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/Rectangle;->getClipMapRect()[Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/amap/api/col/l3s/dg;->a([Lcom/autonavi/base/amap/mapcore/FPoint;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v1, v0, Lcom/amap/api/col/l3s/dg;->r:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, v0, Lcom/amap/api/col/l3s/dg;->h:Ljava/util/List;

    invoke-static {v2, v4}, Lcom/amap/api/col/l3s/ex;->a([Lcom/autonavi/base/amap/mapcore/FPoint;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v3, :cond_3

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3s/dg;->b(Ljava/util/List;)V

    iget-object v4, v0, Lcom/amap/api/col/l3s/dg;->Q:[F

    iget v5, v0, Lcom/amap/api/col/l3s/dg;->b:I

    iget-object v1, v0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureID()I

    move-result v7

    iget-object v1, v0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureRatio()F

    move-result v8

    iget v9, v0, Lcom/amap/api/col/l3s/dg;->L:F

    iget v10, v0, Lcom/amap/api/col/l3s/dg;->M:F

    iget v11, v0, Lcom/amap/api/col/l3s/dg;->N:F

    iget v12, v0, Lcom/amap/api/col/l3s/dg;->K:F

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    iget-object v1, v0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getFinalMatrix()[F

    move-result-object v17

    iget-object v1, v0, Lcom/amap/api/col/l3s/dg;->Y:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->getTypeValue()I

    move-result v18

    iget-object v0, v0, Lcom/amap/api/col/l3s/dg;->X:Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;->getTypeValue()I

    move-result v19

    move/from16 v6, p1

    invoke-static/range {v4 .. v19}, Lcom/autonavi/base/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFFZZZ[FII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_3
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/base/amap/mapcore/FPoint;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/base/amap/mapcore/FPoint;

    iget-object v4, p0, Lcom/amap/api/col/l3s/dg;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    move v5, v4

    :goto_0
    add-int/lit8 v6, v0, -0x1

    if-ge v5, v6, :cond_6

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/autonavi/base/amap/mapcore/FPoint;

    if-eq v5, v4, :cond_5

    instance-of v7, v3, Lcom/autonavi/base/amap/mapcore/FPoint3;

    if-eqz v7, :cond_1

    instance-of v7, v6, Lcom/autonavi/base/amap/mapcore/FPoint3;

    if-eqz v7, :cond_1

    move-object v7, v3

    check-cast v7, Lcom/autonavi/base/amap/mapcore/FPoint3;

    iget v7, v7, Lcom/autonavi/base/amap/mapcore/FPoint3;->colorIndex:I

    move-object v8, v6

    check-cast v8, Lcom/autonavi/base/amap/mapcore/FPoint3;

    iget v8, v8, Lcom/autonavi/base/amap/mapcore/FPoint3;->colorIndex:I

    if-eq v7, v8, :cond_1

    goto :goto_1

    :cond_1
    iget v7, v6, Landroid/graphics/PointF;->x:F

    iget v8, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/amap/api/col/l3s/dg;->P:F

    cmpl-float v7, v7, v8

    if-gez v7, :cond_3

    iget v7, v6, Landroid/graphics/PointF;->y:F

    iget v8, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/amap/api/col/l3s/dg;->P:F

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_2

    goto :goto_1

    :cond_2
    move v7, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v7, v4

    :goto_2
    if-eqz v7, :cond_4

    goto :goto_3

    :cond_4
    iget-object v7, p0, Lcom/amap/api/col/l3s/dg;->c:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-virtual {v7, v8, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    :goto_3
    iget-object v3, p0, Lcom/amap/api/col/l3s/dg;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v6

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->c:Ljava/util/ArrayList;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/amap/api/col/l3s/dg;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x3

    mul-int/2addr p1, v0

    iput p1, p0, Lcom/amap/api/col/l3s/dg;->b:I

    iget-object v3, p0, Lcom/amap/api/col/l3s/dg;->Q:[F

    if-eqz v3, :cond_7

    array-length v3, v3

    if-ge v3, p1, :cond_8

    :cond_7
    new-array v3, p1, [F

    iput-object v3, p0, Lcom/amap/api/col/l3s/dg;->Q:[F

    :cond_8
    iget v3, p0, Lcom/amap/api/col/l3s/dg;->B:I

    const/4 v5, 0x5

    const/4 v6, 0x0

    if-eq v3, v5, :cond_b

    if-eq v3, v0, :cond_b

    const/4 v5, 0x4

    if-ne v3, v5, :cond_9

    goto :goto_6

    :cond_9
    iget-object p1, p0, Lcom/amap/api/col/l3s/dg;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/base/amap/mapcore/FPoint;

    iget-object v3, p0, Lcom/amap/api/col/l3s/dg;->Q:[F

    mul-int/lit8 v5, v2, 0x3

    iget v7, v0, Landroid/graphics/PointF;->x:F

    aput v7, v3, v5

    add-int/lit8 v7, v5, 0x1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    aput v0, v3, v7

    add-int/2addr v5, v1

    aput v6, v3, v5

    add-int/2addr v2, v4

    goto :goto_5

    :cond_a
    return-void

    :cond_b
    :goto_6
    iget-object v3, p0, Lcom/amap/api/col/l3s/dg;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v2

    move v7, v5

    move v8, v7

    :goto_7
    div-int/lit8 v9, p1, 0x3

    if-ge v5, v9, :cond_f

    iget-object v9, p0, Lcom/amap/api/col/l3s/dg;->c:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/autonavi/base/amap/mapcore/FPoint3;

    iget-object v10, p0, Lcom/amap/api/col/l3s/dg;->Q:[F

    mul-int/lit8 v11, v5, 0x3

    iget v12, v9, Landroid/graphics/PointF;->x:F

    aput v12, v10, v11

    add-int/lit8 v12, v11, 0x1

    iget v13, v9, Landroid/graphics/PointF;->y:F

    aput v13, v10, v12

    add-int/2addr v11, v1

    aput v6, v10, v11

    iget v9, v9, Lcom/autonavi/base/amap/mapcore/FPoint3;->colorIndex:I

    if-nez v5, :cond_c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v9

    goto :goto_9

    :cond_c
    if-eq v9, v7, :cond_e

    const/4 v10, -0x1

    if-ne v9, v10, :cond_d

    goto :goto_8

    :cond_d
    move v7, v9

    :goto_8
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    aput v5, v3, v8

    add-int/lit8 v8, v8, 0x1

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/amap/api/col/l3s/dg;->R:[I

    array-length v0, p1

    invoke-static {v3, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Lcom/amap/api/col/l3s/dg;->n:Ljava/util/List;

    iput-object v4, p0, Lcom/amap/api/col/l3s/dg;->o:Ljava/util/List;

    return-void
.end method

.method private static c()I
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v1, v2

    return v0
.end method

.method private c(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/dg;->t:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/amap/api/col/l3s/dg;->B:I

    iput-object p1, p0, Lcom/amap/api/col/l3s/dg;->j:Ljava/util/List;

    iget-object p0, p0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {p0}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void

    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/dg;->setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private d(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v3, :cond_0

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    if-eq v6, v4, :cond_1

    goto :goto_1

    :goto_2
    aput v3, v0, v5

    add-int/lit8 v5, v5, 0x1

    move v4, v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/amap/api/col/l3s/dg;->R:[I

    array-length p0, p1

    invoke-static {v0, v2, p1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method


# virtual methods
.method public final a(Lcom/amap/api/col/l3s/dl;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/dg;->Z:Lcom/amap/api/col/l3s/dl;

    return-void
.end method

.method public final calMapFPoint()Z
    .locals 2

    iget v0, p0, Lcom/amap/api/col/l3s/dg;->ab:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/amap/api/col/l3s/dg;->ac:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/amap/api/col/l3s/dg;->ad:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->g:Ljava/util/List;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->af:Ljava/util/List;

    :goto_1
    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/dg;->a(Ljava/util/List;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final checkInBounds()Z
    .locals 2

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/dg;->aa:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v0}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/base/amap/mapcore/Rectangle;

    move-result-object v0

    iget-object p0, p0, Lcom/amap/api/col/l3s/dg;->a:Landroid/graphics/Rect;

    if-eqz p0, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/autonavi/base/amap/mapcore/Rectangle;->isOverlap(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
.end method

.method public final contains(Lcom/amap/api/maps/model/LatLng;)Z
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/amap/api/col/l3s/dg;->Q:[F

    array-length v3, v2

    new-array v4, v3, [F

    array-length v5, v2

    const/4 v6, 0x0

    invoke-static {v2, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    div-int/lit8 v3, v3, 0x3

    const/4 v2, 0x2

    if-ge v3, v2, :cond_0

    return v6

    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v6

    :goto_0
    iget-object v4, v0, Lcom/amap/api/col/l3s/dg;->Q:[F

    array-length v4, v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    iget-object v4, v0, Lcom/amap/api/col/l3s/dg;->Q:[F

    aget v4, v4, v3

    add-int/lit8 v3, v3, 0x1

    iget-object v7, v0, Lcom/amap/api/col/l3s/dg;->Q:[F

    aget v7, v7, v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v4, v7}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain(FF)Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v3, v5

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v3, :cond_2

    return v6

    :cond_2
    iget-object v3, v0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v3}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v3

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapProjection()Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v3

    iget v4, v0, Lcom/amap/api/col/l3s/dg;->H:F

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x4

    invoke-virtual {v3, v4}, Lcom/autonavi/base/ae/gmap/GLMapState;->getMapLenWithWin(I)F

    move-result v3

    float-to-double v3, v3

    iget-object v7, v0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v7}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v7

    invoke-interface {v7}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapProjection()Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v7

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lcom/autonavi/base/ae/gmap/GLMapState;->getMapLenWithWin(I)F

    move-result v7

    float-to-double v7, v7

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v15

    iget-object v9, v0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v9}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v9

    iget-wide v10, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v12, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v14, v15

    invoke-interface/range {v9 .. v14}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->latlon2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v1

    iget-object v0, v0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v0}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    iget v9, v15, Landroid/graphics/Point;->x:I

    iget v10, v15, Landroid/graphics/Point;->y:I

    invoke-interface {v0, v9, v10, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->geo2Map(IILcom/autonavi/base/amap/mapcore/FPoint;)V

    invoke-virtual {v15}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    const/4 v0, 0x0

    move v9, v6

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v5

    if-ge v9, v10, :cond_7

    if-nez v9, :cond_3

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/base/amap/mapcore/FPoint;

    :cond_3
    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v11, v1, Landroid/graphics/PointF;->x:F

    float-to-double v11, v11

    iget v13, v1, Landroid/graphics/PointF;->y:F

    float-to-double v13, v13

    iget v15, v0, Landroid/graphics/PointF;->x:F

    float-to-double v5, v15

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 p1, v1

    float-to-double v0, v0

    iget v15, v10, Landroid/graphics/PointF;->x:F

    move-object/from16 v16, v2

    move-wide/from16 v17, v3

    float-to-double v2, v15

    iget v4, v10, Landroid/graphics/PointF;->y:F

    move/from16 p0, v9

    move-object v15, v10

    float-to-double v9, v4

    sub-double v19, v2, v5

    sub-double v21, v11, v5

    mul-double v23, v19, v21

    sub-double v25, v9, v0

    sub-double v27, v13, v0

    mul-double v29, v25, v27

    add-double v23, v23, v29

    const-wide/16 v29, 0x0

    cmpg-double v4, v23, v29

    if-gtz v4, :cond_4

    mul-double v21, v21, v21

    mul-double v27, v27, v27

    add-double v21, v21, v27

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    goto :goto_3

    :cond_4
    mul-double v21, v19, v19

    mul-double v27, v25, v25

    add-double v21, v21, v27

    cmpl-double v4, v23, v21

    if-ltz v4, :cond_5

    sub-double/2addr v11, v2

    mul-double/2addr v11, v11

    sub-double/2addr v13, v9

    mul-double/2addr v13, v13

    add-double/2addr v11, v13

    goto :goto_2

    :cond_5
    div-double v23, v23, v21

    mul-double v19, v19, v23

    add-double v5, v5, v19

    mul-double v25, v25, v23

    add-double v0, v0, v25

    sub-double/2addr v11, v5

    mul-double/2addr v11, v11

    sub-double/2addr v0, v13

    mul-double/2addr v0, v0

    add-double/2addr v11, v0

    :goto_2
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    :goto_3
    add-double v3, v7, v17

    sub-double/2addr v3, v0

    cmpl-double v0, v3, v29

    if-ltz v0, :cond_6

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    return v0

    :cond_6
    move/from16 v9, p0

    move-object/from16 v1, p1

    move-object v0, v15

    move-object/from16 v2, v16

    move-wide/from16 v3, v17

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_7
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    return v0

    :catch_0
    move v0, v6

    return v0
.end method

.method public final destroy()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/dg;->remove()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->k:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/dg;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3s/dg;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/col/l3s/af;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v2, v1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->addRecycleTextureIds(Lcom/amap/api/col/l3s/af;)V

    iget-object v2, p0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v2}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/af;->q()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->removeTextureItem(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->Q:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/amap/api/col/l3s/dg;->Q:[F

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->p:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->p:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iput-object v1, p0, Lcom/amap/api/col/l3s/dg;->p:Ljava/nio/FloatBuffer;

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->j:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    goto :goto_1

    :cond_5
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->q:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->q:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    :cond_6
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->m:Ljava/util/List;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget-object v2, p0, Lcom/amap/api/col/l3s/dg;->m:Ljava/util/List;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/amap/api/col/l3s/dg;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_7
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->l:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->l:Ljava/util/List;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    iget-object v2, p0, Lcom/amap/api/col/l3s/dg;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/amap/api/col/l3s/dg;->l:Ljava/util/List;

    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0

    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->i:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/amap/api/col/l3s/dg;->i:Ljava/util/List;

    :cond_9
    iput-object v1, p0, Lcom/amap/api/col/l3s/dg;->V:Lcom/amap/api/maps/model/PolylineOptions;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    return-void

    :catchall_1
    move-exception p0

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception p0

    const-string v0, "PolylineDelegateImp"

    const-string v1, "destroy"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "destroy erro"

    const-string v0, "PolylineDelegateImp destroy"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final draw(Lcom/autonavi/base/amap/mapcore/MapConfig;)V
    .locals 32

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/amap/api/col/l3s/dg;->ag:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v2, v1, Lcom/amap/api/col/l3s/dg;->r:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v0, v1, Lcom/amap/api/col/l3s/dg;->ab:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    iget v0, v1, Lcom/amap/api/col/l3s/dg;->ac:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    iget v0, v1, Lcom/amap/api/col/l3s/dg;->ad:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/amap/api/col/l3s/dg;->g:Ljava/util/List;

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, v1, Lcom/amap/api/col/l3s/dg;->af:Ljava/util/List;

    :goto_1
    if-eqz v0, :cond_34

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_34

    iget v3, v1, Lcom/amap/api/col/l3s/dg;->H:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3

    goto/16 :goto_1f

    :cond_3
    iget-object v3, v1, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v3}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v3

    if-nez v3, :cond_4

    monitor-exit v2

    return-void

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/base/amap/mapcore/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/autonavi/base/amap/mapcore/Rectangle;->getBeyond180Mode()I

    move-result v5

    iget-object v6, v1, Lcom/amap/api/col/l3s/dg;->h:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const-wide/high16 v8, 0x41a0000000000000L    # 1.34217728E8

    const/high16 v10, 0x4d800000

    if-ne v6, v7, :cond_7

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v7, :cond_d

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/autonavi/amap/mapcore/IPoint;

    iget-object v13, v1, Lcom/amap/api/col/l3s/dg;->h:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v14, v12, Landroid/graphics/Point;->x:I

    sub-int/2addr v14, v3

    int-to-float v14, v14

    iput v14, v13, Landroid/graphics/PointF;->x:F

    iget v12, v12, Landroid/graphics/Point;->y:I

    sub-int/2addr v12, v4

    int-to-float v12, v12

    iput v12, v13, Landroid/graphics/PointF;->y:F

    iget-boolean v12, v1, Lcom/amap/api/col/l3s/dg;->aa:Z

    if-eqz v12, :cond_6

    if-ltz v5, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v14

    cmpg-double v12, v14, v8

    if-gez v12, :cond_6

    :cond_5
    iget v12, v13, Landroid/graphics/PointF;->x:F

    sub-float/2addr v12, v10

    iput v12, v13, Landroid/graphics/PointF;->x:F

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    iget-object v6, v1, Lcom/amap/api/col/l3s/dg;->h:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    const/4 v6, 0x0

    const/4 v12, 0x0

    :goto_3
    if-ge v6, v7, :cond_d

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/autonavi/amap/mapcore/IPoint;

    new-instance v14, Lcom/autonavi/base/amap/mapcore/FPoint3;

    invoke-direct {v14}, Lcom/autonavi/base/amap/mapcore/FPoint3;-><init>()V

    iget-object v15, v1, Lcom/amap/api/col/l3s/dg;->l:Ljava/util/List;

    if-eqz v15, :cond_a

    iget-object v15, v1, Lcom/amap/api/col/l3s/dg;->l:Ljava/util/List;

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_10

    :try_start_1
    iget v11, v1, Lcom/amap/api/col/l3s/dg;->ae:I

    if-gtz v11, :cond_8

    iget-object v11, v1, Lcom/amap/api/col/l3s/dg;->l:Ljava/util/List;

    if-eqz v11, :cond_9

    iget-object v11, v1, Lcom/amap/api/col/l3s/dg;->l:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v12, :cond_9

    iget-object v11, v1, Lcom/amap/api/col/l3s/dg;->l:Ljava/util/List;

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v14, v11}, Lcom/autonavi/base/amap/mapcore/FPoint3;->setColorIndex(I)V

    goto :goto_4

    :cond_8
    iget-object v11, v1, Lcom/amap/api/col/l3s/dg;->l:Ljava/util/List;

    if-eqz v11, :cond_9

    iget-object v11, v1, Lcom/amap/api/col/l3s/dg;->l:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    iget v10, v1, Lcom/amap/api/col/l3s/dg;->ae:I

    add-int/2addr v10, v12

    if-le v11, v10, :cond_9

    iget-object v10, v1, Lcom/amap/api/col/l3s/dg;->l:Ljava/util/List;

    iget v11, v1, Lcom/amap/api/col/l3s/dg;->ae:I

    add-int/2addr v11, v12

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v14, v10}, Lcom/autonavi/base/amap/mapcore/FPoint3;->setColorIndex(I)V

    :cond_9
    :goto_4
    monitor-exit v15

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :cond_a
    :goto_5
    iget v10, v13, Landroid/graphics/Point;->x:I

    sub-int/2addr v10, v3

    int-to-float v10, v10

    iput v10, v14, Landroid/graphics/PointF;->x:F

    iget v10, v13, Landroid/graphics/Point;->y:I

    sub-int/2addr v10, v4

    int-to-float v10, v10

    iput v10, v14, Landroid/graphics/PointF;->y:F

    iget-boolean v10, v1, Lcom/amap/api/col/l3s/dg;->aa:Z

    if-eqz v10, :cond_c

    if-ltz v5, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v10

    cmpg-double v10, v10, v8

    if-gez v10, :cond_c

    :cond_b
    iget v10, v14, Landroid/graphics/PointF;->x:F

    const/high16 v11, 0x4d800000

    sub-float/2addr v10, v11

    iput v10, v14, Landroid/graphics/PointF;->x:F

    goto :goto_6

    :cond_c
    const/high16 v11, 0x4d800000

    :goto_6
    iget-object v10, v1, Lcom/amap/api/col/l3s/dg;->h:Ljava/util/List;

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v6, v6, 0x1

    move v10, v11

    goto/16 :goto_3

    :cond_d
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_10

    iget-boolean v0, v1, Lcom/amap/api/col/l3s/dg;->x:Z

    if-eqz v0, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/col/l3s/dg;->calMapFPoint()Z

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/amap/api/col/l3s/dg;->x:Z

    goto :goto_a

    :cond_e
    iget-boolean v0, v1, Lcom/amap/api/col/l3s/dg;->y:Z

    if-eqz v0, :cond_12

    iget-object v2, v1, Lcom/amap/api/col/l3s/dg;->r:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v0, v1, Lcom/amap/api/col/l3s/dg;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, v1, Lcom/amap/api/col/l3s/dg;->l:Ljava/util/List;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v4, v1, Lcom/amap/api/col/l3s/dg;->l:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v0, :cond_11

    if-le v4, v5, :cond_f

    iget v6, v1, Lcom/amap/api/col/l3s/dg;->ae:I

    if-gtz v6, :cond_f

    iget-object v6, v1, Lcom/amap/api/col/l3s/dg;->h:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/autonavi/base/amap/mapcore/FPoint3;

    iget-object v7, v1, Lcom/amap/api/col/l3s/dg;->l:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_8
    invoke-virtual {v6, v7}, Lcom/autonavi/base/amap/mapcore/FPoint3;->setColorIndex(I)V

    goto :goto_9

    :cond_f
    iget v6, v1, Lcom/amap/api/col/l3s/dg;->ae:I

    add-int/2addr v6, v5

    if-le v4, v6, :cond_10

    iget v6, v1, Lcom/amap/api/col/l3s/dg;->ae:I

    if-lez v6, :cond_10

    iget-object v6, v1, Lcom/amap/api/col/l3s/dg;->h:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/autonavi/base/amap/mapcore/FPoint3;

    iget-object v7, v1, Lcom/amap/api/col/l3s/dg;->l:Ljava/util/List;

    iget v8, v1, Lcom/amap/api/col/l3s/dg;->ae:I

    add-int/2addr v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_8

    :cond_10
    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_11
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_a

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :cond_12
    :goto_a
    iget-object v0, v1, Lcom/amap/api/col/l3s/dg;->Q:[F

    const/4 v2, 0x1

    if-eqz v0, :cond_33

    iget v0, v1, Lcom/amap/api/col/l3s/dg;->F:I

    if-lez v0, :cond_33

    iget-object v0, v1, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v0}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    iget-object v3, v1, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v3}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v3

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapProjection()Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v3

    iget v4, v1, Lcom/amap/api/col/l3s/dg;->H:F

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/autonavi/base/ae/gmap/GLMapState;->getMapLenWithWin(I)F

    move-result v3

    iget v4, v1, Lcom/amap/api/col/l3s/dg;->B:I

    if-eqz v4, :cond_32

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v8, 0xc

    const/4 v9, 0x2

    if-eq v4, v2, :cond_2b

    if-eq v4, v9, :cond_22

    const/4 v5, 0x3

    if-eq v4, v5, :cond_21

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1c

    const/4 v5, 0x5

    if-eq v4, v5, :cond_13

    goto/16 :goto_1e

    :cond_13
    iget-boolean v4, v1, Lcom/amap/api/col/l3s/dg;->A:Z

    if-eqz v4, :cond_21

    iget-boolean v4, v1, Lcom/amap/api/col/l3s/dg;->ag:Z

    if-nez v4, :cond_33

    iget-boolean v4, v1, Lcom/amap/api/col/l3s/dg;->w:Z

    if-nez v4, :cond_17

    :try_start_8
    iget-object v4, v1, Lcom/amap/api/col/l3s/dg;->j:Ljava/util/List;

    if-eqz v4, :cond_17

    iget-object v4, v1, Lcom/amap/api/col/l3s/dg;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    iput-object v4, v1, Lcom/amap/api/col/l3s/dg;->S:[I

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v8, :cond_14

    move v4, v2

    goto :goto_b

    :cond_14
    const/4 v4, 0x0

    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3s/dg;->b()V

    iget-object v5, v1, Lcom/amap/api/col/l3s/dg;->j:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amap/api/maps/model/BitmapDescriptor;

    const/4 v11, 0x0

    invoke-direct {v1, v4, v10, v11}, Lcom/amap/api/col/l3s/dg;->a(ZLcom/amap/api/maps/model/BitmapDescriptor;Z)Lcom/amap/api/col/l3s/af;

    move-result-object v10

    if-eqz v10, :cond_15

    invoke-virtual {v10}, Lcom/amap/api/col/l3s/af;->l()I

    move-result v8

    invoke-virtual {v10}, Lcom/amap/api/col/l3s/af;->m()F

    move-result v10

    iput v10, v1, Lcom/amap/api/col/l3s/dg;->D:F

    :cond_15
    iget-object v10, v1, Lcom/amap/api/col/l3s/dg;->S:[I

    aput v8, v10, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_16
    iput-boolean v2, v1, Lcom/amap/api/col/l3s/dg;->w:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_d

    :catchall_3
    move-exception v0

    const-string v3, "MarkerDelegateImp"

    const-string v4, "loadtexture"

    invoke-static {v0, v3, v4}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e

    :cond_17
    :goto_d
    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/base/amap/mapcore/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/Rectangle;->getClipMapRect()[Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v0

    :try_start_9
    iget-object v4, v1, Lcom/amap/api/col/l3s/dg;->h:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/amap/api/col/l3s/dg;->a([Lcom/autonavi/base/amap/mapcore/FPoint;)Z

    move-result v5

    if-eqz v5, :cond_18

    iget-object v4, v1, Lcom/amap/api/col/l3s/dg;->r:Ljava/lang/Object;

    monitor-enter v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :try_start_a
    iget-object v5, v1, Lcom/amap/api/col/l3s/dg;->h:Ljava/util/List;

    invoke-static {v0, v5}, Lcom/amap/api/col/l3s/ex;->b([Lcom/autonavi/base/amap/mapcore/FPoint;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    monitor-exit v4

    move-object v4, v0

    goto :goto_e

    :catchall_4
    move-exception v0

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    throw v0

    :cond_18
    :goto_e
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v9, :cond_33

    invoke-direct {v1, v4}, Lcom/amap/api/col/l3s/dg;->b(Ljava/util/List;)V

    iget-object v4, v1, Lcom/amap/api/col/l3s/dg;->n:Ljava/util/List;

    monitor-enter v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :try_start_c
    iget-object v0, v1, Lcom/amap/api/col/l3s/dg;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [I

    const/4 v6, 0x0

    :goto_f
    if-ge v6, v0, :cond_1a

    iget-object v8, v1, Lcom/amap/api/col/l3s/dg;->n:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-gez v8, :cond_19

    const/4 v8, 0x0

    :cond_19
    iget-object v9, v1, Lcom/amap/api/col/l3s/dg;->S:[I

    aget v8, v9, v8

    aput v8, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_1a
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :try_start_d
    iget-object v4, v1, Lcom/amap/api/col/l3s/dg;->R:[I

    if-eqz v4, :cond_1b

    move v11, v2

    goto :goto_10

    :cond_1b
    const/4 v11, 0x0

    :goto_10
    and-int/lit8 v4, v11, 0x1

    if-eqz v4, :cond_33

    iget-object v4, v1, Lcom/amap/api/col/l3s/dg;->Q:[F

    iget v6, v1, Lcom/amap/api/col/l3s/dg;->b:I

    iget v8, v1, Lcom/amap/api/col/l3s/dg;->D:F

    iget-object v9, v1, Lcom/amap/api/col/l3s/dg;->R:[I

    iget-object v10, v1, Lcom/amap/api/col/l3s/dg;->R:[I

    array-length v10, v10

    iget v11, v1, Lcom/amap/api/col/l3s/dg;->O:F

    sub-float v24, v7, v11

    iget-object v7, v1, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v7}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getFinalMatrix()[F

    move-result-object v25

    iget-object v7, v1, Lcom/amap/api/col/l3s/dg;->Y:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    invoke-virtual {v7}, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->getTypeValue()I

    move-result v26

    iget-object v7, v1, Lcom/amap/api/col/l3s/dg;->X:Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;

    invoke-virtual {v7}, Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;->getTypeValue()I

    move-result v27

    move-object/from16 v16, v4

    move/from16 v17, v6

    move/from16 v18, v3

    move-object/from16 v19, v5

    move/from16 v20, v8

    move/from16 v21, v0

    move-object/from16 v22, v9

    move/from16 v23, v10

    invoke-static/range {v16 .. v27}, Lcom/autonavi/base/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByMultiTextureID([FIF[IFI[IIF[FII)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto/16 :goto_1e

    :catchall_5
    move-exception v0

    :try_start_e
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :try_start_f
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    :cond_1c
    iget-object v4, v1, Lcom/amap/api/col/l3s/dg;->m:Ljava/util/List;

    monitor-enter v4

    :try_start_10
    iget-object v5, v1, Lcom/amap/api/col/l3s/dg;->m:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [I

    const/4 v6, 0x0

    :goto_11
    iget-object v7, v1, Lcom/amap/api/col/l3s/dg;->m:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1d

    iget-object v7, v1, Lcom/amap/api/col/l3s/dg;->m:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_1d
    monitor-exit v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/base/amap/mapcore/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/Rectangle;->getClipMapRect()[Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v0

    :try_start_11
    iget-object v4, v1, Lcom/amap/api/col/l3s/dg;->h:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/amap/api/col/l3s/dg;->a([Lcom/autonavi/base/amap/mapcore/FPoint;)Z

    move-result v5

    if-eqz v5, :cond_1e

    iget-object v4, v1, Lcom/amap/api/col/l3s/dg;->r:Ljava/lang/Object;

    monitor-enter v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    :try_start_12
    iget-object v5, v1, Lcom/amap/api/col/l3s/dg;->h:Ljava/util/List;

    invoke-static {v0, v5}, Lcom/amap/api/col/l3s/ex;->b([Lcom/autonavi/base/amap/mapcore/FPoint;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    monitor-exit v4

    move-object v4, v0

    goto :goto_12

    :catchall_6
    move-exception v0

    monitor-exit v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    :try_start_13
    throw v0

    :cond_1e
    :goto_12
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v9, :cond_33

    invoke-direct {v1, v4}, Lcom/amap/api/col/l3s/dg;->b(Ljava/util/List;)V

    iget-object v0, v1, Lcom/amap/api/col/l3s/dg;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    new-array v8, v9, [I

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v9, :cond_1f

    iget-object v4, v1, Lcom/amap/api/col/l3s/dg;->o:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_1f
    iget-object v0, v1, Lcom/amap/api/col/l3s/dg;->R:[I

    if-eqz v0, :cond_20

    move v11, v2

    goto :goto_14

    :cond_20
    const/4 v11, 0x0

    :goto_14
    and-int/lit8 v0, v11, 0x1

    if-eqz v0, :cond_33

    iget-object v5, v1, Lcom/amap/api/col/l3s/dg;->Q:[F

    iget v6, v1, Lcom/amap/api/col/l3s/dg;->b:I

    iget-object v10, v1, Lcom/amap/api/col/l3s/dg;->R:[I

    iget-object v0, v1, Lcom/amap/api/col/l3s/dg;->R:[I

    array-length v11, v0

    iget-object v0, v1, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v0}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureID()I

    move-result v12

    iget-object v0, v1, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v0}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getFinalMatrix()[F

    move-result-object v13

    iget-object v0, v1, Lcom/amap/api/col/l3s/dg;->Y:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->getTypeValue()I

    move-result v14

    iget-object v0, v1, Lcom/amap/api/col/l3s/dg;->X:Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;->getTypeValue()I

    move-result v15

    move v7, v3

    invoke-static/range {v5 .. v15}, Lcom/autonavi/base/amap/mapcore/AMapNativeRenderer;->nativeDrawGradientColorLine([FIF[II[III[FII)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    goto/16 :goto_1e

    :catchall_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1e

    :catchall_8
    move-exception v0

    :try_start_14
    monitor-exit v4
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    throw v0

    :cond_21
    invoke-direct {v1, v3, v0}, Lcom/amap/api/col/l3s/dg;->a(FLcom/autonavi/base/amap/mapcore/MapConfig;)V

    goto/16 :goto_1e

    :cond_22
    iget v4, v1, Lcom/amap/api/col/l3s/dg;->G:I

    const/4 v7, -0x1

    if-ne v4, v7, :cond_23

    goto/16 :goto_1d

    :cond_23
    iget-boolean v4, v1, Lcom/amap/api/col/l3s/dg;->w:Z

    if-nez v4, :cond_27

    monitor-enter p0

    :try_start_15
    iget-object v4, v1, Lcom/amap/api/col/l3s/dg;->q:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v4, :cond_26

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v8, :cond_24

    move v4, v2

    goto :goto_15

    :cond_24
    const/4 v4, 0x0

    :goto_15
    iget-object v7, v1, Lcom/amap/api/col/l3s/dg;->q:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-direct {v1, v4, v7, v2}, Lcom/amap/api/col/l3s/dg;->a(ZLcom/amap/api/maps/model/BitmapDescriptor;Z)Lcom/amap/api/col/l3s/af;

    move-result-object v4

    if-eqz v4, :cond_25

    invoke-virtual {v4}, Lcom/amap/api/col/l3s/af;->l()I

    move-result v7

    invoke-virtual {v4}, Lcom/amap/api/col/l3s/af;->m()F

    move-result v4

    iput v4, v1, Lcom/amap/api/col/l3s/dg;->D:F

    goto :goto_16

    :cond_25
    const/4 v7, 0x0

    :goto_16
    iput v7, v1, Lcom/amap/api/col/l3s/dg;->C:I

    iput-boolean v2, v1, Lcom/amap/api/col/l3s/dg;->w:Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    :cond_26
    :try_start_16
    monitor-exit p0

    goto :goto_17

    :catchall_9
    move-exception v0

    const-string v3, "MarkerDelegateImp"

    const-string v4, "loadtexture"

    invoke-static {v0, v3, v4}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    goto/16 :goto_1e

    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    throw v0

    :cond_27
    :goto_17
    :try_start_17
    iget-object v4, v1, Lcom/amap/api/col/l3s/dg;->h:Ljava/util/List;

    iget-object v7, v1, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v7}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v7

    if-nez v7, :cond_28

    goto/16 :goto_1e

    :cond_28
    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getChangeRatio()D

    move-result-wide v7

    cmpl-double v5, v7, v5

    if-nez v5, :cond_29

    iget-object v5, v1, Lcom/amap/api/col/l3s/dg;->Q:[F

    if-eqz v5, :cond_29

    iget v5, v1, Lcom/amap/api/col/l3s/dg;->W:I

    add-int/2addr v5, v2

    iput v5, v1, Lcom/amap/api/col/l3s/dg;->W:I

    if-le v5, v9, :cond_29

    iget-object v0, v1, Lcom/amap/api/col/l3s/dg;->Q:[F

    iget v4, v1, Lcom/amap/api/col/l3s/dg;->b:I

    iget-object v5, v1, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v5}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v5

    iget v6, v1, Lcom/amap/api/col/l3s/dg;->G:I

    invoke-interface {v5, v6}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getDottedLineTextureID(I)I

    move-result v19

    iget-object v5, v1, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v5}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v5

    invoke-interface {v5}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureRatio()F

    move-result v20

    iget v5, v1, Lcom/amap/api/col/l3s/dg;->L:F

    iget v6, v1, Lcom/amap/api/col/l3s/dg;->M:F

    iget v7, v1, Lcom/amap/api/col/l3s/dg;->N:F

    iget v8, v1, Lcom/amap/api/col/l3s/dg;->K:F

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x1

    const/16 v28, 0x0

    iget-object v9, v1, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v9}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getFinalMatrix()[F

    move-result-object v29

    iget-object v9, v1, Lcom/amap/api/col/l3s/dg;->Y:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    invoke-virtual {v9}, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->getTypeValue()I

    move-result v30

    iget-object v9, v1, Lcom/amap/api/col/l3s/dg;->X:Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;

    invoke-virtual {v9}, Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;->getTypeValue()I

    move-result v31

    move-object/from16 v16, v0

    move/from16 v17, v4

    move/from16 v18, v3

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v8

    invoke-static/range {v16 .. v31}, Lcom/autonavi/base/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFFZZZ[FII)V

    goto/16 :goto_1e

    :cond_29
    const/4 v5, 0x0

    iput v5, v1, Lcom/amap/api/col/l3s/dg;->W:I

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/base/amap/mapcore/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/Rectangle;->getClipMapRect()[Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amap/api/col/l3s/dg;->a([Lcom/autonavi/base/amap/mapcore/FPoint;)Z

    move-result v5

    if-eqz v5, :cond_2a

    iget-object v4, v1, Lcom/amap/api/col/l3s/dg;->r:Ljava/lang/Object;

    monitor-enter v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_f

    :try_start_18
    iget-object v5, v1, Lcom/amap/api/col/l3s/dg;->h:Ljava/util/List;

    invoke-static {v0, v5}, Lcom/amap/api/col/l3s/ex;->a([Lcom/autonavi/base/amap/mapcore/FPoint;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    monitor-exit v4

    move-object v4, v0

    goto :goto_18

    :catchall_b
    move-exception v0

    monitor-exit v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    :try_start_19
    throw v0

    :cond_2a
    :goto_18
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v9, :cond_33

    invoke-direct {v1, v4}, Lcom/amap/api/col/l3s/dg;->b(Ljava/util/List;)V

    iget-object v0, v1, Lcom/amap/api/col/l3s/dg;->Q:[F

    iget v4, v1, Lcom/amap/api/col/l3s/dg;->b:I

    iget-object v5, v1, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v5}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v5

    iget v6, v1, Lcom/amap/api/col/l3s/dg;->G:I

    invoke-interface {v5, v6}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getDottedLineTextureID(I)I

    move-result v19

    iget-object v5, v1, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v5}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v5

    invoke-interface {v5}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureRatio()F

    move-result v20

    iget v5, v1, Lcom/amap/api/col/l3s/dg;->L:F

    iget v6, v1, Lcom/amap/api/col/l3s/dg;->M:F

    iget v7, v1, Lcom/amap/api/col/l3s/dg;->N:F

    iget v8, v1, Lcom/amap/api/col/l3s/dg;->K:F

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x1

    const/16 v28, 0x0

    iget-object v9, v1, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v9}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getFinalMatrix()[F

    move-result-object v29

    iget-object v9, v1, Lcom/amap/api/col/l3s/dg;->Y:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    invoke-virtual {v9}, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->getTypeValue()I

    move-result v30

    iget-object v9, v1, Lcom/amap/api/col/l3s/dg;->X:Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;

    invoke-virtual {v9}, Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;->getTypeValue()I

    move-result v31

    move-object/from16 v16, v0

    move/from16 v17, v4

    move/from16 v18, v3

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v8

    invoke-static/range {v16 .. v31}, Lcom/autonavi/base/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFFZZZ[FII)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_f

    goto/16 :goto_1e

    :cond_2b
    iget-boolean v4, v1, Lcom/amap/api/col/l3s/dg;->A:Z

    if-eqz v4, :cond_32

    iget-boolean v4, v1, Lcom/amap/api/col/l3s/dg;->w:Z

    if-nez v4, :cond_2f

    monitor-enter p0

    :try_start_1a
    iget-object v4, v1, Lcom/amap/api/col/l3s/dg;->q:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v4, :cond_2e

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v8, :cond_2c

    move v4, v2

    goto :goto_19

    :cond_2c
    const/4 v4, 0x0

    :goto_19
    iget-object v8, v1, Lcom/amap/api/col/l3s/dg;->q:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-direct {v1, v4, v8, v2}, Lcom/amap/api/col/l3s/dg;->a(ZLcom/amap/api/maps/model/BitmapDescriptor;Z)Lcom/amap/api/col/l3s/af;

    move-result-object v4

    if-eqz v4, :cond_2d

    invoke-virtual {v4}, Lcom/amap/api/col/l3s/af;->l()I

    move-result v8

    invoke-virtual {v4}, Lcom/amap/api/col/l3s/af;->m()F

    move-result v4

    iput v4, v1, Lcom/amap/api/col/l3s/dg;->D:F

    goto :goto_1a

    :cond_2d
    const/4 v8, 0x0

    :goto_1a
    iput v8, v1, Lcom/amap/api/col/l3s/dg;->C:I

    iput-boolean v2, v1, Lcom/amap/api/col/l3s/dg;->w:Z
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    :cond_2e
    :try_start_1b
    monitor-exit p0

    goto :goto_1b

    :catchall_c
    move-exception v0

    const-string v3, "MarkerDelegateImp"

    const-string v4, "loadtexture"

    invoke-static {v0, v3, v4}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    goto/16 :goto_1e

    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    throw v0

    :cond_2f
    :goto_1b
    :try_start_1c
    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getChangeRatio()D

    move-result-wide v10

    cmpl-double v4, v10, v5

    if-nez v4, :cond_30

    iget-object v4, v1, Lcom/amap/api/col/l3s/dg;->Q:[F

    if-eqz v4, :cond_30

    iget v4, v1, Lcom/amap/api/col/l3s/dg;->W:I

    add-int/2addr v4, v2

    iput v4, v1, Lcom/amap/api/col/l3s/dg;->W:I

    if-le v4, v9, :cond_30

    iget-object v0, v1, Lcom/amap/api/col/l3s/dg;->Q:[F

    iget v4, v1, Lcom/amap/api/col/l3s/dg;->b:I

    iget v5, v1, Lcom/amap/api/col/l3s/dg;->C:I

    iget v6, v1, Lcom/amap/api/col/l3s/dg;->D:F

    iget v8, v1, Lcom/amap/api/col/l3s/dg;->L:F

    iget v9, v1, Lcom/amap/api/col/l3s/dg;->M:F

    iget v10, v1, Lcom/amap/api/col/l3s/dg;->N:F

    iget v11, v1, Lcom/amap/api/col/l3s/dg;->K:F

    iget v12, v1, Lcom/amap/api/col/l3s/dg;->O:F

    sub-float v25, v7, v12

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    iget-object v7, v1, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v7}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getFinalMatrix()[F

    move-result-object v29

    iget-object v7, v1, Lcom/amap/api/col/l3s/dg;->Y:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    invoke-virtual {v7}, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->getTypeValue()I

    move-result v30

    iget-object v7, v1, Lcom/amap/api/col/l3s/dg;->X:Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;

    invoke-virtual {v7}, Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;->getTypeValue()I

    move-result v31

    move-object/from16 v16, v0

    move/from16 v17, v4

    move/from16 v18, v3

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v8

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v11

    invoke-static/range {v16 .. v31}, Lcom/autonavi/base/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFFZZZ[FII)V

    goto/16 :goto_1e

    :cond_30
    const/4 v4, 0x0

    iput v4, v1, Lcom/amap/api/col/l3s/dg;->W:I

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/base/amap/mapcore/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/Rectangle;->getClipMapRect()[Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v0

    iget-object v4, v1, Lcom/amap/api/col/l3s/dg;->h:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/amap/api/col/l3s/dg;->a([Lcom/autonavi/base/amap/mapcore/FPoint;)Z

    move-result v5

    if-eqz v5, :cond_31

    iget-object v4, v1, Lcom/amap/api/col/l3s/dg;->r:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f

    :try_start_1d
    iget-object v5, v1, Lcom/amap/api/col/l3s/dg;->h:Ljava/util/List;

    invoke-static {v0, v5}, Lcom/amap/api/col/l3s/ex;->a([Lcom/autonavi/base/amap/mapcore/FPoint;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    monitor-exit v4

    move-object v4, v0

    goto :goto_1c

    :catchall_e
    move-exception v0

    monitor-exit v4
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_e

    :try_start_1e
    throw v0

    :cond_31
    :goto_1c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v9, :cond_33

    invoke-direct {v1, v4}, Lcom/amap/api/col/l3s/dg;->b(Ljava/util/List;)V

    iget-object v0, v1, Lcom/amap/api/col/l3s/dg;->Q:[F

    iget v4, v1, Lcom/amap/api/col/l3s/dg;->b:I

    iget v5, v1, Lcom/amap/api/col/l3s/dg;->C:I

    iget v6, v1, Lcom/amap/api/col/l3s/dg;->D:F

    iget v8, v1, Lcom/amap/api/col/l3s/dg;->L:F

    iget v9, v1, Lcom/amap/api/col/l3s/dg;->M:F

    iget v10, v1, Lcom/amap/api/col/l3s/dg;->N:F

    iget v11, v1, Lcom/amap/api/col/l3s/dg;->K:F

    iget v12, v1, Lcom/amap/api/col/l3s/dg;->O:F

    sub-float v25, v7, v12

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    iget-object v7, v1, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v7}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getFinalMatrix()[F

    move-result-object v29

    iget-object v7, v1, Lcom/amap/api/col/l3s/dg;->Y:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    invoke-virtual {v7}, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->getTypeValue()I

    move-result v30

    iget-object v7, v1, Lcom/amap/api/col/l3s/dg;->X:Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;

    invoke-virtual {v7}, Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;->getTypeValue()I

    move-result v31

    move-object/from16 v16, v0

    move/from16 v17, v4

    move/from16 v18, v3

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v8

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v11

    invoke-static/range {v16 .. v31}, Lcom/autonavi/base/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFFZZZ[FII)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_f

    goto :goto_1e

    :cond_32
    :goto_1d
    invoke-direct {v1, v3, v0}, Lcom/amap/api/col/l3s/dg;->b(FLcom/autonavi/base/amap/mapcore/MapConfig;)V

    :catchall_f
    :cond_33
    :goto_1e
    iput-boolean v2, v1, Lcom/amap/api/col/l3s/dg;->z:Z

    return-void

    :cond_34
    :goto_1f
    :try_start_1f
    monitor-exit v2

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_10

    throw v0
.end method

.method public final equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/dg;->getId()Ljava/lang/String;

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

.method public final getColor()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/dg;->E:I

    return p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    const-string v1, "Polyline"

    invoke-interface {v0, v1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->createId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/dg;->f:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/dg;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final getNearestLatLng(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/dg;->i:Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/amap/api/col/l3s/dg;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/l3s/dg;->i:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/LatLng;

    invoke-static {p1, v1}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/amap/api/col/l3s/dg;->i:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/maps/model/LatLng;

    invoke-static {p1, v4}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v4

    cmpl-float v5, v1, v4

    if-lez v5, :cond_3

    move v3, v2

    move v1, v4

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/amap/api/col/l3s/dg;->i:Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amap/api/maps/model/LatLng;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string p1, "PolylineDelegateImp"

    const-string v1, "getNearestLatLng"

    invoke-static {p0, p1, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_2
    return-object v0
.end method

.method public final getOptions()Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/dg;->V:Lcom/amap/api/maps/model/PolylineOptions;

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

    iget-object p0, p0, Lcom/amap/api/col/l3s/dg;->i:Ljava/util/List;

    return-object p0
.end method

.method public final getShownRatio()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/dg;->ab:F

    return p0
.end method

.method public final getWidth()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/dg;->H:F

    return p0
.end method

.method public final getZIndex()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/dg;->I:F

    return p0
.end method

.method public final hashCodeRemote()I
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final isAboveMaskLayer()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/dg;->T:Z

    return p0
.end method

.method public final isDottedLine()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/dg;->v:Z

    return p0
.end method

.method public final isDrawFinish()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/dg;->z:Z

    return p0
.end method

.method public final isGeodesic()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/dg;->u:Z

    return p0
.end method

.method public final isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/dg;->s:Z

    return p0
.end method

.method public final reLoadTexture()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/dg;->w:Z

    iput v0, p0, Lcom/amap/api/col/l3s/dg;->C:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/amap/api/col/l3s/dg;->D:F

    iget-object p0, p0, Lcom/amap/api/col/l3s/dg;->S:[I

    if-eqz p0, :cond_0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    return-void
.end method

.method public final remove()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/dg;->ag:Z

    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/dg;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->removeOverlay(Ljava/lang/String;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/dg;->setVisible(Z)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {p0}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setAboveMaskLayer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/dg;->T:Z

    return-void
.end method

.method public final setColor(I)V
    .locals 3

    iget v0, p0, Lcom/amap/api/col/l3s/dg;->B:I

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_3

    :cond_0
    iput p1, p0, Lcom/amap/api/col/l3s/dg;->E:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v0, v2

    iput v0, p0, Lcom/amap/api/col/l3s/dg;->K:F

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/amap/api/col/l3s/dg;->L:F

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/amap/api/col/l3s/dg;->M:F

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/amap/api/col/l3s/dg;->N:F

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/dg;->t:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/dg;->v:Z

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/amap/api/col/l3s/dg;->B:I

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/amap/api/col/l3s/dg;->B:I

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v0}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    :cond_3
    iget-object p0, p0, Lcom/amap/api/col/l3s/dg;->V:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->color(I)Lcom/amap/api/maps/model/PolylineOptions;

    return-void
.end method

.method public final setColorValues(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->m:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/l3s/dg;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/amap/api/col/l3s/dg;->m:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/dg;->t:Z

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/dg;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/dg;->o:Ljava/util/List;

    const/4 p1, 0x3

    iput p1, p0, Lcom/amap/api/col/l3s/dg;->B:I

    iget-object p0, p0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {p0}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void

    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/dg;->setColor(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/col/l3s/dg;->d:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x10

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    :cond_0
    iput-wide v0, p0, Lcom/amap/api/col/l3s/dg;->d:J

    if-nez p1, :cond_1

    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->q:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/dg;->t:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/dg;->w:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/amap/api/col/l3s/dg;->B:I

    iput-object p1, p0, Lcom/amap/api/col/l3s/dg;->q:Lcom/amap/api/maps/model/BitmapDescriptor;

    iget-object v1, p0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->V:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->V:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/PolylineOptions;

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final setCustomTextureIndex(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->l:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/l3s/dg;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/amap/api/col/l3s/dg;->l:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/dg;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/dg;->n:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/dg;->y:Z

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

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setCustomTextureList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/dg;->c(Ljava/util/List;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/dg;->V:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getCustomTextureIndex()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/dg;->setCustomTextureIndex(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/dg;->reLoadTexture()V

    return-void
.end method

.method public final setDottedLine(Z)V
    .locals 3

    iget v0, p0, Lcom/amap/api/col/l3s/dg;->B:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_3

    :cond_0
    iput-boolean p1, p0, Lcom/amap/api/col/l3s/dg;->v:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lcom/amap/api/col/l3s/dg;->t:Z

    if-eqz v2, :cond_1

    iput v1, p0, Lcom/amap/api/col/l3s/dg;->B:I

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/amap/api/col/l3s/dg;->t:Z

    if-eqz p1, :cond_2

    iput v0, p0, Lcom/amap/api/col/l3s/dg;->B:I

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {p0}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    :cond_3
    return-void
.end method

.method public final setGeodesic(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/dg;->u:Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {p0}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setOptions(Lcom/amap/api/maps/model/PolylineOptions;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/amap/api/col/l3s/dg;->V:Lcom/amap/api/maps/model/PolylineOptions;

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/dg;->setColor(I)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->isGeodesic()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/dg;->setGeodesic(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->isDottedLine()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/dg;->setDottedLine(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getDottedLineType()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3s/dg;->G:I

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->isAboveMaskLayer()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/dg;->setAboveMaskLayer(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->isVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/dg;->setVisible(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/dg;->setWidth(F)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getZIndex()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/dg;->setZIndex(F)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->isUseTexture()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/dg;->A:Z

    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v0}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getTransparency()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/dg;->setTransparency(F)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getLineCapType()Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/dg;->Y:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getLineJoinType()Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/dg;->X:Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getColorValues()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getColorValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/dg;->setColorValues(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->isUseGradient()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/dg;->useGradient(Z)V

    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getCustomTexture()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getCustomTexture()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/dg;->setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/dg;->reLoadTexture()V

    :cond_2
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getCustomTextureList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getCustomTextureList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/dg;->c(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getCustomTextureIndex()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/dg;->setCustomTextureIndex(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/dg;->reLoadTexture()V

    :cond_3
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/dg;->setPoints(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getShownRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/dg;->setShownRatio(F)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getShownRangeBegin()F

    move-result v0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getShownRangeEnd()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/dg;->setShowRange(FF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "PolylineDelegateImp"

    const-string v0, "setOptions"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public final setPoints(Ljava/util/List;)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    :try_start_0
    iput-object v0, v1, Lcom/amap/api/col/l3s/dg;->i:Ljava/util/List;

    iget-object v2, v1, Lcom/amap/api/col/l3s/dg;->r:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/amap/api/maps/model/LatLngBounds;->builder()Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v4

    if-eqz v0, :cond_8

    const/4 v7, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amap/api/maps/model/LatLng;

    iget-boolean v11, v1, Lcom/amap/api/col/l3s/dg;->u:Z

    if-nez v11, :cond_0

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v7

    iget-object v11, v1, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v11}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v14

    iget-wide v5, v10, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v11, v10, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-wide v15, v5

    move-wide/from16 v17, v11

    move-object/from16 v19, v7

    invoke-interface/range {v14 .. v19}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->latlon2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v10}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_2

    :cond_0
    if-eqz v7, :cond_3

    :try_start_2
    iget-wide v5, v10, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v11, v7, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v5, v11

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide v11, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v5, v5, v11

    if-gez v5, :cond_1

    :try_start_3
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v5

    iget-object v6, v1, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v6}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v14

    iget-wide v11, v7, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-object v6, v8

    move/from16 v20, v9

    iget-wide v8, v7, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-wide v15, v11

    move-wide/from16 v17, v8

    move-object/from16 v19, v5

    invoke-interface/range {v14 .. v19}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->latlon2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v7}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v5

    iget-object v7, v1, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v7}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v21

    iget-wide v7, v10, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v11, v10, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-wide/from16 v22, v7

    move-wide/from16 v24, v11

    move-object/from16 v26, v5

    invoke-interface/range {v21 .. v26}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->latlon2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v10}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    goto/16 :goto_3

    :cond_1
    move-object v6, v8

    move/from16 v20, v9

    :try_start_4
    iget-wide v8, v7, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v11, v10, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v8, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v11

    const-wide v11, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v11

    new-instance v5, Lcom/amap/api/maps/model/LatLng;

    iget-wide v11, v10, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v14, v7, Lcom/amap/api/maps/model/LatLng;->latitude:D

    add-double/2addr v11, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v11, v14

    iget-wide v13, v10, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-wide/from16 v22, v8

    iget-wide v8, v7, Lcom/amap/api/maps/model/LatLng;->longitude:D

    add-double/2addr v13, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v17, v13, v8

    const/16 v19, 0x0

    move-object v14, v5

    move-wide v15, v11

    invoke-direct/range {v14 .. v19}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    invoke-virtual {v4, v7}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    iget-wide v8, v5, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-wide/16 v11, 0x0

    cmpl-double v8, v8, v11

    if-lez v8, :cond_2

    const/4 v8, -0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x1

    :goto_1
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v9

    iget-object v11, v1, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v11}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v11

    iget-wide v12, v7, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v14, v7, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object/from16 v16, v9

    invoke-interface/range {v11 .. v16}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->latlon2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v7

    iget-object v11, v1, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v11}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v24

    iget-wide v11, v10, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v13, v10, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-wide/from16 v25, v11

    move-wide/from16 v27, v13

    move-object/from16 v29, v7

    invoke-interface/range {v24 .. v29}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->latlon2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v11

    iget-object v12, v1, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v12}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v25

    iget-wide v12, v5, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v14, v5, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-wide/from16 v26, v12

    move-wide/from16 v28, v14

    move-object/from16 v30, v11

    invoke-interface/range {v25 .. v30}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->latlon2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double v14, v22, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    iget v5, v9, Landroid/graphics/Point;->x:I

    move-object/from16 v18, v4

    iget v4, v7, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v4

    int-to-double v4, v5

    move-object/from16 v19, v6

    iget v6, v9, Landroid/graphics/Point;->y:I

    iget v0, v7, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v0

    int-to-double v0, v6

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v4

    iget v5, v7, Landroid/graphics/Point;->x:I

    iget v6, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v6

    int-to-double v5, v5

    iget v14, v7, Landroid/graphics/Point;->y:I

    iget v15, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v14, v15

    int-to-double v14, v14

    mul-double v16, v14, v14

    mul-double v22, v5, v5

    div-double v16, v16, v22

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    add-double v16, v16, v22

    move-wide/from16 v22, v12

    int-to-double v12, v8

    mul-double/2addr v12, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v12, v0

    iget v0, v11, Landroid/graphics/Point;->y:I

    int-to-double v0, v0

    add-double/2addr v12, v0

    double-to-int v0, v12

    iput v0, v4, Landroid/graphics/Point;->y:I

    iget v1, v11, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v0

    int-to-double v0, v1

    mul-double/2addr v0, v14

    div-double/2addr v0, v5

    iget v5, v11, Landroid/graphics/Point;->x:I

    int-to-double v5, v5

    add-double/2addr v0, v5

    double-to-int v0, v0

    iput v0, v4, Landroid/graphics/Point;->x:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v5, v22

    invoke-static {v0, v3, v5, v6}, Lcom/amap/api/col/l3s/dg;->a(Ljava/util/List;Ljava/util/List;D)V

    invoke-virtual {v9}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    invoke-virtual {v7}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_8

    :cond_3
    :goto_2
    move-object/from16 v18, v4

    move-object/from16 v19, v8

    move/from16 v20, v9

    :goto_3
    if-eqz v10, :cond_5

    if-nez v20, :cond_4

    iget-wide v0, v10, Lcom/amap/api/maps/model/LatLng;->longitude:D
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_4

    const/4 v0, 0x1

    move-object/from16 v1, p0

    :try_start_5
    iput-boolean v0, v1, Lcom/amap/api/col/l3s/dg;->aa:Z

    const/4 v9, 0x1

    goto :goto_4

    :cond_4
    move-object/from16 v1, p0

    move/from16 v9, v20

    :goto_4
    iget-boolean v0, v1, Lcom/amap/api/col/l3s/dg;->aa:Z

    if-nez v0, :cond_6

    iget-wide v4, v10, Lcom/amap/api/maps/model/LatLng;->longitude:D

    const-wide v6, 0x4066800000000000L    # 180.0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/amap/api/col/l3s/dg;->aa:Z

    goto :goto_5

    :cond_5
    move-object/from16 v1, p0

    move/from16 v9, v20

    :cond_6
    :goto_5
    move-object/from16 v0, p1

    move-object v7, v10

    move-object/from16 v4, v18

    move-object/from16 v8, v19

    goto/16 :goto_0

    :cond_7
    move/from16 v20, v9

    goto :goto_6

    :cond_8
    const/4 v9, 0x0

    :goto_6
    iput-object v3, v1, Lcom/amap/api/col/l3s/dg;->g:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, v1, Lcom/amap/api/col/l3s/dg;->F:I

    iget-object v0, v1, Lcom/amap/api/col/l3s/dg;->a:Landroid/graphics/Rect;

    if-nez v0, :cond_9

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v1, Lcom/amap/api/col/l3s/dg;->a:Landroid/graphics/Rect;

    :cond_9
    iget-object v0, v1, Lcom/amap/api/col/l3s/dg;->a:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ex;->a(Landroid/graphics/Rect;)V

    iget-object v0, v1, Lcom/amap/api/col/l3s/dg;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/amap/mapcore/IPoint;

    if-eqz v9, :cond_a

    iget v4, v3, Landroid/graphics/Point;->x:I

    const/high16 v5, 0x10000000

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->x:I

    :cond_a
    iget-object v4, v1, Lcom/amap/api/col/l3s/dg;->a:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5, v3}, Lcom/amap/api/col/l3s/ex;->b(Landroid/graphics/Rect;II)V

    goto :goto_7

    :cond_b
    iget-object v0, v1, Lcom/amap/api/col/l3s/dg;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->sort()V

    iget-object v0, v1, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v0}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, v1, Lcom/amap/api/col/l3s/dg;->x:Z

    iget-object v0, v1, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v0}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    iget-object v0, v1, Lcom/amap/api/col/l3s/dg;->V:Lcom/amap/api/maps/model/PolylineOptions;

    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/PolylineOptions;->setPoints(Ljava/util/List;)V

    iget-object v0, v1, Lcom/amap/api/col/l3s/dg;->V:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/PolylineOptions;->getShownRatio()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amap/api/col/l3s/dg;->setShownRatio(F)V

    iget-object v0, v1, Lcom/amap/api/col/l3s/dg;->V:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/PolylineOptions;->getShownRangeBegin()F

    move-result v0

    iget-object v2, v1, Lcom/amap/api/col/l3s/dg;->V:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/PolylineOptions;->getShownRangeEnd()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/amap/api/col/l3s/dg;->setShowRange(FF)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-void

    :catchall_1
    move-exception v0

    :goto_8
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    const-string v2, "PolylineDelegateImp"

    const-string v3, "setPoints"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/amap/api/col/l3s/dg;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setShowRange(FF)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iput v1, v0, Lcom/amap/api/col/l3s/dg;->ac:F

    iput v2, v0, Lcom/amap/api/col/l3s/dg;->ad:F

    iget-object v3, v0, Lcom/amap/api/col/l3s/dg;->r:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v0, Lcom/amap/api/col/l3s/dg;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    iget-object v0, v0, Lcom/amap/api/col/l3s/dg;->af:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v3

    return-void

    :cond_0
    cmpl-float v6, v1, v2

    if-lez v6, :cond_1

    iget-object v0, v0, Lcom/amap/api/col/l3s/dg;->af:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "mapcore"

    const-string v1, "setShownRange return begin < end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    return-void

    :cond_1
    const/4 v6, 0x0

    cmpg-float v7, v1, v6

    if-ltz v7, :cond_3

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    int-to-float v7, v4

    cmpl-float v7, v1, v7

    if-ltz v7, :cond_4

    add-int/lit8 v1, v4, -0x1

    int-to-float v1, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v6

    :cond_4
    :goto_1
    cmpg-float v7, v2, v6

    if-gez v7, :cond_5

    move v2, v6

    goto :goto_2

    :cond_5
    int-to-float v6, v4

    cmpl-float v6, v2, v6

    if-gez v6, :cond_6

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    add-int/lit8 v2, v4, -0x1

    int-to-float v2, v2

    :cond_7
    :goto_2
    iget-boolean v6, v0, Lcom/amap/api/col/l3s/dg;->u:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_9

    iget-object v6, v0, Lcom/amap/api/col/l3s/dg;->i:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v5, :cond_8

    const-string v0, "mapcore"

    const-string v1, "setShownRatio return m_polylineOptions.m_latLngPoints.size() < MIN_POLYLINE_COUNT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    return-void

    :cond_8
    sub-int/2addr v6, v7

    int-to-float v5, v6

    div-float/2addr v1, v5

    add-int/lit8 v6, v4, -0x1

    int-to-float v6, v6

    mul-float/2addr v1, v6

    div-float/2addr v2, v5

    mul-float/2addr v2, v6

    :cond_9
    iget-object v5, v0, Lcom/amap/api/col/l3s/dg;->af:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v6, v8

    int-to-float v8, v5

    sub-float/2addr v1, v8

    float-to-double v8, v1

    int-to-float v1, v6

    sub-float/2addr v2, v1

    float-to-double v1, v2

    const/4 v10, 0x0

    move v12, v5

    move-object v11, v10

    :goto_3
    if-ge v12, v4, :cond_f

    iget-object v13, v0, Lcom/amap/api/col/l3s/dg;->g:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/autonavi/amap/mapcore/IPoint;

    if-lt v5, v12, :cond_a

    move-wide/from16 v17, v1

    move/from16 v16, v4

    move-object v10, v13

    move-object v11, v10

    goto/16 :goto_7

    :cond_a
    if-ge v5, v12, :cond_c

    add-int/lit8 v14, v12, -0x1

    if-ne v5, v14, :cond_c

    new-instance v11, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v11}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iget v14, v10, Landroid/graphics/Point;->x:I

    int-to-double v14, v14

    iget v7, v13, Landroid/graphics/Point;->x:I

    move/from16 v16, v4

    iget v4, v10, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v4

    move-wide/from16 v17, v1

    int-to-double v1, v7

    mul-double/2addr v1, v8

    add-double/2addr v14, v1

    double-to-int v1, v14

    iput v1, v11, Landroid/graphics/Point;->x:I

    iget v1, v10, Landroid/graphics/Point;->y:I

    int-to-double v1, v1

    iget v4, v13, Landroid/graphics/Point;->y:I

    iget v7, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v7

    int-to-double v14, v4

    mul-double/2addr v14, v8

    add-double/2addr v1, v14

    double-to-int v1, v1

    iput v1, v11, Landroid/graphics/Point;->y:I

    iget-object v1, v0, Lcom/amap/api/col/l3s/dg;->af:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v6, v5, :cond_b

    new-instance v1, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iget v2, v10, Landroid/graphics/Point;->x:I

    int-to-double v6, v2

    iget v2, v13, Landroid/graphics/Point;->x:I

    iget v4, v10, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v4

    int-to-double v8, v2

    mul-double v8, v8, v17

    add-double/2addr v6, v8

    double-to-int v2, v6

    iput v2, v1, Landroid/graphics/Point;->x:I

    iget v2, v10, Landroid/graphics/Point;->y:I

    int-to-double v6, v2

    iget v2, v13, Landroid/graphics/Point;->y:I

    iget v4, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v4

    int-to-double v8, v2

    mul-double v8, v8, v17

    add-double/2addr v6, v8

    double-to-int v2, v6

    iput v2, v1, Landroid/graphics/Point;->y:I

    iget-object v2, v0, Lcom/amap/api/col/l3s/dg;->af:Ljava/util/List;

    :goto_4
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_b
    iget-object v1, v0, Lcom/amap/api/col/l3s/dg;->af:Ljava/util/List;

    :goto_5
    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    move-wide/from16 v17, v1

    move/from16 v16, v4

    if-ge v5, v12, :cond_d

    if-lt v6, v12, :cond_d

    iget-object v1, v0, Lcom/amap/api/col/l3s/dg;->af:Ljava/util/List;

    goto :goto_5

    :goto_6
    move-object v11, v13

    goto :goto_7

    :cond_d
    if-ge v6, v12, :cond_e

    new-instance v1, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iget v2, v11, Landroid/graphics/Point;->x:I

    int-to-double v6, v2

    iget v2, v13, Landroid/graphics/Point;->x:I

    iget v4, v11, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v4

    int-to-double v8, v2

    mul-double v8, v8, v17

    add-double/2addr v6, v8

    double-to-int v2, v6

    iput v2, v1, Landroid/graphics/Point;->x:I

    iget v2, v11, Landroid/graphics/Point;->y:I

    int-to-double v6, v2

    iget v2, v13, Landroid/graphics/Point;->y:I

    iget v4, v11, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v4

    int-to-double v8, v2

    mul-double v8, v8, v17

    add-double/2addr v6, v8

    double-to-int v2, v6

    iput v2, v1, Landroid/graphics/Point;->y:I

    iget-object v2, v0, Lcom/amap/api/col/l3s/dg;->af:Ljava/util/List;

    goto :goto_4

    :cond_e
    :goto_7
    add-int/lit8 v12, v12, 0x1

    move/from16 v4, v16

    move-wide/from16 v1, v17

    const/4 v7, 0x1

    goto/16 :goto_3

    :cond_f
    :goto_8
    if-ltz v5, :cond_10

    iput v5, v0, Lcom/amap/api/col/l3s/dg;->ae:I

    :cond_10
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/col/l3s/dg;->x:Z

    iget-object v1, v0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    iget-object v1, v0, Lcom/amap/api/col/l3s/dg;->V:Lcom/amap/api/maps/model/PolylineOptions;

    iget v2, v0, Lcom/amap/api/col/l3s/dg;->ac:F

    iget v0, v0, Lcom/amap/api/col/l3s/dg;->ad:F

    invoke-virtual {v1, v2, v0}, Lcom/amap/api/maps/model/PolylineOptions;->setShownRange(FF)Lcom/amap/api/maps/model/PolylineOptions;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final setShownRatio(F)V
    .locals 10

    iput p1, p0, Lcom/amap/api/col/l3s/dg;->ab:F

    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->r:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/dg;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/dg;->af:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :cond_0
    iget v3, p0, Lcom/amap/api/col/l3s/dg;->ab:F

    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    if-gez v5, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    int-to-float v5, v1

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_2

    add-int/lit8 v3, v1, -0x1

    int-to-float v3, v3

    :cond_2
    :goto_0
    iget-boolean v5, p0, Lcom/amap/api/col/l3s/dg;->u:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/amap/api/col/l3s/dg;->i:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v2, :cond_3

    monitor-exit v0

    return-void

    :cond_3
    sub-int/2addr v5, v6

    int-to-float v2, v5

    div-float/2addr v3, v2

    add-int/lit8 v2, v1, -0x1

    int-to-float v2, v2

    mul-float/2addr v3, v2

    :cond_4
    iget-object v2, p0, Lcom/amap/api/col/l3s/dg;->af:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v2, v7

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v1, :cond_6

    iget-object v9, p0, Lcom/amap/api/col/l3s/dg;->g:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/autonavi/amap/mapcore/IPoint;

    if-le v8, v2, :cond_5

    int-to-float v1, v2

    sub-float/2addr v3, v1

    cmpl-float v1, p1, v4

    if-eqz v1, :cond_6

    if-eqz v5, :cond_6

    new-instance v1, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iget v2, v5, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v4, v9, Landroid/graphics/Point;->x:I

    iget v8, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v8

    int-to-float v4, v4

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    iget v2, v5, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget v4, v9, Landroid/graphics/Point;->y:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/amap/api/col/l3s/dg;->af:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/amap/api/col/l3s/dg;->af:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move-object v5, v9

    goto :goto_1

    :cond_6
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v6, p0, Lcom/amap/api/col/l3s/dg;->x:Z

    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v0}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/dg;->V:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->setShownRatio(F)Lcom/amap/api/maps/model/PolylineOptions;

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setTransparency(F)V
    .locals 4

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/amap/api/col/l3s/dg;->O:F

    iget-object p0, p0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {p0}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setVisible(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/dg;->s:Z

    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v0}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/dg;->V:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->visible(Z)Lcom/amap/api/maps/model/PolylineOptions;

    :cond_0
    return-void
.end method

.method public final setWidth(F)V
    .locals 2

    iput p1, p0, Lcom/amap/api/col/l3s/dg;->H:F

    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v0}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/dg;->V:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    return-void
.end method

.method public final setZIndex(F)V
    .locals 2

    iput p1, p0, Lcom/amap/api/col/l3s/dg;->I:F

    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v0}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->changeOverlayIndex()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v0}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/dg;->V:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->zIndex(F)Lcom/amap/api/maps/model/PolylineOptions;

    :cond_0
    return-void
.end method

.method public final useGradient(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amap/api/col/l3s/dg;->m:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    const/4 p1, 0x4

    iput p1, p0, Lcom/amap/api/col/l3s/dg;->B:I

    iget-object p0, p0, Lcom/amap/api/col/l3s/dg;->e:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {p0}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    :cond_0
    return-void
.end method
