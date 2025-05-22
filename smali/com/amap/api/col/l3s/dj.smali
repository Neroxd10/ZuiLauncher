.class public final Lcom/amap/api/col/l3s/dj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/autonavi/base/amap/api/mapcore/overlays/ITileOverlayDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/dj$a;,
        Lcom/amap/api/col/l3s/dj$b;
    }
.end annotation


# static fields
.field private static h:I


# instance fields
.field a:Lcom/amap/api/col/l3s/dl$g;

.field private b:Lcom/amap/api/col/l3s/ai;

.field private c:Lcom/amap/api/maps/model/TileProvider;

.field private d:Ljava/lang/Float;

.field private e:Z

.field private f:Z

.field private g:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field private i:I

.field private j:I

.field private k:I

.field private l:Lcom/amap/api/col/l3s/ey;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3s/dj$a;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:Lcom/amap/api/col/l3s/dj$b;

.field private p:Ljava/lang/String;

.field private q:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps/model/TileOverlayOptions;Lcom/amap/api/col/l3s/ai;Z)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/dj;->f:Z

    const/16 v1, 0x100

    iput v1, p0, Lcom/amap/api/col/l3s/dj;->i:I

    iput v1, p0, Lcom/amap/api/col/l3s/dj;->j:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/amap/api/col/l3s/dj;->k:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/l3s/dj;->m:Ljava/util/List;

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/dj;->n:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/col/l3s/dj;->o:Lcom/amap/api/col/l3s/dj$b;

    iput-object v1, p0, Lcom/amap/api/col/l3s/dj;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3s/dj;->q:Ljava/nio/FloatBuffer;

    iput-object p2, p0, Lcom/amap/api/col/l3s/dj;->b:Lcom/amap/api/col/l3s/ai;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getTileProvider()Lcom/amap/api/maps/model/TileProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/l3s/dj;->c:Lcom/amap/api/maps/model/TileProvider;

    invoke-interface {v1}, Lcom/amap/api/maps/model/TileProvider;->getTileWidth()I

    move-result v1

    iput v1, p0, Lcom/amap/api/col/l3s/dj;->i:I

    iget-object v1, p0, Lcom/amap/api/col/l3s/dj;->c:Lcom/amap/api/maps/model/TileProvider;

    invoke-interface {v1}, Lcom/amap/api/maps/model/TileProvider;->getTileHeight()I

    move-result v1

    iput v1, p0, Lcom/amap/api/col/l3s/dj;->j:I

    const/16 v1, 0x8

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/amap/api/col/l3s/ex;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/l3s/dj;->q:Ljava/nio/FloatBuffer;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getZIndex()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/l3s/dj;->d:Ljava/lang/Float;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->isVisible()Z

    move-result v1

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/dj;->e:Z

    iput-boolean p3, p0, Lcom/amap/api/col/l3s/dj;->f:Z

    if-eqz p3, :cond_0

    const-string v1, "TileOverlay0"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/dj;->getId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/amap/api/col/l3s/dj;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/amap/api/col/l3s/dj;->b:Lcom/amap/api/col/l3s/ai;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ai;->a()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/l3s/dj;->g:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-object v1, p0, Lcom/amap/api/col/l3s/dj;->p:Ljava/lang/String;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/amap/api/col/l3s/dj;->k:I

    if-eqz p3, :cond_1

    :try_start_0
    new-instance p3, Lcom/amap/api/col/l3s/fb$a;

    iget-object v1, p0, Lcom/amap/api/col/l3s/dj;->b:Lcom/amap/api/col/l3s/ai;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ai;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/l3s/dj;->p:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/amap/api/col/l3s/ai;->a()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p2

    invoke-interface {p2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapLanguage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, v1, v2, p2}, Lcom/amap/api/col/l3s/fb$a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance p3, Lcom/amap/api/col/l3s/fb$a;

    iget-object p2, p0, Lcom/amap/api/col/l3s/dj;->b:Lcom/amap/api/col/l3s/ai;

    invoke-virtual {p2}, Lcom/amap/api/col/l3s/ai;->f()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lcom/amap/api/col/l3s/dj;->p:Ljava/lang/String;

    invoke-direct {p3, p2, v1}, Lcom/amap/api/col/l3s/fb$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getMemoryCacheEnabled()Z

    move-result p2

    iput-boolean p2, p3, Lcom/amap/api/col/l3s/fb$a;->f:Z

    iget-boolean p2, p0, Lcom/amap/api/col/l3s/dj;->f:Z

    if-eqz p2, :cond_2

    iput-boolean v0, p3, Lcom/amap/api/col/l3s/fb$a;->i:Z

    :cond_2
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getDiskCacheEnabled()Z

    move-result p2

    iput-boolean p2, p3, Lcom/amap/api/col/l3s/fb$a;->g:Z

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getMemCacheSize()I

    move-result p2

    iput p2, p3, Lcom/amap/api/col/l3s/fb$a;->a:I

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getDiskCacheSize()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-gtz p2, :cond_3

    iput-boolean v0, p3, Lcom/amap/api/col/l3s/fb$a;->g:Z

    :cond_3
    iput-wide v1, p3, Lcom/amap/api/col/l3s/fb$a;->b:J

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getDiskCacheDir()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string p2, ""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p3, Lcom/amap/api/col/l3s/fb$a;->c:Ljava/io/File;

    :cond_4
    new-instance p1, Lcom/amap/api/col/l3s/ey;

    iget-object p2, p0, Lcom/amap/api/col/l3s/dj;->b:Lcom/amap/api/col/l3s/ai;

    invoke-virtual {p2}, Lcom/amap/api/col/l3s/ai;->f()Landroid/content/Context;

    move-result-object p2

    iget v0, p0, Lcom/amap/api/col/l3s/dj;->i:I

    iget v1, p0, Lcom/amap/api/col/l3s/dj;->j:I

    invoke-direct {p1, p2, v0, v1}, Lcom/amap/api/col/l3s/ey;-><init>(Landroid/content/Context;II)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/dj;->l:Lcom/amap/api/col/l3s/ey;

    iget-object p2, p0, Lcom/amap/api/col/l3s/dj;->c:Lcom/amap/api/maps/model/TileProvider;

    invoke-virtual {p1, p2}, Lcom/amap/api/col/l3s/ey;->a(Lcom/amap/api/maps/model/TileProvider;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/dj;->l:Lcom/amap/api/col/l3s/ey;

    invoke-virtual {p1, p3}, Lcom/amap/api/col/l3s/fa;->a(Lcom/amap/api/col/l3s/fb$a;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/dj;->l:Lcom/amap/api/col/l3s/ey;

    new-instance p2, Lcom/amap/api/col/l3s/dj$1;

    invoke-direct {p2, p0}, Lcom/amap/api/col/l3s/dj$1;-><init>(Lcom/amap/api/col/l3s/dj;)V

    invoke-virtual {p1, p2}, Lcom/amap/api/col/l3s/fa;->a(Lcom/amap/api/col/l3s/fa$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/dj;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/dj;->g:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    return-object p0
.end method

.method static synthetic a(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;IIIILcom/amap/api/col/l3s/ai;Lcom/amap/api/col/l3s/ey;)Ljava/util/ArrayList;
    .locals 26

    invoke-interface/range {p0 .. p0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapProjection()Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v0

    invoke-interface/range {p0 .. p0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/base/amap/mapcore/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/Rectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v2

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iput v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iput v5, v2, Landroid/graphics/Point;->y:I

    const v5, 0x7fffffff

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v6, v2, Landroid/graphics/Point;->x:I

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v8, v2, Landroid/graphics/Point;->y:I

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v8, v2, Landroid/graphics/Point;->y:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v9, v1, Landroid/graphics/Rect;->right:I

    iput v9, v2, Landroid/graphics/Point;->x:I

    iget v10, v1, Landroid/graphics/Rect;->top:I

    iput v10, v2, Landroid/graphics/Point;->y:I

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v9, v2, Landroid/graphics/Point;->x:I

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v9, v2, Landroid/graphics/Point;->y:I

    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v9, v2, Landroid/graphics/Point;->y:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v9, v1, Landroid/graphics/Rect;->left:I

    iput v9, v2, Landroid/graphics/Point;->x:I

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    iput v10, v2, Landroid/graphics/Point;->y:I

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v9, v2, Landroid/graphics/Point;->x:I

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v9, v2, Landroid/graphics/Point;->y:I

    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v9, v2, Landroid/graphics/Point;->y:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v9, v1, Landroid/graphics/Rect;->right:I

    iput v9, v2, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v2, Landroid/graphics/Point;->y:I

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v4, v2, Landroid/graphics/Point;->x:I

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v6, v2, Landroid/graphics/Point;->y:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, v2, Landroid/graphics/Point;->y:I

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    rsub-int/lit8 v16, p1, 0x14

    const/16 v17, 0x1

    shl-int v8, v17, v16

    mul-int v9, v8, p2

    sub-int/2addr v1, v9

    mul-int v8, v8, p3

    sub-int/2addr v5, v8

    invoke-virtual {v0, v3}, Lcom/autonavi/base/ae/gmap/GLMapState;->getMapGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    iget v0, v3, Landroid/graphics/Point;->x:I

    shr-int v0, v0, v16

    div-int v0, v0, p2

    iget v8, v3, Landroid/graphics/Point;->y:I

    shr-int v8, v8, v16

    div-int v18, v8, p3

    shl-int v8, v0, v16

    mul-int v15, v8, p2

    shl-int v8, v18, v16

    mul-int v14, v8, p3

    new-instance v13, Lcom/amap/api/col/l3s/dj$a;

    move-object v8, v13

    move v9, v0

    move/from16 v10, v18

    move/from16 v11, p1

    move/from16 v12, p4

    move-object v7, v13

    move-object/from16 v13, p0

    move/from16 v19, v5

    move v5, v14

    move-object/from16 v14, p5

    move/from16 v20, v6

    move v6, v15

    move-object/from16 v15, p6

    invoke-direct/range {v8 .. v15}, Lcom/amap/api/col/l3s/dj$a;-><init>(IIIILcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Lcom/amap/api/col/l3s/ai;Lcom/amap/api/col/l3s/ey;)V

    invoke-static {v6, v5}, Lcom/autonavi/amap/mapcore/IPoint;->obtain(II)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v5

    iput-object v5, v7, Lcom/amap/api/col/l3s/dj$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v3, v17

    :goto_0
    sub-int v5, v0, v3

    move v6, v5

    const/4 v7, 0x0

    :goto_1
    add-int v15, v0, v3

    if-gt v6, v15, :cond_7

    add-int v10, v18, v3

    new-instance v15, Lcom/autonavi/amap/mapcore/IPoint;

    shl-int v8, v6, v16

    mul-int v14, v8, p2

    shl-int v8, v10, v16

    mul-int v8, v8, p3

    invoke-direct {v15, v14, v8}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    iget v8, v15, Landroid/graphics/Point;->x:I

    if-ge v8, v4, :cond_3

    if-le v8, v1, :cond_3

    iget v8, v15, Landroid/graphics/Point;->y:I

    move/from16 v13, v20

    if-ge v8, v13, :cond_2

    move/from16 v12, v19

    if-le v8, v12, :cond_1

    if-nez v7, :cond_0

    move/from16 v7, v17

    :cond_0
    new-instance v11, Lcom/amap/api/col/l3s/dj$a;

    move-object v8, v11

    move v9, v6

    move/from16 v19, v0

    move-object v0, v11

    move/from16 v11, p1

    move/from16 v20, v7

    move v7, v12

    move/from16 v12, p4

    move/from16 v21, v5

    move v5, v13

    move-object/from16 v13, p0

    move/from16 v22, v6

    move v6, v14

    move-object/from16 v14, p5

    move/from16 v23, v7

    move-object v7, v15

    move-object/from16 v15, p6

    invoke-direct/range {v8 .. v15}, Lcom/amap/api/col/l3s/dj$a;-><init>(IIIILcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Lcom/amap/api/col/l3s/ai;Lcom/amap/api/col/l3s/ey;)V

    iput-object v7, v0, Lcom/amap/api/col/l3s/dj$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v7, v20

    goto :goto_4

    :cond_1
    move/from16 v19, v0

    move/from16 v21, v5

    move/from16 v22, v6

    move v0, v7

    move/from16 v23, v12

    move v5, v13

    move v6, v14

    goto :goto_3

    :cond_2
    move/from16 v21, v5

    move/from16 v22, v6

    move v5, v13

    move v6, v14

    move/from16 v23, v19

    goto :goto_2

    :cond_3
    move/from16 v21, v5

    move/from16 v22, v6

    move v6, v14

    move/from16 v23, v19

    move/from16 v5, v20

    :goto_2
    move/from16 v19, v0

    move v0, v7

    :goto_3
    move v7, v0

    :goto_4
    sub-int v10, v18, v3

    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    shl-int v8, v10, v16

    mul-int v8, v8, p3

    invoke-direct {v0, v6, v8}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    iget v6, v0, Landroid/graphics/Point;->x:I

    if-ge v6, v4, :cond_6

    if-le v6, v1, :cond_6

    iget v6, v0, Landroid/graphics/Point;->y:I

    if-ge v6, v5, :cond_6

    move/from16 v15, v23

    if-le v6, v15, :cond_5

    if-nez v7, :cond_4

    move/from16 v7, v17

    :cond_4
    new-instance v6, Lcom/amap/api/col/l3s/dj$a;

    move-object v8, v6

    move/from16 v9, v22

    move/from16 v11, p1

    move/from16 v12, p4

    move-object/from16 v13, p0

    move-object/from16 v14, p5

    move/from16 v20, v7

    move v7, v15

    move-object/from16 v15, p6

    invoke-direct/range {v8 .. v15}, Lcom/amap/api/col/l3s/dj$a;-><init>(IIIILcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Lcom/amap/api/col/l3s/ai;Lcom/amap/api/col/l3s/ey;)V

    iput-object v0, v6, Lcom/amap/api/col/l3s/dj$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v0, v20

    goto :goto_5

    :cond_5
    move v0, v7

    move v7, v15

    goto :goto_5

    :cond_6
    move v0, v7

    move/from16 v7, v23

    :goto_5
    add-int/lit8 v6, v22, 0x1

    move/from16 v20, v5

    move/from16 v5, v21

    move/from16 v25, v7

    move v7, v0

    move/from16 v0, v19

    move/from16 v19, v25

    goto/16 :goto_1

    :cond_7
    move/from16 v21, v5

    move/from16 v5, v20

    move/from16 v25, v19

    move/from16 v19, v0

    move v0, v7

    move/from16 v7, v25

    add-int v6, v18, v3

    add-int/lit8 v6, v6, -0x1

    :goto_6
    sub-int v8, v18, v3

    if-le v6, v8, :cond_c

    new-instance v14, Lcom/autonavi/amap/mapcore/IPoint;

    shl-int v8, v15, v16

    mul-int v8, v8, p2

    shl-int v9, v6, v16

    mul-int v13, v9, p3

    invoke-direct {v14, v8, v13}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    iget v8, v14, Landroid/graphics/Point;->x:I

    if-ge v8, v4, :cond_9

    if-le v8, v1, :cond_9

    iget v8, v14, Landroid/graphics/Point;->y:I

    if-ge v8, v5, :cond_9

    if-le v8, v7, :cond_9

    if-nez v0, :cond_8

    move/from16 v0, v17

    :cond_8
    new-instance v12, Lcom/amap/api/col/l3s/dj$a;

    move-object v8, v12

    move v9, v15

    move v10, v6

    move/from16 v11, p1

    move/from16 v20, v0

    move-object v0, v12

    move/from16 v12, p4

    move/from16 v22, v3

    move v3, v13

    move-object/from16 v13, p0

    move/from16 v23, v6

    move-object v6, v14

    move-object/from16 v14, p5

    move/from16 v24, v15

    move-object/from16 v15, p6

    invoke-direct/range {v8 .. v15}, Lcom/amap/api/col/l3s/dj$a;-><init>(IIIILcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Lcom/amap/api/col/l3s/ai;Lcom/amap/api/col/l3s/ey;)V

    iput-object v6, v0, Lcom/amap/api/col/l3s/dj$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v0, v20

    goto :goto_7

    :cond_9
    move/from16 v22, v3

    move/from16 v23, v6

    move v3, v13

    move/from16 v24, v15

    :goto_7
    new-instance v6, Lcom/autonavi/amap/mapcore/IPoint;

    shl-int v8, v21, v16

    mul-int v8, v8, p2

    invoke-direct {v6, v8, v3}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    iget v3, v6, Landroid/graphics/Point;->x:I

    if-ge v3, v4, :cond_b

    if-le v3, v1, :cond_b

    iget v3, v6, Landroid/graphics/Point;->y:I

    if-ge v3, v5, :cond_b

    if-le v3, v7, :cond_b

    if-nez v0, :cond_a

    move/from16 v0, v17

    :cond_a
    new-instance v3, Lcom/amap/api/col/l3s/dj$a;

    move-object v8, v3

    move/from16 v9, v21

    move/from16 v10, v23

    move/from16 v11, p1

    move/from16 v12, p4

    move-object/from16 v13, p0

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    invoke-direct/range {v8 .. v15}, Lcom/amap/api/col/l3s/dj$a;-><init>(IIIILcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Lcom/amap/api/col/l3s/ai;Lcom/amap/api/col/l3s/ey;)V

    iput-object v6, v3, Lcom/amap/api/col/l3s/dj$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v6, v23, -0x1

    move/from16 v3, v22

    move/from16 v15, v24

    goto/16 :goto_6

    :cond_c
    move/from16 v22, v3

    if-eqz v0, :cond_d

    add-int/lit8 v3, v22, 0x1

    move/from16 v20, v5

    move/from16 v0, v19

    move/from16 v19, v7

    goto/16 :goto_0

    :cond_d
    return-object v2
.end method

.method private a(Z)V
    .locals 11

    :try_start_0
    new-instance v10, Lcom/amap/api/col/l3s/dj$b;

    iget-object v2, p0, Lcom/amap/api/col/l3s/dj;->g:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget v3, p0, Lcom/amap/api/col/l3s/dj;->i:I

    iget v4, p0, Lcom/amap/api/col/l3s/dj;->j:I

    iget v5, p0, Lcom/amap/api/col/l3s/dj;->k:I

    iget-object v6, p0, Lcom/amap/api/col/l3s/dj;->m:Ljava/util/List;

    iget-boolean v7, p0, Lcom/amap/api/col/l3s/dj;->f:Z

    iget-object v8, p0, Lcom/amap/api/col/l3s/dj;->b:Lcom/amap/api/col/l3s/ai;

    iget-object v9, p0, Lcom/amap/api/col/l3s/dj;->l:Lcom/amap/api/col/l3s/ey;

    move-object v0, v10

    move v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/amap/api/col/l3s/dj$b;-><init>(ZLcom/autonavi/base/amap/api/mapcore/IAMapDelegate;IIILjava/util/List;ZLcom/amap/api/col/l3s/ai;Lcom/amap/api/col/l3s/ey;)V

    iput-object v10, p0, Lcom/amap/api/col/l3s/dj;->o:Lcom/amap/api/col/l3s/dj$b;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v10, p0}, Lcom/amap/api/col/l3s/dx;->b([Ljava/lang/Object;)Lcom/amap/api/col/l3s/dx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method static synthetic a(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Ljava/util/List;IZLjava/util/List;ZLcom/amap/api/col/l3s/ai;Lcom/amap/api/col/l3s/ey;)Z
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/amap/api/col/l3s/dj;->b(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Ljava/util/List;IZLjava/util/List;ZLcom/amap/api/col/l3s/ai;Lcom/amap/api/col/l3s/ey;)Z

    move-result p0

    return p0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/dj;->o:Lcom/amap/api/col/l3s/dj$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/dx;->a()I

    move-result v0

    sget v1, Lcom/amap/api/col/l3s/dx$e;->b:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/dj;->o:Lcom/amap/api/col/l3s/dj$b;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/dx;->c()Z

    :cond_0
    return-void
.end method

.method private static b(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Ljava/util/List;IZLjava/util/List;ZLcom/amap/api/col/l3s/ai;Lcom/amap/api/col/l3s/ey;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;",
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3s/dj$a;",
            ">;IZ",
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3s/dj$a;",
            ">;Z",
            "Lcom/amap/api/col/l3s/ai;",
            "Lcom/amap/api/col/l3s/ey;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-nez p4, :cond_1

    return v0

    :cond_1
    monitor-enter p4

    :try_start_0
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/col/l3s/dj$a;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/col/l3s/dj$a;

    invoke-virtual {v2, v5}, Lcom/amap/api/col/l3s/dj$a;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, v2, Lcom/amap/api/col/l3s/dj$a;->g:Z

    if-eqz v6, :cond_3

    iget-boolean v4, v2, Lcom/amap/api/col/l3s/dj$a;->g:Z

    iput-boolean v4, v5, Lcom/amap/api/col/l3s/dj$a;->g:Z

    iget v4, v2, Lcom/amap/api/col/l3s/dj$a;->f:I

    iput v4, v5, Lcom/amap/api/col/l3s/dj$a;->f:I

    goto :goto_1

    :cond_4
    move v3, v0

    :goto_1
    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/amap/api/col/l3s/dj$a;->a()V

    goto :goto_0

    :cond_5
    invoke-interface {p4}, Ljava/util/List;->clear()V

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMaxZoomLevel()F

    move-result v1

    float-to-int v1, v1

    if-gt p2, v1, :cond_c

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMinZoomLevel()F

    move-result p0

    float-to-int p0, p0

    if-ge p2, p0, :cond_6

    goto :goto_4

    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-gtz p0, :cond_7

    monitor-exit p4

    return v0

    :cond_7
    :goto_2
    if-ge v0, p0, :cond_b

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amap/api/col/l3s/dj$a;

    if-eqz p2, :cond_a

    if-eqz p5, :cond_9

    invoke-virtual {p6}, Lcom/amap/api/col/l3s/ai;->a()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zh_cn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x6

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->isLoadWorldGridMap()Z

    move-result v1

    if-eqz v1, :cond_a

    iget v1, p2, Lcom/amap/api/col/l3s/dj$a;->c:I

    if-lt v1, v2, :cond_a

    iget v1, p2, Lcom/amap/api/col/l3s/dj$a;->a:I

    iget v2, p2, Lcom/amap/api/col/l3s/dj$a;->b:I

    iget v4, p2, Lcom/amap/api/col/l3s/dj$a;->c:I

    invoke-static {v1, v2, v4}, Lcom/amap/api/col/l3s/eq;->a(III)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_3

    :cond_8
    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->isLoadWorldGridMap()Z

    move-result v1

    if-nez v1, :cond_9

    iget v1, p2, Lcom/amap/api/col/l3s/dj$a;->c:I

    if-lt v1, v2, :cond_9

    iget v1, p2, Lcom/amap/api/col/l3s/dj$a;->a:I

    iget v2, p2, Lcom/amap/api/col/l3s/dj$a;->b:I

    iget v4, p2, Lcom/amap/api/col/l3s/dj$a;->c:I

    invoke-static {v1, v2, v4}, Lcom/amap/api/col/l3s/eq;->a(III)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p2, Lcom/amap/api/col/l3s/dj$a;->g:Z

    if-nez v1, :cond_a

    if-eqz p7, :cond_a

    invoke-virtual {p7, p3, p2}, Lcom/amap/api/col/l3s/fa;->a(ZLcom/amap/api/col/l3s/dj$a;)V

    :cond_a
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_b
    monitor-exit p4

    return v3

    :cond_c
    :goto_4
    monitor-exit p4

    return v0

    :catchall_0
    move-exception p0

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/dj;->m:Ljava/util/List;

    if-eqz v0, :cond_0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/dj;->m:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/amap/api/col/l3s/dj;->b()V

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/dj;->a()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/dj;->l:Lcom/amap/api/col/l3s/ey;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/fa;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/dj;->l:Lcom/amap/api/col/l3s/ey;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/fa;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/dj;->l:Lcom/amap/api/col/l3s/ey;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amap/api/col/l3s/fa;->a(Z)V

    :cond_0
    invoke-direct {p0, v1}, Lcom/amap/api/col/l3s/dj;->a(Z)V

    return-void
.end method

.method public final clearTileCache()V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/dj;->l:Lcom/amap/api/col/l3s/ey;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/fa;->f()V

    :cond_0
    return-void
.end method

.method public final destroy(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/amap/api/col/l3s/dj;->b()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/dj;->m:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/dj;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/amap/api/col/l3s/dj;->m:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/col/l3s/dj$a;

    invoke-virtual {v3}, Lcom/amap/api/col/l3s/dj$a;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/dj;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/dj;->l:Lcom/amap/api/col/l3s/ey;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/fa;->c(Z)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/dj;->l:Lcom/amap/api/col/l3s/ey;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amap/api/col/l3s/fa;->a(Z)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/dj;->l:Lcom/amap/api/col/l3s/ey;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/ey;->a(Lcom/amap/api/maps/model/TileProvider;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final drawTiles()V
    .locals 23

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/amap/api/col/l3s/dj;->m:Ljava/util/List;

    if-eqz v2, :cond_a

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Lcom/amap/api/col/l3s/dj;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    iget-object v0, v1, Lcom/amap/api/col/l3s/dj;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_9

    iget-object v0, v1, Lcom/amap/api/col/l3s/dj;->m:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/amap/api/col/l3s/dj$a;

    iget-boolean v0, v6, Lcom/amap/api/col/l3s/dj$a;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v7, 0x1

    if-nez v0, :cond_2

    :try_start_1
    iget-object v0, v6, Lcom/amap/api/col/l3s/dj$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    iget-object v8, v6, Lcom/amap/api/col/l3s/dj$a;->i:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_2

    iget-object v8, v6, Lcom/amap/api/col/l3s/dj$a;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz v0, :cond_2

    iget-object v0, v6, Lcom/amap/api/col/l3s/dj$a;->i:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ex;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, v6, Lcom/amap/api/col/l3s/dj$a;->f:I

    if-eqz v0, :cond_1

    iput-boolean v7, v6, Lcom/amap/api/col/l3s/dj$a;->g:Z

    :cond_1
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/amap/api/col/l3s/dj$a;->i:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    const-string v8, "TileOverlayDelegateImp"

    const-string v9, "drawTiles"

    invoke-static {v0, v8, v9}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    iget-boolean v0, v6, Lcom/amap/api/col/l3s/dj$a;->g:Z

    if-eqz v0, :cond_8

    iget v0, v6, Lcom/amap/api/col/l3s/dj$a;->c:I

    int-to-float v0, v0

    iget v8, v1, Lcom/amap/api/col/l3s/dj;->i:I

    iget v9, v1, Lcom/amap/api/col/l3s/dj;->j:I

    iget-object v10, v6, Lcom/amap/api/col/l3s/dj$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    iget v10, v10, Landroid/graphics/Point;->x:I

    iget-object v11, v6, Lcom/amap/api/col/l3s/dj$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    iget v11, v11, Landroid/graphics/Point;->y:I

    float-to-int v0, v0

    rsub-int/lit8 v0, v0, 0x14

    shl-int v0, v7, v0

    mul-int/2addr v9, v0

    add-int/2addr v11, v9

    iget-object v12, v1, Lcom/amap/api/col/l3s/dj;->g:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v12}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v12

    const/16 v13, 0xc

    new-array v13, v13, [F

    int-to-double v14, v10

    invoke-virtual {v12}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v16

    move/from16 v18, v8

    sub-double v7, v14, v16

    double-to-float v7, v7

    aput v7, v13, v4

    int-to-double v7, v11

    invoke-virtual {v12}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v16

    move/from16 v19, v5

    sub-double v4, v7, v16

    double-to-float v4, v4

    const/4 v5, 0x1

    aput v4, v13, v5

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput v5, v13, v4

    const/4 v4, 0x3

    mul-int v0, v0, v18

    add-int/2addr v10, v0

    move-object/from16 v16, v6

    int-to-double v5, v10

    invoke-virtual {v12}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v20

    sub-double v0, v5, v20

    double-to-float v0, v0

    aput v0, v13, v4

    invoke-virtual {v12}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v0

    sub-double/2addr v7, v0

    double-to-float v0, v7

    const/4 v1, 0x4

    aput v0, v13, v1

    const/4 v0, 0x5

    const/4 v4, 0x0

    aput v4, v13, v0

    invoke-virtual {v12}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v7

    sub-double/2addr v5, v7

    double-to-float v4, v5

    const/4 v5, 0x6

    aput v4, v13, v5

    const/4 v4, 0x7

    sub-int/2addr v11, v9

    int-to-double v6, v11

    invoke-virtual {v12}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v8

    sub-double v8, v6, v8

    double-to-float v8, v8

    aput v8, v13, v4

    const/16 v4, 0x8

    const/4 v0, 0x0

    aput v0, v13, v4

    const/16 v4, 0x9

    invoke-virtual {v12}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v8

    sub-double/2addr v14, v8

    double-to-float v8, v14

    aput v8, v13, v4

    const/16 v4, 0xa

    invoke-virtual {v12}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v8

    sub-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, v13, v4

    const/16 v4, 0xb

    const/4 v0, 0x0

    aput v0, v13, v4

    move-object/from16 v4, v16

    iget-object v0, v4, Lcom/amap/api/col/l3s/dj$a;->h:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_3

    invoke-static {v13}, Lcom/amap/api/col/l3s/ex;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    :goto_2
    iput-object v0, v4, Lcom/amap/api/col/l3s/dj$a;->h:Ljava/nio/FloatBuffer;

    goto :goto_3

    :cond_3
    iget-object v0, v4, Lcom/amap/api/col/l3s/dj$a;->h:Ljava/nio/FloatBuffer;

    invoke-static {v13, v0}, Lcom/amap/api/col/l3s/ex;->a([FLjava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    goto :goto_2

    :goto_3
    iget v0, v4, Lcom/amap/api/col/l3s/dj$a;->f:I

    iget-object v11, v4, Lcom/amap/api/col/l3s/dj$a;->h:Ljava/nio/FloatBuffer;

    move-object/from16 v4, p0

    iget-object v15, v4, Lcom/amap/api/col/l3s/dj;->q:Ljava/nio/FloatBuffer;

    if-eqz v11, :cond_7

    if-eqz v15, :cond_7

    if-nez v0, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object v6, v4, Lcom/amap/api/col/l3s/dj;->a:Lcom/amap/api/col/l3s/dl$g;

    if-eqz v6, :cond_5

    iget-object v6, v4, Lcom/amap/api/col/l3s/dj;->a:Lcom/amap/api/col/l3s/dl$g;

    invoke-virtual {v6}, Lcom/amap/api/col/l3s/dk;->b()Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    iget-object v6, v4, Lcom/amap/api/col/l3s/dj;->b:Lcom/amap/api/col/l3s/ai;

    if-eqz v6, :cond_6

    iget-object v6, v4, Lcom/amap/api/col/l3s/dj;->b:Lcom/amap/api/col/l3s/ai;

    invoke-virtual {v6}, Lcom/amap/api/col/l3s/ai;->a()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, v4, Lcom/amap/api/col/l3s/dj;->b:Lcom/amap/api/col/l3s/ai;

    invoke-virtual {v6}, Lcom/amap/api/col/l3s/ai;->a()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLShader(I)Lcom/amap/api/col/l3s/dk;

    move-result-object v6

    check-cast v6, Lcom/amap/api/col/l3s/dl$g;

    iput-object v6, v4, Lcom/amap/api/col/l3s/dj;->a:Lcom/amap/api/col/l3s/dl$g;

    :cond_6
    iget-object v6, v4, Lcom/amap/api/col/l3s/dj;->a:Lcom/amap/api/col/l3s/dl$g;

    iget v6, v6, Lcom/amap/api/col/l3s/dk;->d:I

    invoke-static {v6}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/16 v18, 0xbe2

    invoke-static/range {v18 .. v18}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v6, 0x303

    const/4 v7, 0x1

    invoke-static {v7, v6}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v6, v6, v6}, Landroid/opengl/GLES20;->glBlendColor(FFFF)V

    const v6, 0x84c0

    invoke-static {v6}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v14, 0xde1

    invoke-static {v14, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, v4, Lcom/amap/api/col/l3s/dj;->a:Lcom/amap/api/col/l3s/dl$g;

    iget v0, v0, Lcom/amap/api/col/l3s/dl$g;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, v4, Lcom/amap/api/col/l3s/dj;->a:Lcom/amap/api/col/l3s/dl$g;

    iget v6, v0, Lcom/amap/api/col/l3s/dl$g;->b:I

    const/4 v7, 0x3

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/16 v10, 0xc

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v0, v4, Lcom/amap/api/col/l3s/dj;->a:Lcom/amap/api/col/l3s/dl$g;

    iget v0, v0, Lcom/amap/api/col/l3s/dl$g;->c:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, v4, Lcom/amap/api/col/l3s/dj;->a:Lcom/amap/api/col/l3s/dl$g;

    iget v12, v0, Lcom/amap/api/col/l3s/dl$g;->c:I

    const/4 v13, 0x2

    const/16 v0, 0x1406

    const/4 v6, 0x0

    const/16 v16, 0x8

    move v7, v14

    move v14, v0

    move-object v0, v15

    move v15, v6

    move-object/from16 v17, v0

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v0, v4, Lcom/amap/api/col/l3s/dj;->a:Lcom/amap/api/col/l3s/dl$g;

    iget v0, v0, Lcom/amap/api/col/l3s/dl$g;->a:I

    iget-object v6, v4, Lcom/amap/api/col/l3s/dj;->b:Lcom/amap/api/col/l3s/ai;

    invoke-virtual {v6}, Lcom/amap/api/col/l3s/ai;->g()[F

    move-result-object v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v0, v8, v9, v6, v9}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-static {v5, v9, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget-object v0, v4, Lcom/amap/api/col/l3s/dj;->a:Lcom/amap/api/col/l3s/dl$g;

    iget v0, v0, Lcom/amap/api/col/l3s/dl$g;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget-object v0, v4, Lcom/amap/api/col/l3s/dj;->a:Lcom/amap/api/col/l3s/dl$g;

    iget v0, v0, Lcom/amap/api/col/l3s/dl$g;->c:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    const/4 v1, 0x0

    invoke-static {v7, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-static/range {v18 .. v18}, Landroid/opengl/GLES20;->glDisable(I)V

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v1, 0x0

    goto :goto_5

    :cond_8
    move/from16 v19, v5

    move/from16 v22, v4

    move-object v4, v1

    move/from16 v1, v22

    :goto_5
    add-int/lit8 v5, v19, 0x1

    move-object/from16 v22, v4

    move v4, v1

    move-object/from16 v1, v22

    goto/16 :goto_0

    :cond_9
    monitor-exit v2

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_a
    return-void
.end method

.method public final equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/dj;->getId()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/amap/api/col/l3s/dj;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    sget v0, Lcom/amap/api/col/l3s/dj;->h:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/api/col/l3s/dj;->h:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TileOverlay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/amap/api/col/l3s/dj;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/dj;->p:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/dj;->p:Ljava/lang/String;

    return-object p0
.end method

.method public final getZIndex()F
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/dj;->d:Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public final hashCodeRemote()I
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/dj;->e:Z

    return p0
.end method

.method public final onFling(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/dj;->n:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/dj;->n:Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/dj;->l:Lcom/amap/api/col/l3s/ey;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/fa;->a(Z)V

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 4

    invoke-direct {p0}, Lcom/amap/api/col/l3s/dj;->b()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/dj;->m:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/dj;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/amap/api/col/l3s/dj;->m:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/col/l3s/dj$a;

    invoke-virtual {v3}, Lcom/amap/api/col/l3s/dj$a;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/dj;->m:Ljava/util/List;

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

.method public final onResume()V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/dj;->l:Lcom/amap/api/col/l3s/ey;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/fa;->a()V

    :cond_0
    return-void
.end method

.method public final reLoadTexture()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/dj;->m:Ljava/util/List;

    if-eqz v0, :cond_2

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/dj;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/dj;->m:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/col/l3s/dj$a;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/amap/api/col/l3s/dj$a;->g:Z

    iput v2, v1, Lcom/amap/api/col/l3s/dj$a;->f:I

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    return-void
.end method

.method public final refresh(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/dj;->n:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/l3s/dj;->b()V

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/dj;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "TileOverlayDelegateImp"

    const-string v0, "refresh"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final remove()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/dj;->b:Lcom/amap/api/col/l3s/ai;

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3s/ai;->a(Lcom/autonavi/base/amap/api/mapcore/overlays/ITileOverlayDelegate;)Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/dj;->g:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setVisible(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/dj;->e:Z

    iget-object v0, p0, Lcom/amap/api/col/l3s/dj;->g:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/dj;->refresh(Z)V

    :cond_0
    return-void
.end method

.method public final setZIndex(F)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/dj;->d:Ljava/lang/Float;

    iget-object p0, p0, Lcom/amap/api/col/l3s/dj;->b:Lcom/amap/api/col/l3s/ai;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ai;->d()V

    return-void
.end method
