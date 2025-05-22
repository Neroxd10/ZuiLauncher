.class public final Lcom/amap/api/col/l3s/bd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/amap/api/col/l3s/bc;


# static fields
.field private static E:I


# instance fields
.field A:I

.field private B:Ljava/lang/String;

.field private C:[F

.field private D:Z

.field private F:Ljava/util/concurrent/ExecutorService;

.field private G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private H:[F

.field a:Lcom/amap/api/maps/model/BitmapDescriptor;

.field b:Lcom/amap/api/maps/model/BitmapDescriptor;

.field c:F

.field d:F

.field e:F

.field f:F

.field g:F

.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/MultiPointItem;",
            ">;"
        }
    .end annotation
.end field

.field i:Lcom/amap/api/col/l3s/bf;

.field j:Lcom/amap/api/col/l3s/bb;

.field k:Lcom/amap/api/col/l3s/bb;

.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/MultiPointItem;",
            ">;"
        }
    .end annotation
.end field

.field m:Lcom/autonavi/amap/mapcore/IPoint;

.field n:Lcom/amap/api/col/l3s/be;

.field o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3s/ba;",
            ">;"
        }
    .end annotation
.end field

.field p:[F

.field q:[F

.field r:[F

.field s:Landroid/graphics/Rect;

.field t:Lcom/amap/api/col/l3s/bb;

.field u:Lcom/amap/api/col/l3s/bb;

.field v:I

.field w:I

.field x:[F

.field y:Ljava/lang/String;

.field z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps/model/MultiPointOverlayOptions;Lcom/amap/api/col/l3s/be;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->defaultMarker()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/bd;->a:Lcom/amap/api/maps/model/BitmapDescriptor;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/bd;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    const/4 v1, 0x0

    iput v1, p0, Lcom/amap/api/col/l3s/bd;->c:F

    iput v1, p0, Lcom/amap/api/col/l3s/bd;->d:F

    iput v1, p0, Lcom/amap/api/col/l3s/bd;->e:F

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/amap/api/col/l3s/bd;->f:F

    iput v1, p0, Lcom/amap/api/col/l3s/bd;->g:F

    iput-object v0, p0, Lcom/amap/api/col/l3s/bd;->i:Lcom/amap/api/col/l3s/bf;

    iput-object v0, p0, Lcom/amap/api/col/l3s/bd;->j:Lcom/amap/api/col/l3s/bb;

    new-instance v2, Lcom/amap/api/col/l3s/bb;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v3, v4}, Lcom/amap/api/col/l3s/bb;-><init>(IIII)V

    iput-object v2, p0, Lcom/amap/api/col/l3s/bd;->k:Lcom/amap/api/col/l3s/bb;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3s/bd;->l:Ljava/util/List;

    const/16 v2, 0x18

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/amap/api/col/l3s/bd;->C:[F

    iput-boolean v4, p0, Lcom/amap/api/col/l3s/bd;->D:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3s/bd;->o:Ljava/util/List;

    iput-object v0, p0, Lcom/amap/api/col/l3s/bd;->F:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3s/bd;->G:Ljava/util/List;

    sget v2, Lcom/amap/api/col/l3s/ba;->a:I

    mul-int/lit8 v2, v2, 0x3

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/amap/api/col/l3s/bd;->H:[F

    const/16 v2, 0x10

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/amap/api/col/l3s/bd;->p:[F

    const/4 v2, 0x4

    new-array v5, v2, [F

    iput-object v5, p0, Lcom/amap/api/col/l3s/bd;->q:[F

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/amap/api/col/l3s/bd;->r:[F

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3s/bd;->s:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/amap/api/col/l3s/bd;->t:Lcom/amap/api/col/l3s/bb;

    iput-object v0, p0, Lcom/amap/api/col/l3s/bd;->u:Lcom/amap/api/col/l3s/bb;

    iput v3, p0, Lcom/amap/api/col/l3s/bd;->v:I

    iput v3, p0, Lcom/amap/api/col/l3s/bd;->w:I

    const/16 v2, 0xc

    new-array v5, v2, [F

    iput-object v5, p0, Lcom/amap/api/col/l3s/bd;->x:[F

    const-string v5, "precision highp float;\nattribute vec3 aVertex;//\u9876\u70b9\u6570\u7ec4,\u4e09\u7ef4\u5750\u6807\nuniform mat4 aMVPMatrix;//mvp\u77e9\u9635\nvoid main(){\n  gl_Position = aMVPMatrix * vec4(aVertex, 1.0);\n}"

    iput-object v5, p0, Lcom/amap/api/col/l3s/bd;->y:Ljava/lang/String;

    const-string v5, "//\u6709\u989c\u8272 \u6ca1\u6709\u7eb9\u7406\nprecision highp float;\nvoid main(){\n  gl_FragColor = vec4(0,0,1,1.0);\n}"

    iput-object v5, p0, Lcom/amap/api/col/l3s/bd;->z:Ljava/lang/String;

    const/4 v5, -0x1

    iput v5, p0, Lcom/amap/api/col/l3s/bd;->A:I

    iput-object p2, p0, Lcom/amap/api/col/l3s/bd;->n:Lcom/amap/api/col/l3s/be;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MultiPointOverlayOptions;->getIcon()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MultiPointOverlayOptions;->getIcon()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MultiPointOverlayOptions;->getIcon()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MultiPointOverlayOptions;->getIcon()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v5

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/amap/api/col/l3s/bd;->a:Lcom/amap/api/maps/model/BitmapDescriptor;

    :goto_0
    iput-object v5, p0, Lcom/amap/api/col/l3s/bd;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MultiPointOverlayOptions;->getAnchorU()F

    move-result v5

    iput v5, p0, Lcom/amap/api/col/l3s/bd;->f:F

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MultiPointOverlayOptions;->getAnchorV()F

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/bd;->g:F

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/bd;->C:[F

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, [F

    iget p1, p0, Lcom/amap/api/col/l3s/bd;->f:F

    sub-float/2addr p1, v1

    iget v5, p0, Lcom/amap/api/col/l3s/bd;->g:F

    sub-float/2addr v5, v1

    aget v1, v0, v3

    add-float/2addr v1, p1

    aput v1, v0, v3

    aget v1, v0, v4

    sub-float/2addr v1, v5

    aput v1, v0, v4

    const/4 v1, 0x6

    aget v3, v0, v1

    add-float/2addr v3, p1

    aput v3, v0, v1

    const/4 v1, 0x7

    aget v3, v0, v1

    sub-float/2addr v3, v5

    aput v3, v0, v1

    aget v1, v0, v2

    add-float/2addr v1, p1

    aput v1, v0, v2

    const/16 v1, 0xd

    aget v2, v0, v1

    sub-float/2addr v2, v5

    aput v2, v0, v1

    const/16 v1, 0x12

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    const/16 p1, 0x13

    aget v1, v0, p1

    sub-float/2addr v1, v5

    aput v1, v0, p1

    :goto_1
    new-instance p1, Lcom/amap/api/col/l3s/ba;

    invoke-direct {p1, v0}, Lcom/amap/api/col/l3s/ba;-><init>([F)V

    invoke-virtual {p2}, Lcom/amap/api/col/l3s/be;->a()Lcom/amap/api/col/l3s/dl;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amap/api/col/l3s/ba;->a(Lcom/amap/api/col/l3s/dl;)V

    iget-object p2, p0, Lcom/amap/api/col/l3s/bd;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {p1, p2}, Lcom/amap/api/col/l3s/ba;->a(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/bd;->o:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :array_0
    .array-data 4
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x0
        0x0
        0x0
        0x0
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        -0x41000000    # -0.5f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private a()Lcom/amap/api/col/l3s/bb;
    .locals 6

    iget-object v0, p0, Lcom/amap/api/col/l3s/bd;->h:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/bd;->h:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/MultiPointItem;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MultiPointItem;->getIPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MultiPointItem;->getIPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MultiPointItem;->getIPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MultiPointItem;->getIPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/maps/model/MultiPointItem;

    invoke-virtual {v4}, Lcom/amap/api/maps/model/MultiPointItem;->getIPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {v4}, Lcom/amap/api/maps/model/MultiPointItem;->getIPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-ge v5, v1, :cond_2

    move v1, v5

    :cond_2
    if-le v5, v2, :cond_3

    move v2, v5

    :cond_3
    if-ge v4, v3, :cond_4

    move v3, v4

    :cond_4
    if-le v4, v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_5
    new-instance p0, Lcom/amap/api/col/l3s/bb;

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/amap/api/col/l3s/bb;-><init>(IIII)V

    return-object p0

    :cond_6
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/bd;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/bd;->G:Ljava/util/List;

    return-object p0
.end method

.method private b()V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/bd;->n:Lcom/amap/api/col/l3s/be;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/be;->d()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/autonavi/base/amap/mapcore/MapConfig;[F[F)V
    .locals 32

    move-object/from16 v0, p0

    :try_start_0
    iget-boolean v1, v0, Lcom/amap/api/col/l3s/bd;->D:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/amap/api/col/l3s/bd;->F:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_1

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Lcom/amap/api/col/l3s/ek;

    const-string v1, "MultiPointOverlay"

    invoke-direct {v9, v1}, Lcom/amap/api/col/l3s/ek;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-wide/16 v5, 0x1

    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v10}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, v0, Lcom/amap/api/col/l3s/bd;->F:Ljava/util/concurrent/ExecutorService;

    :cond_1
    iget-object v1, v0, Lcom/amap/api/col/l3s/bd;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/col/l3s/ba;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/amap/api/col/l3s/ba;->b()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/amap/api/col/l3s/bd;->G:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v0, Lcom/amap/api/col/l3s/bd;->G:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/amap/api/col/l3s/bd;->F:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/amap/api/col/l3s/bd$1;

    invoke-direct {v5, v0, v2, v3}, Lcom/amap/api/col/l3s/bd$1;-><init>(Lcom/amap/api/col/l3s/bd;Lcom/amap/api/col/l3s/ba;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/amap/api/col/l3s/bd;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_4

    return-void

    :cond_4
    iget-object v1, v0, Lcom/amap/api/col/l3s/bd;->i:Lcom/amap/api/col/l3s/bf;

    if-nez v1, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_6

    return-void

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSR()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSC()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getChangeRatio()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-nez v2, :cond_8

    iget-object v2, v0, Lcom/amap/api/col/l3s/bd;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    move/from16 v22, v1

    move/from16 v21, v11

    goto/16 :goto_3

    :cond_8
    :goto_1
    iget-object v2, v0, Lcom/amap/api/col/l3s/bd;->l:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p1, :cond_a

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/base/amap/mapcore/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autonavi/base/amap/mapcore/Rectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, v0, Lcom/amap/api/col/l3s/bd;->j:Lcom/amap/api/col/l3s/bb;

    if-nez v4, :cond_9

    new-instance v4, Lcom/amap/api/col/l3s/bb;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/amap/api/col/l3s/bb;-><init>(IIII)V

    iput-object v4, v0, Lcom/amap/api/col/l3s/bd;->j:Lcom/amap/api/col/l3s/bb;

    goto :goto_2

    :cond_9
    iget-object v4, v0, Lcom/amap/api/col/l3s/bd;->j:Lcom/amap/api/col/l3s/bb;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/amap/api/col/l3s/bb;->a(IIII)V

    :cond_a
    :goto_2
    iget-object v3, v0, Lcom/amap/api/col/l3s/bd;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v3

    iput v3, v0, Lcom/amap/api/col/l3s/bd;->c:F

    iget-object v4, v0, Lcom/amap/api/col/l3s/bd;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v4}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iput v3, v0, Lcom/amap/api/col/l3s/bd;->d:F

    iget v3, v0, Lcom/amap/api/col/l3s/bd;->c:F

    iget-object v4, v0, Lcom/amap/api/col/l3s/bd;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v4}, Lcom/amap/api/maps/model/BitmapDescriptor;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iput v3, v0, Lcom/amap/api/col/l3s/bd;->e:F

    iget v4, v0, Lcom/amap/api/col/l3s/bd;->d:F

    mul-float/2addr v4, v3

    const/high16 v5, 0x41800000    # 16.0f

    mul-float/2addr v4, v5

    float-to-double v4, v4

    iget v6, v0, Lcom/amap/api/col/l3s/bd;->d:F

    iget-object v7, v0, Lcom/amap/api/col/l3s/bd;->k:Lcom/amap/api/col/l3s/bb;

    const/4 v8, 0x1

    if-nez v7, :cond_b

    new-instance v7, Lcom/amap/api/col/l3s/bb;

    invoke-direct {v7, v13, v8, v13, v8}, Lcom/amap/api/col/l3s/bb;-><init>(IIII)V

    iput-object v7, v0, Lcom/amap/api/col/l3s/bd;->k:Lcom/amap/api/col/l3s/bb;

    :cond_b
    iget-object v7, v0, Lcom/amap/api/col/l3s/bd;->s:Landroid/graphics/Rect;

    invoke-virtual {v7, v13, v13, v13, v13}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v7, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v7}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iget v9, v0, Lcom/amap/api/col/l3s/bd;->f:F

    iget v10, v0, Lcom/amap/api/col/l3s/bd;->g:F

    iget-object v14, v0, Lcom/amap/api/col/l3s/bd;->p:[F

    invoke-static {v14, v13}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v15, v0, Lcom/amap/api/col/l3s/bd;->p:[F

    const/16 v16, 0x0

    neg-float v14, v1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v17, v14

    invoke-static/range {v15 .. v20}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v14, v0, Lcom/amap/api/col/l3s/bd;->r:[F

    aput v12, v14, v13

    iget-object v14, v0, Lcom/amap/api/col/l3s/bd;->r:[F

    aput v12, v14, v8

    iget-object v14, v0, Lcom/amap/api/col/l3s/bd;->r:[F

    const/4 v15, 0x2

    aput v12, v14, v15

    iget-object v14, v0, Lcom/amap/api/col/l3s/bd;->r:[F

    const/16 v16, 0x3

    aput v12, v14, v16

    iget-object v14, v0, Lcom/amap/api/col/l3s/bd;->q:[F

    neg-float v12, v6

    mul-float/2addr v12, v9

    aput v12, v14, v13

    iget-object v14, v0, Lcom/amap/api/col/l3s/bd;->q:[F

    mul-float v18, v3, v10

    aput v18, v14, v8

    iget-object v14, v0, Lcom/amap/api/col/l3s/bd;->q:[F

    const/16 v17, 0x0

    aput v17, v14, v15

    iget-object v14, v0, Lcom/amap/api/col/l3s/bd;->q:[F

    const/high16 v19, 0x3f800000    # 1.0f

    aput v19, v14, v16

    iget-object v14, v0, Lcom/amap/api/col/l3s/bd;->r:[F

    const/16 v21, 0x0

    iget-object v15, v0, Lcom/amap/api/col/l3s/bd;->p:[F

    const/16 v23, 0x0

    iget-object v8, v0, Lcom/amap/api/col/l3s/bd;->q:[F

    const/16 v25, 0x0

    move-object/from16 v20, v14

    move-object/from16 v22, v15

    move-object/from16 v24, v8

    invoke-static/range {v20 .. v25}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v8, v0, Lcom/amap/api/col/l3s/bd;->s:Landroid/graphics/Rect;

    iget v14, v7, Landroid/graphics/Point;->x:I

    int-to-float v14, v14

    iget-object v15, v0, Lcom/amap/api/col/l3s/bd;->r:[F

    aget v15, v15, v13

    add-float/2addr v14, v15

    float-to-int v14, v14

    iget v15, v7, Landroid/graphics/Point;->y:I

    int-to-float v15, v15

    iget-object v13, v0, Lcom/amap/api/col/l3s/bd;->r:[F

    const/16 v21, 0x1

    aget v13, v13, v21

    sub-float/2addr v15, v13

    float-to-int v13, v15

    iget v15, v7, Landroid/graphics/Point;->x:I

    int-to-float v15, v15

    move/from16 v21, v11

    iget-object v11, v0, Lcom/amap/api/col/l3s/bd;->r:[F

    const/16 v20, 0x0

    aget v11, v11, v20

    add-float/2addr v15, v11

    float-to-int v11, v15

    iget v15, v7, Landroid/graphics/Point;->y:I

    int-to-float v15, v15

    move/from16 v22, v1

    iget-object v1, v0, Lcom/amap/api/col/l3s/bd;->r:[F

    const/16 v23, 0x1

    aget v1, v1, v23

    sub-float/2addr v15, v1

    float-to-int v1, v15

    invoke-virtual {v8, v14, v13, v11, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v0, Lcom/amap/api/col/l3s/bd;->q:[F

    sub-float v8, v19, v9

    mul-float/2addr v6, v8

    const/4 v8, 0x0

    aput v6, v1, v8

    iget-object v1, v0, Lcom/amap/api/col/l3s/bd;->q:[F

    const/4 v8, 0x1

    aput v18, v1, v8

    iget-object v1, v0, Lcom/amap/api/col/l3s/bd;->q:[F

    const/4 v8, 0x2

    const/4 v9, 0x0

    aput v9, v1, v8

    iget-object v1, v0, Lcom/amap/api/col/l3s/bd;->q:[F

    aput v19, v1, v16

    iget-object v1, v0, Lcom/amap/api/col/l3s/bd;->r:[F

    const/16 v27, 0x0

    iget-object v8, v0, Lcom/amap/api/col/l3s/bd;->p:[F

    const/16 v29, 0x0

    iget-object v9, v0, Lcom/amap/api/col/l3s/bd;->q:[F

    const/16 v31, 0x0

    move-object/from16 v26, v1

    move-object/from16 v28, v8

    move-object/from16 v30, v9

    invoke-static/range {v26 .. v31}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v1, v0, Lcom/amap/api/col/l3s/bd;->s:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget-object v9, v0, Lcom/amap/api/col/l3s/bd;->r:[F

    const/4 v11, 0x0

    aget v9, v9, v11

    add-float/2addr v8, v9

    float-to-int v8, v8

    iget v9, v7, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    iget-object v11, v0, Lcom/amap/api/col/l3s/bd;->r:[F

    const/4 v13, 0x1

    aget v11, v11, v13

    sub-float/2addr v9, v11

    float-to-int v9, v9

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Rect;->union(II)V

    iget-object v1, v0, Lcom/amap/api/col/l3s/bd;->q:[F

    const/4 v8, 0x0

    aput v6, v1, v8

    iget-object v1, v0, Lcom/amap/api/col/l3s/bd;->q:[F

    neg-float v3, v3

    sub-float v6, v19, v10

    mul-float/2addr v3, v6

    const/4 v6, 0x1

    aput v3, v1, v6

    iget-object v1, v0, Lcom/amap/api/col/l3s/bd;->q:[F

    const/4 v6, 0x2

    const/4 v8, 0x0

    aput v8, v1, v6

    iget-object v1, v0, Lcom/amap/api/col/l3s/bd;->q:[F

    aput v19, v1, v16

    iget-object v1, v0, Lcom/amap/api/col/l3s/bd;->r:[F

    const/16 v27, 0x0

    iget-object v6, v0, Lcom/amap/api/col/l3s/bd;->p:[F

    const/16 v29, 0x0

    iget-object v8, v0, Lcom/amap/api/col/l3s/bd;->q:[F

    const/16 v31, 0x0

    move-object/from16 v26, v1

    move-object/from16 v28, v6

    move-object/from16 v30, v8

    invoke-static/range {v26 .. v31}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v1, v0, Lcom/amap/api/col/l3s/bd;->s:Landroid/graphics/Rect;

    iget v6, v7, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget-object v8, v0, Lcom/amap/api/col/l3s/bd;->r:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    add-float/2addr v6, v8

    float-to-int v6, v6

    iget v8, v7, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    iget-object v9, v0, Lcom/amap/api/col/l3s/bd;->r:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v1, v6, v8}, Landroid/graphics/Rect;->union(II)V

    iget-object v1, v0, Lcom/amap/api/col/l3s/bd;->q:[F

    const/4 v6, 0x0

    aput v12, v1, v6

    iget-object v1, v0, Lcom/amap/api/col/l3s/bd;->q:[F

    const/4 v6, 0x1

    aput v3, v1, v6

    iget-object v1, v0, Lcom/amap/api/col/l3s/bd;->q:[F

    const/4 v3, 0x2

    const/4 v6, 0x0

    aput v6, v1, v3

    iget-object v1, v0, Lcom/amap/api/col/l3s/bd;->q:[F

    aput v19, v1, v16

    iget-object v8, v0, Lcom/amap/api/col/l3s/bd;->r:[F

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/amap/api/col/l3s/bd;->p:[F

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/amap/api/col/l3s/bd;->q:[F

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v1, v0, Lcom/amap/api/col/l3s/bd;->s:Landroid/graphics/Rect;

    iget v3, v7, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v6, v0, Lcom/amap/api/col/l3s/bd;->r:[F

    const/4 v8, 0x0

    aget v6, v6, v8

    add-float/2addr v3, v6

    float-to-int v3, v3

    iget v6, v7, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    iget-object v7, v0, Lcom/amap/api/col/l3s/bd;->r:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    sub-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v1, v3, v6}, Landroid/graphics/Rect;->union(II)V

    iget-object v1, v0, Lcom/amap/api/col/l3s/bd;->k:Lcom/amap/api/col/l3s/bb;

    iget-object v3, v0, Lcom/amap/api/col/l3s/bd;->s:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v6, v0, Lcom/amap/api/col/l3s/bd;->s:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, v0, Lcom/amap/api/col/l3s/bd;->s:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, v0, Lcom/amap/api/col/l3s/bd;->s:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3, v6, v7, v8}, Lcom/amap/api/col/l3s/bb;->a(IIII)V

    iget-object v1, v0, Lcom/amap/api/col/l3s/bd;->i:Lcom/amap/api/col/l3s/bf;

    iget-object v3, v0, Lcom/amap/api/col/l3s/bd;->j:Lcom/amap/api/col/l3s/bb;

    iget-object v6, v0, Lcom/amap/api/col/l3s/bd;->l:Ljava/util/List;

    invoke-virtual {v1, v3, v6, v4, v5}, Lcom/amap/api/col/l3s/bf;->a(Lcom/amap/api/col/l3s/bb;Ljava/util/Collection;D)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_3
    :try_start_2
    iget-object v1, v0, Lcom/amap/api/col/l3s/bd;->m:Lcom/autonavi/amap/mapcore/IPoint;

    if-nez v1, :cond_c

    new-instance v1, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iput-object v1, v0, Lcom/amap/api/col/l3s/bd;->m:Lcom/autonavi/amap/mapcore/IPoint;

    :cond_c
    iget-object v1, v0, Lcom/amap/api/col/l3s/bd;->m:Lcom/autonavi/amap/mapcore/IPoint;

    if-eqz v1, :cond_d

    if-eqz p1, :cond_d

    iget-object v1, v0, Lcom/amap/api/col/l3s/bd;->m:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    iget-object v1, v0, Lcom/amap/api/col/l3s/bd;->m:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    :cond_d
    iget-object v1, v0, Lcom/amap/api/col/l3s/bd;->o:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/col/l3s/ba;

    iget-object v12, v0, Lcom/amap/api/col/l3s/bd;->l:Ljava/util/List;

    monitor-enter v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v2, v0, Lcom/amap/api/col/l3s/bd;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    move v10, v11

    :cond_e
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/MultiPointItem;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/MultiPointItem;->getIPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v2

    if-eqz v2, :cond_e

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget-object v4, v0, Lcom/amap/api/col/l3s/bd;->m:Lcom/autonavi/amap/mapcore/IPoint;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v4, v0, Lcom/amap/api/col/l3s/bd;->m:Lcom/autonavi/amap/mapcore/IPoint;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v4

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ba;->b()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ba;->d()Z

    move-result v4

    if-nez v4, :cond_f

    iget-object v4, v0, Lcom/amap/api/col/l3s/bd;->n:Lcom/amap/api/col/l3s/be;

    if-eqz v4, :cond_f

    iget-object v4, v0, Lcom/amap/api/col/l3s/bd;->n:Lcom/amap/api/col/l3s/be;

    invoke-virtual {v4}, Lcom/amap/api/col/l3s/be;->a()Lcom/amap/api/col/l3s/dl;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amap/api/col/l3s/ba;->a(Lcom/amap/api/col/l3s/dl;)V

    :cond_f
    iget-object v4, v0, Lcom/amap/api/col/l3s/bd;->H:[F

    mul-int/lit8 v5, v10, 0x3

    add-int/lit8 v6, v5, 0x0

    int-to-float v3, v3

    aput v3, v4, v6

    iget-object v3, v0, Lcom/amap/api/col/l3s/bd;->H:[F

    add-int/lit8 v4, v5, 0x1

    int-to-float v2, v2

    aput v2, v3, v4

    iget-object v2, v0, Lcom/amap/api/col/l3s/bd;->H:[F

    add-int/lit8 v5, v5, 0x2

    const/4 v14, 0x0

    aput v14, v2, v5

    add-int/lit8 v10, v10, 0x1

    sget v2, Lcom/amap/api/col/l3s/ba;->a:I

    if-lt v10, v2, :cond_e

    iget-object v5, v0, Lcom/amap/api/col/l3s/bd;->H:[F

    iget v6, v0, Lcom/amap/api/col/l3s/bd;->d:F

    iget v7, v0, Lcom/amap/api/col/l3s/bd;->e:F

    move-object v2, v1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v8, v22

    move/from16 v9, v21

    invoke-virtual/range {v2 .. v10}, Lcom/amap/api/col/l3s/ba;->a([F[F[FFFFFI)V

    goto :goto_4

    :cond_10
    const/4 v14, 0x0

    goto :goto_5

    :cond_11
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lez v10, :cond_12

    :try_start_4
    iget-object v5, v0, Lcom/amap/api/col/l3s/bd;->H:[F

    iget v6, v0, Lcom/amap/api/col/l3s/bd;->d:F

    iget v7, v0, Lcom/amap/api/col/l3s/bd;->e:F

    move-object v2, v1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v8, v22

    move/from16 v9, v21

    invoke-virtual/range {v2 .. v10}, Lcom/amap/api/col/l3s/ba;->a([F[F[FFFFFI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_12
    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_1
    move-exception v0

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

    const-string v1, "MultiPointOverlayDelegate"

    const-string v2, "draw"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final addItem(Lcom/amap/api/maps/model/MultiPointItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/bd;->b()V

    return-void
.end method

.method public final addItems(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/MultiPointItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/bd;->h:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/bd;->h:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/bd;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/bd;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/amap/api/col/l3s/bd;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_4

    iget-object v2, p0, Lcom/amap/api/col/l3s/bd;->h:Ljava/util/List;

    if-nez v2, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    iget-object v2, p0, Lcom/amap/api/col/l3s/bd;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/MultiPointItem;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/amap/api/maps/model/MultiPointItem;->getLatLng()Lcom/amap/api/maps/model/LatLng;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/amap/api/maps/model/MultiPointItem;->getIPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v3

    if-nez v3, :cond_3

    new-instance v3, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v3}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    invoke-virtual {v2}, Lcom/amap/api/maps/model/MultiPointItem;->getLatLng()Lcom/amap/api/maps/model/LatLng;

    move-result-object v4

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual {v2}, Lcom/amap/api/maps/model/MultiPointItem;->getLatLng()Lcom/amap/api/maps/model/LatLng;

    move-result-object v6

    iget-wide v6, v6, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5, v6, v7, v3}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/MultiPointItem;->setIPoint(Lcom/autonavi/amap/mapcore/IPoint;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/amap/api/col/l3s/bd;->i:Lcom/amap/api/col/l3s/bf;

    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/amap/api/col/l3s/bd;->a()Lcom/amap/api/col/l3s/bb;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance v1, Lcom/amap/api/col/l3s/bf;

    invoke-direct {v1, p1}, Lcom/amap/api/col/l3s/bf;-><init>(Lcom/amap/api/col/l3s/bb;)V

    iput-object v1, p0, Lcom/amap/api/col/l3s/bd;->i:Lcom/amap/api/col/l3s/bf;

    :cond_5
    iget-object p1, p0, Lcom/amap/api/col/l3s/bd;->h:Ljava/util/List;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/amap/api/col/l3s/bd;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_1
    if-ge v0, p1, :cond_7

    iget-object v1, p0, Lcom/amap/api/col/l3s/bd;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/MultiPointItem;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/amap/api/maps/model/MultiPointItem;->getIPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/amap/api/col/l3s/bd;->i:Lcom/amap/api/col/l3s/bf;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/amap/api/col/l3s/bd;->i:Lcom/amap/api/col/l3s/bf;

    invoke-virtual {v2, v1}, Lcom/amap/api/col/l3s/bf;->a(Lcom/amap/api/maps/model/MultiPointItem;)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0}, Lcom/amap/api/col/l3s/bd;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

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
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    const-string p1, "MultiPointOverlayDelegate"

    const-string v0, "addItems"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public final destroy(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/bd;->remove(Z)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/bd;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    :cond_0
    return-void
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/bd;->B:Ljava/lang/String;

    if-nez v0, :cond_0

    sget v0, Lcom/amap/api/col/l3s/bd;->E:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/api/col/l3s/bd;->E:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiPointOverlay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/amap/api/col/l3s/bd;->E:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/bd;->B:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/bd;->B:Ljava/lang/String;

    return-object p0
.end method

.method public final onClick(Lcom/autonavi/amap/mapcore/IPoint;)Lcom/amap/api/maps/model/MultiPointItem;
    .locals 11

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/bd;->D:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/l3s/bd;->i:Lcom/amap/api/col/l3s/bf;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/bd;->t:Lcom/amap/api/col/l3s/bb;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/col/l3s/bb;

    invoke-direct {v0, v2, v3, v2, v3}, Lcom/amap/api/col/l3s/bb;-><init>(IIII)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/bd;->t:Lcom/amap/api/col/l3s/bb;

    :cond_1
    iget v0, p0, Lcom/amap/api/col/l3s/bd;->c:F

    const/high16 v4, 0x41000000    # 8.0f

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iget-object v4, p0, Lcom/amap/api/col/l3s/bd;->t:Lcom/amap/api/col/l3s/bb;

    iget v5, p1, Landroid/graphics/Point;->x:I

    sub-int v6, v5, v0

    add-int/2addr v5, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int v7, p1, v0

    add-int/2addr p1, v0

    invoke-virtual {v4, v6, v5, v7, p1}, Lcom/amap/api/col/l3s/bb;->a(IIII)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/bd;->l:Ljava/util/List;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/bd;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_0
    if-ltz v0, :cond_5

    iget-object v4, p0, Lcom/amap/api/col/l3s/bd;->l:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/maps/model/MultiPointItem;

    invoke-virtual {v4}, Lcom/amap/api/maps/model/MultiPointItem;->getIPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v6, p0, Lcom/amap/api/col/l3s/bd;->k:Lcom/amap/api/col/l3s/bb;

    if-nez v6, :cond_2

    monitor-exit p1

    return-object v1

    :cond_2
    iget-object v6, p0, Lcom/amap/api/col/l3s/bd;->u:Lcom/amap/api/col/l3s/bb;

    if-nez v6, :cond_3

    new-instance v6, Lcom/amap/api/col/l3s/bb;

    invoke-direct {v6, v2, v3, v2, v3}, Lcom/amap/api/col/l3s/bb;-><init>(IIII)V

    iput-object v6, p0, Lcom/amap/api/col/l3s/bd;->u:Lcom/amap/api/col/l3s/bb;

    :cond_3
    iget-object v6, p0, Lcom/amap/api/col/l3s/bd;->u:Lcom/amap/api/col/l3s/bb;

    iget v7, v5, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lcom/amap/api/col/l3s/bd;->k:Lcom/amap/api/col/l3s/bb;

    iget v8, v8, Lcom/amap/api/col/l3s/bb;->a:I

    add-int/2addr v7, v8

    iget v8, v5, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lcom/amap/api/col/l3s/bd;->k:Lcom/amap/api/col/l3s/bb;

    iget v9, v9, Lcom/amap/api/col/l3s/bb;->c:I

    add-int/2addr v8, v9

    iget v9, v5, Landroid/graphics/Point;->y:I

    iget-object v10, p0, Lcom/amap/api/col/l3s/bd;->k:Lcom/amap/api/col/l3s/bb;

    iget v10, v10, Lcom/amap/api/col/l3s/bb;->b:I

    add-int/2addr v9, v10

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget-object v10, p0, Lcom/amap/api/col/l3s/bd;->k:Lcom/amap/api/col/l3s/bb;

    iget v10, v10, Lcom/amap/api/col/l3s/bb;->d:I

    add-int/2addr v5, v10

    invoke-virtual {v6, v7, v8, v9, v5}, Lcom/amap/api/col/l3s/bb;->a(IIII)V

    iget-object v5, p0, Lcom/amap/api/col/l3s/bd;->u:Lcom/amap/api/col/l3s/bb;

    iget-object v6, p0, Lcom/amap/api/col/l3s/bd;->t:Lcom/amap/api/col/l3s/bb;

    invoke-virtual {v5, v6}, Lcom/amap/api/col/l3s/bb;->a(Lcom/amap/api/col/l3s/bb;)Z

    move-result v5

    if-eqz v5, :cond_4

    monitor-exit p1

    return-object v4

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    monitor-exit p1

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_6
    :goto_1
    return-object v1
.end method

.method public final remove(Z)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/bd;->D:Z

    :try_start_0
    iput v0, p0, Lcom/amap/api/col/l3s/bd;->v:I

    iput v0, p0, Lcom/amap/api/col/l3s/bd;->w:I

    iget-object v0, p0, Lcom/amap/api/col/l3s/bd;->a:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/bd;->a:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    :cond_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/bd;->h:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/bd;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/amap/api/col/l3s/bd;->h:Ljava/util/List;

    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/bd;->i:Lcom/amap/api/col/l3s/bf;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/bd;->i:Lcom/amap/api/col/l3s/bf;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/bf;->a()V

    iput-object v1, p0, Lcom/amap/api/col/l3s/bd;->i:Lcom/amap/api/col/l3s/bf;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/bd;->l:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3s/bd;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3s/bd;->F:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3s/bd;->F:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iput-object v1, p0, Lcom/amap/api/col/l3s/bd;->F:Ljava/util/concurrent/ExecutorService;

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/l3s/bd;->G:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/l3s/bd;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/l3s/bd;->o:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/col/l3s/bd;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/col/l3s/ba;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/amap/api/col/l3s/ba;->c()V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/amap/api/col/l3s/bd;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_8
    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/amap/api/col/l3s/bd;->n:Lcom/amap/api/col/l3s/be;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/amap/api/col/l3s/bd;->n:Lcom/amap/api/col/l3s/be;

    invoke-virtual {p1, p0}, Lcom/amap/api/col/l3s/be;->a(Lcom/amap/api/col/l3s/bd;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/bd;->n:Lcom/amap/api/col/l3s/be;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/be;->d()V

    :cond_9
    iput-object v1, p0, Lcom/amap/api/col/l3s/bd;->n:Lcom/amap/api/col/l3s/be;

    iput-object v1, p0, Lcom/amap/api/col/l3s/bd;->C:[F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

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
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    return-void
.end method

.method public final setAnchor(FF)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/bd;->f:F

    iput p2, p0, Lcom/amap/api/col/l3s/bd;->g:F

    invoke-direct {p0}, Lcom/amap/api/col/l3s/bd;->b()V

    return-void
.end method

.method public final setVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/bd;->D:Z

    if-eq v0, p1, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/bd;->b()V

    :cond_0
    iput-boolean p1, p0, Lcom/amap/api/col/l3s/bd;->D:Z

    return-void
.end method
