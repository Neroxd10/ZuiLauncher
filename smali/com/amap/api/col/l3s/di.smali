.class public final Lcom/amap/api/col/l3s/di;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/autonavi/base/amap/api/mapcore/overlays/ITextDelegate;


# static fields
.field private static a:I


# instance fields
.field private A:I

.field private B:Z

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3s/af;",
            ">;"
        }
    .end annotation
.end field

.field private D:Z

.field private E:Z

.field private F:[F

.field private b:F

.field private c:F

.field private d:I

.field private e:I

.field private f:Lcom/autonavi/base/amap/mapcore/FPoint;

.field private g:I

.field private h:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Lcom/amap/api/maps/model/LatLng;

.field private m:F

.field private n:F

.field private o:Z

.field private p:Lcom/amap/api/col/l3s/ad;

.field private q:Ljava/lang/Object;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:I

.field private u:I

.field private v:Landroid/graphics/Typeface;

.field private w:F

.field private x:Landroid/graphics/Rect;

.field private y:Landroid/graphics/Paint;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps/model/TextOptions;Lcom/amap/api/col/l3s/ad;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3s/di;->b:F

    iput v0, p0, Lcom/amap/api/col/l3s/di;->c:F

    const/4 v0, 0x4

    iput v0, p0, Lcom/amap/api/col/l3s/di;->d:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/amap/api/col/l3s/di;->e:I

    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/di;->f:Lcom/autonavi/base/amap/mapcore/FPoint;

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/amap/api/col/l3s/di;->m:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/col/l3s/di;->n:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/di;->o:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/di;->x:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/di;->y:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/di;->B:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/l3s/di;->C:Ljava/util/List;

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/di;->D:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/di;->E:Z

    const/16 v0, 0x24

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/amap/api/col/l3s/di;->F:[F

    iput-object p2, p0, Lcom/amap/api/col/l3s/di;->p:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3s/di;->l:Lcom/amap/api/maps/model/LatLng;

    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getAlignX()I

    move-result p2

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getAlignY()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/amap/api/col/l3s/di;->setAlign(II)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->isVisible()Z

    move-result p2

    iput-boolean p2, p0, Lcom/amap/api/col/l3s/di;->o:Z

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getText()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3s/di;->r:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getBackgroundColor()I

    move-result p2

    iput p2, p0, Lcom/amap/api/col/l3s/di;->s:I

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getFontColor()I

    move-result p2

    iput p2, p0, Lcom/amap/api/col/l3s/di;->t:I

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getFontSize()I

    move-result p2

    iput p2, p0, Lcom/amap/api/col/l3s/di;->u:I

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getObject()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3s/di;->q:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getZIndex()F

    move-result p2

    iput p2, p0, Lcom/amap/api/col/l3s/di;->w:F

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3s/di;->v:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/di;->getId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3s/di;->k:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getRotate()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/di;->setRotateAngle(F)V

    invoke-direct {p0}, Lcom/amap/api/col/l3s/di;->a()V

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/di;->calFPoint()Z

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a()V
    .locals 7

    iget-object v0, p0, Lcom/amap/api/col/l3s/di;->r:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/di;->y:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/amap/api/col/l3s/di;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/amap/api/col/l3s/di;->y:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/di;->y:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/di;->y:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/di;->y:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/di;->y:Landroid/graphics/Paint;

    iget v1, p0, Lcom/amap/api/col/l3s/di;->u:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/di;->y:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/di;->y:Landroid/graphics/Paint;

    iget v1, p0, Lcom/amap/api/col/l3s/di;->t:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/di;->y:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, v1

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v2, v3

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v2, v0

    float-to-int v0, v2

    iget-object v2, p0, Lcom/amap/api/col/l3s/di;->y:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/amap/api/col/l3s/di;->r:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/amap/api/col/l3s/di;->r:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/amap/api/col/l3s/di;->x:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/amap/api/col/l3s/di;->x:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v3, p0, Lcom/amap/api/col/l3s/di;->s:I

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v3, p0, Lcom/amap/api/col/l3s/di;->r:Ljava/lang/String;

    iget-object v4, p0, Lcom/amap/api/col/l3s/di;->x:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    int-to-float v0, v0

    iget-object v5, p0, Lcom/amap/api/col/l3s/di;->y:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-static {v1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/di;->h:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3s/di;->i:I

    iget-object v0, p0, Lcom/amap/api/col/l3s/di;->h:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3s/di;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "TextDelegateImp"

    const-string v1, "initBitmap"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lcom/amap/api/col/l3s/af;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/di;->C:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/af;->n()V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/di;->p:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ad;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/di;->p:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ad;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    :cond_0
    return-void
.end method

.method private declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/l3s/di;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/di;->E:Z

    invoke-direct {p0}, Lcom/amap/api/col/l3s/di;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final calFPoint()Z
    .locals 8

    iget-object v0, p0, Lcom/amap/api/col/l3s/di;->l:Lcom/amap/api/maps/model/LatLng;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/di;->l:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5, v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/amap/api/col/l3s/di;->z:I

    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/amap/api/col/l3s/di;->A:I

    iget-object v1, p0, Lcom/amap/api/col/l3s/di;->p:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ad;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v2

    iget-object v1, p0, Lcom/amap/api/col/l3s/di;->l:Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v5, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v7, p0, Lcom/amap/api/col/l3s/di;->f:Lcom/autonavi/base/amap/mapcore/FPoint;

    invoke-interface/range {v2 .. v7}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLatLng2Map(DDLcom/autonavi/base/amap/mapcore/FPoint;)V

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    const/4 p0, 0x1

    return p0
.end method

.method public final checkInBounds()Z
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/di;->p:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ad;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/base/amap/mapcore/Rectangle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/amap/api/col/l3s/di;->z:I

    iget p0, p0, Lcom/amap/api/col/l3s/di;->A:I

    invoke-virtual {v0, v1, p0}, Lcom/autonavi/base/amap/mapcore/Rectangle;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final destroy(Z)V
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/col/l3s/di;->D:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/di;->remove()Z

    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/di;->C:Ljava/util/List;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amap/api/col/l3s/di;->C:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/di;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/di;->C:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/l3s/af;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3s/di;->p:Lcom/amap/api/col/l3s/ad;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3s/di;->p:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/l3s/ad;->a(Lcom/amap/api/col/l3s/af;)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/di;->p:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ad;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3s/di;->p:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ad;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/af;->q()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->removeTextureItem(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3s/di;->C:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_3
    iget-object p1, p0, Lcom/amap/api/col/l3s/di;->h:Lcom/amap/api/maps/model/BitmapDescriptor;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/amap/api/col/l3s/di;->h:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/di;->h:Lcom/amap/api/maps/model/BitmapDescriptor;

    :cond_4
    iput-object v0, p0, Lcom/amap/api/col/l3s/di;->l:Lcom/amap/api/maps/model/LatLng;

    iput-object v0, p0, Lcom/amap/api/col/l3s/di;->q:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "TextDelegateImp"

    const-string v0, "destroy"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "destroy erro"

    const-string p1, "TextDelegateImp destroy"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final drawMarker(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 0

    return-void
.end method

.method public final drawMarker(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;[FIF)V
    .locals 8

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/di;->o:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/di;->D:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/di;->l:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/di;->h:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/di;->f:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v1, p0, Lcom/amap/api/col/l3s/di;->z:I

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v2

    double-to-int v2, v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/amap/api/col/l3s/di;->f:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v1, p0, Lcom/amap/api/col/l3s/di;->A:I

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v2

    double-to-int v2, v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :try_start_0
    iget v0, p0, Lcom/amap/api/col/l3s/di;->i:I

    int-to-float v0, v0

    mul-float/2addr v0, p4

    iget v1, p0, Lcom/amap/api/col/l3s/di;->j:I

    int-to-float v1, v1

    mul-float/2addr p4, v1

    iget-object v1, p0, Lcom/amap/api/col/l3s/di;->f:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/amap/api/col/l3s/di;->f:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSC()F

    move-result p1

    iget-object v3, p0, Lcom/amap/api/col/l3s/di;->F:[F

    iget v4, p0, Lcom/amap/api/col/l3s/di;->m:F

    mul-float/2addr v4, v0

    sub-float v4, v1, v4

    const/4 v5, 0x0

    aput v4, v3, v5

    iget-object v3, p0, Lcom/amap/api/col/l3s/di;->F:[F

    const/4 v4, 0x1

    iget v6, p0, Lcom/amap/api/col/l3s/di;->n:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v6, v7, v6

    mul-float/2addr v6, p4

    add-float/2addr v6, v2

    aput v6, v3, v4

    iget-object v3, p0, Lcom/amap/api/col/l3s/di;->F:[F

    const/4 v4, 0x2

    aput v1, v3, v4

    iget-object v3, p0, Lcom/amap/api/col/l3s/di;->F:[F

    const/4 v4, 0x3

    aput v2, v3, v4

    iget-object v3, p0, Lcom/amap/api/col/l3s/di;->F:[F

    const/4 v4, 0x6

    iget v6, p0, Lcom/amap/api/col/l3s/di;->b:F

    aput v6, v3, v4

    iget-object v3, p0, Lcom/amap/api/col/l3s/di;->F:[F

    const/4 v4, 0x7

    aput p1, v3, v4

    iget-object v3, p0, Lcom/amap/api/col/l3s/di;->F:[F

    const/16 v4, 0x9

    iget v6, p0, Lcom/amap/api/col/l3s/di;->m:F

    sub-float v6, v7, v6

    mul-float/2addr v6, v0

    add-float/2addr v6, v1

    aput v6, v3, v4

    iget-object v3, p0, Lcom/amap/api/col/l3s/di;->F:[F

    const/16 v4, 0xa

    iget v6, p0, Lcom/amap/api/col/l3s/di;->n:F

    sub-float v6, v7, v6

    mul-float/2addr v6, p4

    add-float/2addr v6, v2

    aput v6, v3, v4

    iget-object v3, p0, Lcom/amap/api/col/l3s/di;->F:[F

    const/16 v4, 0xb

    aput v1, v3, v4

    iget-object v3, p0, Lcom/amap/api/col/l3s/di;->F:[F

    const/16 v4, 0xc

    aput v2, v3, v4

    iget-object v3, p0, Lcom/amap/api/col/l3s/di;->F:[F

    const/16 v4, 0xf

    iget v6, p0, Lcom/amap/api/col/l3s/di;->b:F

    aput v6, v3, v4

    iget-object v3, p0, Lcom/amap/api/col/l3s/di;->F:[F

    const/16 v4, 0x10

    aput p1, v3, v4

    iget-object v3, p0, Lcom/amap/api/col/l3s/di;->F:[F

    const/16 v4, 0x12

    iget v6, p0, Lcom/amap/api/col/l3s/di;->m:F

    sub-float/2addr v7, v6

    mul-float/2addr v7, v0

    add-float/2addr v7, v1

    aput v7, v3, v4

    iget-object v3, p0, Lcom/amap/api/col/l3s/di;->F:[F

    const/16 v4, 0x13

    iget v6, p0, Lcom/amap/api/col/l3s/di;->n:F

    mul-float/2addr v6, p4

    sub-float v6, v2, v6

    aput v6, v3, v4

    iget-object v3, p0, Lcom/amap/api/col/l3s/di;->F:[F

    const/16 v4, 0x14

    aput v1, v3, v4

    iget-object v3, p0, Lcom/amap/api/col/l3s/di;->F:[F

    const/16 v4, 0x15

    aput v2, v3, v4

    iget-object v3, p0, Lcom/amap/api/col/l3s/di;->F:[F

    const/16 v4, 0x18

    iget v6, p0, Lcom/amap/api/col/l3s/di;->b:F

    aput v6, v3, v4

    iget-object v3, p0, Lcom/amap/api/col/l3s/di;->F:[F

    const/16 v4, 0x19

    aput p1, v3, v4

    iget-object v3, p0, Lcom/amap/api/col/l3s/di;->F:[F

    const/16 v4, 0x1b

    iget v6, p0, Lcom/amap/api/col/l3s/di;->m:F

    mul-float/2addr v0, v6

    sub-float v0, v1, v0

    aput v0, v3, v4

    iget-object v0, p0, Lcom/amap/api/col/l3s/di;->F:[F

    const/16 v3, 0x1c

    iget v4, p0, Lcom/amap/api/col/l3s/di;->n:F

    mul-float/2addr p4, v4

    sub-float p4, v2, p4

    aput p4, v0, v3

    iget-object p4, p0, Lcom/amap/api/col/l3s/di;->F:[F

    const/16 v0, 0x1d

    aput v1, p4, v0

    iget-object p4, p0, Lcom/amap/api/col/l3s/di;->F:[F

    const/16 v0, 0x1e

    aput v2, p4, v0

    iget-object p4, p0, Lcom/amap/api/col/l3s/di;->F:[F

    const/16 v0, 0x21

    iget v1, p0, Lcom/amap/api/col/l3s/di;->b:F

    aput v1, p4, v0

    iget-object p4, p0, Lcom/amap/api/col/l3s/di;->F:[F

    const/16 v0, 0x22

    aput p1, p4, v0

    iget-object p1, p0, Lcom/amap/api/col/l3s/di;->F:[F

    iget-object p0, p0, Lcom/amap/api/col/l3s/di;->F:[F

    array-length p0, p0

    invoke-static {p1, v5, p2, p3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "TextDelegateImp"

    const-string p2, "drawMarker"

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/di;->getId()Ljava/lang/String;

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

.method public final getAlignX()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/di;->d:I

    return p0
.end method

.method public final getAlignY()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/di;->e:I

    return p0
.end method

.method public final getAnchorU()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/di;->m:F

    return p0
.end method

.method public final getAnchorV()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/di;->n:F

    return p0
.end method

.method public final getBackgroundColor()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/di;->s:I

    return p0
.end method

.method public final getFontColor()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/di;->t:I

    return p0
.end method

.method public final getFontSize()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/di;->u:I

    return p0
.end method

.method public final getIAnimation()Lcom/autonavi/base/amap/mapcore/interfaces/IAnimation;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/di;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    sget v0, Lcom/amap/api/col/l3s/di;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/api/col/l3s/di;->a:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Text"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/amap/api/col/l3s/di;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/di;->k:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/di;->k:Ljava/lang/String;

    return-object p0
.end method

.method public final getObject()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/di;->q:Ljava/lang/Object;

    return-object p0
.end method

.method public final getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/di;->l:Lcom/amap/api/maps/model/LatLng;

    return-object p0
.end method

.method public final getRect()Landroid/graphics/Rect;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRotateAngle()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/di;->c:F

    return p0
.end method

.method public final getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/di;->r:Ljava/lang/String;

    return-object p0
.end method

.method public final getTextureId()I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/amap/api/col/l3s/di;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getTypeface()Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/di;->v:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public final getZIndex()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/di;->w:F

    return p0
.end method

.method public final hashCodeRemote()I
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final isAllowLow()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isBelowMaskLayer()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isInfoWindowShown()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isOnTap()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/di;->B:Z

    return p0
.end method

.method public final isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/di;->o:Z

    return p0
.end method

.method public final loadTexture(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 6

    iget-boolean p1, p0, Lcom/amap/api/col/l3s/di;->E:Z

    if-nez p1, :cond_8

    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xc

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/di;->h:Lcom/amap/api/maps/model/BitmapDescriptor;

    iget-object v3, p0, Lcom/amap/api/col/l3s/di;->C:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/amap/api/col/l3s/di;->C:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/col/l3s/af;

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/amap/api/col/l3s/di;->p:Lcom/amap/api/col/l3s/ad;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/amap/api/col/l3s/di;->p:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v5, v4}, Lcom/amap/api/col/l3s/ad;->a(Lcom/amap/api/col/l3s/af;)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/amap/api/col/l3s/di;->C:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_3
    const/4 v3, 0x0

    if-eqz p1, :cond_4

    iget-object v3, p0, Lcom/amap/api/col/l3s/di;->p:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v3}, Lcom/amap/api/col/l3s/ad;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getTextureItem(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/col/l3s/af;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/amap/api/col/l3s/af;->l()I

    move-result v2

    invoke-direct {p0, v3}, Lcom/amap/api/col/l3s/di;->a(Lcom/amap/api/col/l3s/af;)V

    goto :goto_2

    :cond_4
    if-nez v3, :cond_5

    new-instance v3, Lcom/amap/api/col/l3s/af;

    invoke-direct {v3, v0, v2}, Lcom/amap/api/col/l3s/af;-><init>(Lcom/amap/api/maps/model/BitmapDescriptor;I)V

    :cond_5
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_7

    new-array v4, v1, [I

    aput v2, v4, v2

    invoke-static {v1, v4, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v2, v4, v2

    invoke-virtual {v3, v2}, Lcom/amap/api/col/l3s/af;->a(I)V

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/amap/api/col/l3s/di;->p:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/ad;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->addTextureItem(Lcom/amap/api/col/l3s/af;)V

    :cond_6
    invoke-direct {p0, v3}, Lcom/amap/api/col/l3s/di;->a(Lcom/amap/api/col/l3s/af;)V

    invoke-static {v2, v0, v1}, Lcom/amap/api/col/l3s/ex;->a(ILandroid/graphics/Bitmap;Z)I

    :cond_7
    :goto_2
    iput v2, p0, Lcom/amap/api/col/l3s/di;->g:I

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/di;->E:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "TextDelegateImp"

    const-string v0, "loadtexture"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    return-void
.end method

.method public final reLoadTexture()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/di;->E:Z

    iput v0, p0, Lcom/amap/api/col/l3s/di;->g:I

    invoke-direct {p0}, Lcom/amap/api/col/l3s/di;->a()V

    return-void
.end method

.method public final remove()Z
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/col/l3s/di;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/di;->o:Z

    iget-object v0, p0, Lcom/amap/api/col/l3s/di;->p:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3s/ad;->a(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;)Z

    move-result p0

    return p0
.end method

.method public final setAlign(II)V
    .locals 4

    iput p1, p0, Lcom/amap/api/col/l3s/di;->d:I

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    iput v3, p0, Lcom/amap/api/col/l3s/di;->m:F

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/amap/api/col/l3s/di;->m:F

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/amap/api/col/l3s/di;->m:F

    :goto_0
    iput p2, p0, Lcom/amap/api/col/l3s/di;->e:I

    const/16 p1, 0x8

    if-eq p2, p1, :cond_3

    const/16 p1, 0x10

    if-eq p2, p1, :cond_2

    const/16 p1, 0x20

    iput v3, p0, Lcom/amap/api/col/l3s/di;->n:F

    goto :goto_1

    :cond_2
    iput v1, p0, Lcom/amap/api/col/l3s/di;->n:F

    goto :goto_1

    :cond_3
    iput v2, p0, Lcom/amap/api/col/l3s/di;->n:F

    :goto_1
    invoke-direct {p0}, Lcom/amap/api/col/l3s/di;->b()V

    return-void
.end method

.method public final setAnchor(FF)V
    .locals 0

    return-void
.end method

.method public final setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/di;->s:I

    invoke-direct {p0}, Lcom/amap/api/col/l3s/di;->c()V

    return-void
.end method

.method public final setFontColor(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/di;->t:I

    invoke-direct {p0}, Lcom/amap/api/col/l3s/di;->c()V

    return-void
.end method

.method public final setFontSize(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/di;->u:I

    invoke-direct {p0}, Lcom/amap/api/col/l3s/di;->c()V

    return-void
.end method

.method public final setObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/di;->q:Ljava/lang/Object;

    return-void
.end method

.method public final setOnTap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/di;->B:Z

    return-void
.end method

.method public final setPosition(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/di;->l:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/di;->calFPoint()Z

    invoke-direct {p0}, Lcom/amap/api/col/l3s/di;->b()V

    return-void
.end method

.method public final setRotateAngle(F)V
    .locals 1

    iput p1, p0, Lcom/amap/api/col/l3s/di;->c:F

    neg-float p1, p1

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    add-float/2addr p1, v0

    rem-float/2addr p1, v0

    iput p1, p0, Lcom/amap/api/col/l3s/di;->b:F

    invoke-direct {p0}, Lcom/amap/api/col/l3s/di;->b()V

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/di;->r:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amap/api/col/l3s/di;->c()V

    return-void
.end method

.method public final setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/di;->v:Landroid/graphics/Typeface;

    invoke-direct {p0}, Lcom/amap/api/col/l3s/di;->c()V

    return-void
.end method

.method public final setVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/di;->o:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/amap/api/col/l3s/di;->o:Z

    invoke-direct {p0}, Lcom/amap/api/col/l3s/di;->b()V

    return-void
.end method

.method public final setZIndex(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/di;->w:F

    iget-object p0, p0, Lcom/amap/api/col/l3s/di;->p:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ad;->e()V

    return-void
.end method
