.class public final Lcom/amap/api/col/l3s/cy;
.super Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;
.source ""

# interfaces
.implements Lcom/autonavi/amap/mapcore/interfaces/IglModel;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Lcom/autonavi/base/amap/mapcore/FPoint;

.field private D:I

.field private E:I

.field private F:F

.field private G:F

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:F

.field a:[F

.field b:[F

.field c:Landroid/graphics/Rect;

.field d:F

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:[F

.field private h:Lcom/amap/api/col/l3s/y;

.field private i:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field private k:I

.field private l:I

.field private m:Lcom/amap/api/maps/model/LatLng;

.field private n:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

.field private o:Z

.field private p:Z

.field private q:Landroid/graphics/Bitmap;

.field private r:Lcom/amap/api/col/l3s/dl$b;

.field private s:F

.field private t:Ljava/lang/Object;

.field private u:F

.field private v:F

.field private w:F

.field private x:Z

.field private y:Lcom/amap/api/col/l3s/w;

.field private z:I


# direct methods
.method public constructor <init>(Lcom/amap/api/col/l3s/w;Lcom/amap/api/maps/model/GL3DModelOptions;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 8

    invoke-direct {p0}, Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/cy;->e:Z

    const/16 v1, 0x10

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/amap/api/col/l3s/cy;->g:[F

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/cy;->o:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/cy;->p:Z

    const/high16 v2, 0x41900000    # 18.0f

    iput v2, p0, Lcom/amap/api/col/l3s/cy;->u:F

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/amap/api/col/l3s/cy;->v:F

    const/4 v3, 0x0

    iput v3, p0, Lcom/amap/api/col/l3s/cy;->w:F

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/amap/api/col/l3s/cy;->x:Z

    iput-boolean v3, p0, Lcom/amap/api/col/l3s/cy;->A:Z

    iput-boolean v3, p0, Lcom/amap/api/col/l3s/cy;->B:Z

    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v4

    iput-object v4, p0, Lcom/amap/api/col/l3s/cy;->C:Lcom/autonavi/base/amap/mapcore/FPoint;

    new-array v4, v1, [F

    iput-object v4, p0, Lcom/amap/api/col/l3s/cy;->a:[F

    new-array v4, v1, [F

    iput-object v4, p0, Lcom/amap/api/col/l3s/cy;->b:[F

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/amap/api/col/l3s/cy;->c:Landroid/graphics/Rect;

    iput v3, p0, Lcom/amap/api/col/l3s/cy;->D:I

    iput v3, p0, Lcom/amap/api/col/l3s/cy;->E:I

    const/high16 v4, 0x3f000000    # 0.5f

    iput v4, p0, Lcom/amap/api/col/l3s/cy;->F:F

    iput v4, p0, Lcom/amap/api/col/l3s/cy;->G:F

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/amap/api/col/l3s/cy;->d:F

    iput v2, p0, Lcom/amap/api/col/l3s/cy;->J:F

    if-eqz p2, :cond_5

    if-nez p3, :cond_0

    goto/16 :goto_2

    :cond_0
    iput-object p1, p0, Lcom/amap/api/col/l3s/cy;->y:Lcom/amap/api/col/l3s/w;

    iput-object p3, p0, Lcom/amap/api/col/l3s/cy;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-virtual {p2}, Lcom/amap/api/maps/model/GL3DModelOptions;->getBitmapDescriptor()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/cy;->i:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {p2}, Lcom/amap/api/maps/model/GL3DModelOptions;->getTextrue()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amap/api/maps/model/GL3DModelOptions;->getVertext()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2}, Lcom/amap/api/maps/model/GL3DModelOptions;->getLatLng()Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/col/l3s/cy;->m:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p2}, Lcom/amap/api/maps/model/GL3DModelOptions;->getAngle()F

    move-result v2

    iput v2, p0, Lcom/amap/api/col/l3s/cy;->s:F

    invoke-virtual {p2}, Lcom/amap/api/maps/model/GL3DModelOptions;->getModelFixedLength()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/amap/api/col/l3s/cy;->setModelFixedLength(I)V

    iget-object p2, p0, Lcom/amap/api/col/l3s/cy;->m:Lcom/amap/api/maps/model/LatLng;

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object p2

    iget-object v2, p0, Lcom/amap/api/col/l3s/cy;->m:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v6, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5, v6, v7, p2}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    iget v2, p2, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/amap/api/col/l3s/cy;->k:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    iput p2, p0, Lcom/amap/api/col/l3s/cy;->l:I

    :cond_1
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_4

    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    move p2, v0

    goto :goto_0

    :cond_2
    move p2, v3

    :goto_0
    iget-object v2, p0, Lcom/amap/api/col/l3s/cy;->i:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    and-int/2addr p2, v0

    if-eqz p2, :cond_4

    new-instance p2, Lcom/amap/api/col/l3s/y;

    invoke-direct {p2, p3, p1}, Lcom/amap/api/col/l3s/y;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object p2, p0, Lcom/amap/api/col/l3s/cy;->h:Lcom/amap/api/col/l3s/y;

    iget p1, p0, Lcom/amap/api/col/l3s/cy;->s:F

    invoke-virtual {p2, p1}, Lcom/amap/api/col/l3s/y;->a(F)V

    :cond_4
    new-array p1, v1, [F

    iput-object p1, p0, Lcom/amap/api/col/l3s/cy;->a:[F

    const/4 p1, 0x4

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/amap/api/col/l3s/cy;->b:[F

    :cond_5
    :goto_2
    return-void
.end method

.method private a(Lcom/autonavi/amap/mapcore/animation/GLAnimation;)V
    .locals 4

    instance-of v0, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    iget v0, p0, Lcom/amap/api/col/l3s/cy;->k:I

    int-to-double v0, v0

    iput-wide v0, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mFromXDelta:D

    iget p0, p0, Lcom/amap/api/col/l3s/cy;->l:I

    int-to-double v0, p0

    iput-wide v0, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mFromYDelta:D

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object p0

    iget-wide v0, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToXDelta:D

    iget-wide v2, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToYDelta:D

    invoke-static {v0, v1, v2, v3, p0}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    iget v0, p0, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    iput-wide v0, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToXDelta:D

    iget v0, p0, Landroid/graphics/Point;->y:I

    int-to-double v0, v0

    iput-wide v0, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToYDelta:D

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/cy;->f:Ljava/lang/String;

    return-void
.end method

.method public final a()Z
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/col/l3s/cy;->h:Lcom/amap/api/col/l3s/y;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/amap/api/col/l3s/cy;->r:Lcom/amap/api/col/l3s/dl$b;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/l3s/cy;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLShader(I)Lcom/amap/api/col/l3s/dk;

    move-result-object v2

    check-cast v2, Lcom/amap/api/col/l3s/dl$b;

    iput-object v2, p0, Lcom/amap/api/col/l3s/cy;->r:Lcom/amap/api/col/l3s/dl$b;

    :cond_0
    iget v2, p0, Lcom/amap/api/col/l3s/cy;->v:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/l3s/cy;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget v3, p0, Lcom/amap/api/col/l3s/cy;->u:F

    float-to-int v3, v3

    invoke-interface {v2, v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getUnitLengthByZoom(I)F

    move-result v2

    iput v2, p0, Lcom/amap/api/col/l3s/cy;->v:F

    :cond_1
    iget-boolean v2, p0, Lcom/amap/api/col/l3s/cy;->e:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/col/l3s/cy;->i:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    iput-object v2, p0, Lcom/amap/api/col/l3s/cy;->q:Landroid/graphics/Bitmap;

    :cond_2
    new-array v2, v0, [I

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v3, v2, v1

    const/16 v4, 0xde1

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0x2801

    const/high16 v5, 0x46180000    # 9728.0f

    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v3, 0x2800

    const v5, 0x46180400    # 9729.0f

    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v3, 0x2802

    const v5, 0x47012f00    # 33071.0f

    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v3, 0x2803

    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    iget-object v3, p0, Lcom/amap/api/col/l3s/cy;->q:Landroid/graphics/Bitmap;

    invoke-static {v4, v1, v3, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    aget v2, v2, v1

    iput v2, p0, Lcom/amap/api/col/l3s/cy;->z:I

    iget-object v3, p0, Lcom/amap/api/col/l3s/cy;->h:Lcom/amap/api/col/l3s/y;

    invoke-virtual {v3, v2}, Lcom/amap/api/col/l3s/y;->a(I)V

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/cy;->e:Z

    :cond_3
    iget-boolean v2, p0, Lcom/amap/api/col/l3s/cy;->o:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/amap/api/col/l3s/cy;->n:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/amap/api/col/l3s/cy;->n:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->hasEnded()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/amap/api/col/l3s/cy;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/amap/api/col/l3s/cy;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v2, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    :cond_4
    new-instance v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/animation/GLTransformation;-><init>()V

    iget-object v3, p0, Lcom/amap/api/col/l3s/cy;->n:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v2}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->getTransformation(JLcom/autonavi/amap/mapcore/animation/GLTransformation;)Z

    iget-wide v3, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->x:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_6

    iget-wide v3, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->y:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_6

    iget-wide v3, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->x:D

    iget-wide v5, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->y:D

    double-to-int v2, v3

    iput v2, p0, Lcom/amap/api/col/l3s/cy;->k:I

    double-to-int v2, v5

    iput v2, p0, Lcom/amap/api/col/l3s/cy;->l:I

    goto :goto_0

    :cond_5
    iput-boolean v0, p0, Lcom/amap/api/col/l3s/cy;->o:Z

    :cond_6
    :goto_0
    iget v2, p0, Lcom/amap/api/col/l3s/cy;->k:I

    iget-object v3, p0, Lcom/amap/api/col/l3s/cy;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v3

    double-to-int v3, v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/amap/api/col/l3s/cy;->C:Lcom/autonavi/base/amap/mapcore/FPoint;

    int-to-float v2, v2

    iput v2, v3, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/amap/api/col/l3s/cy;->l:I

    iget-object v4, p0, Lcom/amap/api/col/l3s/cy;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v4}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v4

    double-to-int v4, v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/amap/api/col/l3s/cy;->C:Lcom/autonavi/base/amap/mapcore/FPoint;

    int-to-float v3, v3

    iput v3, v4, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/amap/api/col/l3s/cy;->g:[F

    invoke-static {v4, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v5, p0, Lcom/amap/api/col/l3s/cy;->g:[F

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/amap/api/col/l3s/cy;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v4}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getProjectionMatrix()[F

    move-result-object v7

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/amap/api/col/l3s/cy;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v4}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getViewMatrix()[F

    move-result-object v9

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v4, p0, Lcom/amap/api/col/l3s/cy;->g:[F

    const/4 v5, 0x0

    invoke-static {v4, v1, v2, v3, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-boolean v2, p0, Lcom/amap/api/col/l3s/cy;->x:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/amap/api/col/l3s/cy;->w:F

    iget-object v3, p0, Lcom/amap/api/col/l3s/cy;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v3

    mul-float/2addr v3, v2

    iget-object v2, p0, Lcom/amap/api/col/l3s/cy;->h:Lcom/amap/api/col/l3s/y;

    invoke-virtual {v2}, Lcom/amap/api/col/l3s/y;->a()F

    move-result v2

    div-float/2addr v3, v2

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/amap/api/col/l3s/cy;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v2

    iget-object v3, p0, Lcom/amap/api/col/l3s/cy;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result v3

    iget v4, p0, Lcom/amap/api/col/l3s/cy;->u:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_8

    iput v2, p0, Lcom/amap/api/col/l3s/cy;->J:F

    div-float v3, v2, v2

    goto :goto_1

    :cond_8
    iget v3, p0, Lcom/amap/api/col/l3s/cy;->v:F

    div-float v3, v2, v3

    :goto_1
    iput v3, p0, Lcom/amap/api/col/l3s/cy;->d:F

    iget-object v2, p0, Lcom/amap/api/col/l3s/cy;->g:[F

    invoke-static {v2, v1, v3, v3, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v2, p0, Lcom/amap/api/col/l3s/cy;->h:Lcom/amap/api/col/l3s/y;

    iget-object v3, p0, Lcom/amap/api/col/l3s/cy;->r:Lcom/amap/api/col/l3s/dl$b;

    iget-object v4, p0, Lcom/amap/api/col/l3s/cy;->g:[F

    invoke-virtual {v2, v3, v4}, Lcom/amap/api/col/l3s/y;->a(Lcom/amap/api/col/l3s/dl$b;[F)V

    iget-boolean v2, p0, Lcom/amap/api/col/l3s/cy;->B:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/amap/api/col/l3s/cy;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->redrawInfoWindow()V

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/cy;->B:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    :cond_9
    :goto_2
    return v0
.end method

.method public final checkInBounds()Z
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/cy;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/base/amap/mapcore/Rectangle;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/col/l3s/cy;->k:I

    iget p0, p0, Lcom/amap/api/col/l3s/cy;->l:I

    invoke-virtual {v0, v1, p0}, Lcom/autonavi/base/amap/mapcore/Rectangle;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final destroy()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/cy;->q:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/cy;->y:Lcom/amap/api/col/l3s/w;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/amap/api/col/l3s/cy;->z:I

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/w;->a(I)V

    :cond_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/cy;->h:Lcom/amap/api/col/l3s/y;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/y;->c()V

    :cond_2
    return-void
.end method

.method public final getAnchor()Lcom/autonavi/amap/mapcore/IPoint;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getBitmapDescriptor()Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/cy;->i:Lcom/amap/api/maps/model/BitmapDescriptor;

    return-object p0
.end method

.method public final getGeoPosition()Lcom/autonavi/base/amap/mapcore/FPoint;
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3s/cy;->k:I

    int-to-float v0, v0

    iget p0, p0, Lcom/amap/api/col/l3s/cy;->l:I

    int-to-float p0, p0

    invoke-static {v0, p0}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain(FF)Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object p0

    return-object p0
.end method

.method public final getHeight()I
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/cy;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/cy;->h:Lcom/amap/api/col/l3s/y;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/y;->a()F

    move-result v1

    iget p0, p0, Lcom/amap/api/col/l3s/cy;->d:F

    mul-float/2addr v1, p0

    div-float/2addr v1, v0

    float-to-int p0, v1

    return p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/cy;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final getInfoWindowOffsetX()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getInfoWindowOffsetY()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getObject()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/cy;->t:Ljava/lang/Object;

    return-object p0
.end method

.method public final getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/cy;->m:Lcom/amap/api/maps/model/LatLng;

    return-object p0
.end method

.method public final getRealInfoWindowOffsetX()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/cy;->D:I

    return p0
.end method

.method public final getRealInfoWindowOffsetY()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/cy;->E:I

    return p0
.end method

.method public final getRealPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRect()Landroid/graphics/Rect;
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, v0, Lcom/amap/api/col/l3s/cy;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapProjection()Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/col/l3s/cy;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/col/l3s/cy;->getHeight()I

    move-result v4

    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v5

    iget v6, v0, Lcom/amap/api/col/l3s/cy;->k:I

    iget v7, v0, Lcom/amap/api/col/l3s/cy;->l:I

    invoke-virtual {v2, v6, v7, v5}, Lcom/autonavi/base/ae/gmap/GLMapState;->p20ToScreenPoint(IILcom/autonavi/base/amap/mapcore/FPoint;)V

    iget-object v2, v0, Lcom/amap/api/col/l3s/cy;->a:[F

    invoke-static {v2, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v6, v0, Lcom/amap/api/col/l3s/cy;->a:[F

    const/4 v7, 0x0

    iget v2, v0, Lcom/amap/api/col/l3s/cy;->s:F

    neg-float v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v12, v0, Lcom/amap/api/col/l3s/cy;->a:[F

    const/4 v13, 0x0

    iget-object v2, v0, Lcom/amap/api/col/l3s/cy;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSC()F

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v6, v0, Lcom/amap/api/col/l3s/cy;->a:[F

    const/4 v7, 0x0

    iget-object v2, v0, Lcom/amap/api/col/l3s/cy;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSR()F

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    const/4 v2, 0x4

    new-array v2, v2, [F

    iget-object v6, v0, Lcom/amap/api/col/l3s/cy;->b:[F

    neg-int v7, v3

    int-to-float v12, v7

    iget v7, v0, Lcom/amap/api/col/l3s/cy;->F:F

    mul-float/2addr v7, v12

    aput v7, v6, v1

    iget-object v6, v0, Lcom/amap/api/col/l3s/cy;->b:[F

    int-to-float v13, v4

    iget v7, v0, Lcom/amap/api/col/l3s/cy;->G:F

    mul-float/2addr v7, v13

    const/4 v14, 0x1

    aput v7, v6, v14

    iget-object v6, v0, Lcom/amap/api/col/l3s/cy;->b:[F

    const/4 v15, 0x0

    const/16 v16, 0x2

    aput v15, v6, v16

    iget-object v6, v0, Lcom/amap/api/col/l3s/cy;->b:[F

    const/16 v17, 0x3

    const/high16 v18, 0x3f800000    # 1.0f

    aput v18, v6, v17

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/amap/api/col/l3s/cy;->a:[F

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/amap/api/col/l3s/cy;->b:[F

    const/4 v11, 0x0

    move-object v6, v2

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v6, v0, Lcom/amap/api/col/l3s/cy;->c:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    aget v8, v2, v1

    add-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, v5, Landroid/graphics/PointF;->y:F

    aget v9, v2, v14

    sub-float/2addr v8, v9

    float-to-int v8, v8

    iget v9, v5, Landroid/graphics/PointF;->x:F

    aget v10, v2, v1

    add-float/2addr v9, v10

    float-to-int v9, v9

    iget v10, v5, Landroid/graphics/PointF;->y:F

    aget v11, v2, v14

    sub-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v6, v0, Lcom/amap/api/col/l3s/cy;->b:[F

    int-to-float v3, v3

    iget v7, v0, Lcom/amap/api/col/l3s/cy;->F:F

    sub-float v7, v18, v7

    mul-float/2addr v7, v3

    aput v7, v6, v1

    iget-object v6, v0, Lcom/amap/api/col/l3s/cy;->b:[F

    iget v7, v0, Lcom/amap/api/col/l3s/cy;->G:F

    mul-float/2addr v13, v7

    aput v13, v6, v14

    iget-object v6, v0, Lcom/amap/api/col/l3s/cy;->b:[F

    aput v15, v6, v16

    iget-object v6, v0, Lcom/amap/api/col/l3s/cy;->b:[F

    aput v18, v6, v17

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/amap/api/col/l3s/cy;->a:[F

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/amap/api/col/l3s/cy;->b:[F

    const/4 v11, 0x0

    move-object v6, v2

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v6, v0, Lcom/amap/api/col/l3s/cy;->c:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    aget v8, v2, v1

    add-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, v5, Landroid/graphics/PointF;->y:F

    aget v9, v2, v14

    sub-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->union(II)V

    iget-object v6, v0, Lcom/amap/api/col/l3s/cy;->b:[F

    iget v7, v0, Lcom/amap/api/col/l3s/cy;->F:F

    sub-float v7, v18, v7

    mul-float/2addr v3, v7

    aput v3, v6, v1

    iget-object v3, v0, Lcom/amap/api/col/l3s/cy;->b:[F

    neg-int v4, v4

    int-to-float v4, v4

    iget v6, v0, Lcom/amap/api/col/l3s/cy;->G:F

    sub-float v6, v18, v6

    mul-float/2addr v6, v4

    aput v6, v3, v14

    iget-object v3, v0, Lcom/amap/api/col/l3s/cy;->b:[F

    aput v15, v3, v16

    iget-object v3, v0, Lcom/amap/api/col/l3s/cy;->b:[F

    aput v18, v3, v17

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/amap/api/col/l3s/cy;->a:[F

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/amap/api/col/l3s/cy;->b:[F

    const/4 v11, 0x0

    move-object v6, v2

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v3, v0, Lcom/amap/api/col/l3s/cy;->c:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    aget v7, v2, v1

    add-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, v5, Landroid/graphics/PointF;->y:F

    aget v8, v2, v14

    sub-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Rect;->union(II)V

    iget-object v3, v0, Lcom/amap/api/col/l3s/cy;->b:[F

    iget v6, v0, Lcom/amap/api/col/l3s/cy;->F:F

    mul-float/2addr v12, v6

    aput v12, v3, v1

    iget-object v3, v0, Lcom/amap/api/col/l3s/cy;->b:[F

    iget v6, v0, Lcom/amap/api/col/l3s/cy;->G:F

    sub-float v6, v18, v6

    mul-float/2addr v4, v6

    aput v4, v3, v14

    iget-object v3, v0, Lcom/amap/api/col/l3s/cy;->b:[F

    aput v15, v3, v16

    iget-object v3, v0, Lcom/amap/api/col/l3s/cy;->b:[F

    aput v18, v3, v17

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/amap/api/col/l3s/cy;->a:[F

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/amap/api/col/l3s/cy;->b:[F

    const/4 v11, 0x0

    move-object v6, v2

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v3, v0, Lcom/amap/api/col/l3s/cy;->c:Landroid/graphics/Rect;

    iget v4, v5, Landroid/graphics/PointF;->x:F

    aget v6, v2, v1

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget v6, v5, Landroid/graphics/PointF;->y:F

    aget v2, v2, v14

    sub-float/2addr v6, v2

    float-to-int v2, v6

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Rect;->union(II)V

    iget-object v2, v0, Lcom/amap/api/col/l3s/cy;->c:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget v3, v5, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/amap/api/col/l3s/cy;->D:I

    iget-object v2, v0, Lcom/amap/api/col/l3s/cy;->c:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, v5, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/amap/api/col/l3s/cy;->E:I

    invoke-virtual {v5}, Lcom/autonavi/base/amap/mapcore/FPoint;->recycle()V

    iget-object v0, v0, Lcom/amap/api/col/l3s/cy;->c:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v2, "MarkerDelegateImp"

    const-string v3, "getRect"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final getRotateAngle()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getScreenPosition()Lcom/autonavi/amap/mapcore/IPoint;
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0, p0}, Lcom/autonavi/amap/mapcore/IPoint;->obtain(II)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object p0

    return-object p0
.end method

.method public final getSnippet()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/cy;->H:Ljava/lang/String;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/cy;->I:Ljava/lang/String;

    return-object p0
.end method

.method public final getWidth()I
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/cy;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/cy;->h:Lcom/amap/api/col/l3s/y;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/y;->b()F

    move-result v1

    iget p0, p0, Lcom/amap/api/col/l3s/cy;->d:F

    mul-float/2addr v1, p0

    div-float/2addr v1, v0

    float-to-int p0, v1

    return p0
.end method

.method public final isContains()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/cy;->y:Lcom/amap/api/col/l3s/w;

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3s/w;->a(Lcom/amap/api/col/l3s/cy;)Z

    move-result p0

    return p0
.end method

.method public final isDestory()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isInfoWindowEnable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isViewMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/cy;->p:Z

    return p0
.end method

.method public final remove()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/cy;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/cy;->f:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->removeGLModel(Ljava/lang/String;)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final setAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    iput-object p1, p0, Lcom/amap/api/col/l3s/cy;->n:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    return-void
.end method

.method public final setGeoPoint(Lcom/autonavi/amap/mapcore/IPoint;)V
    .locals 8

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/amap/api/col/l3s/cy;->k:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/amap/api/col/l3s/cy;->l:I

    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p1

    iget v0, p0, Lcom/amap/api/col/l3s/cy;->k:I

    iget v1, p0, Lcom/amap/api/col/l3s/cy;->l:I

    invoke-static {v0, v1, p1}, Lcom/autonavi/base/ae/gmap/GLMapState;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, p1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v5, p1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/cy;->m:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/cy;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setInfoWindowOffset(II)V
    .locals 0

    return-void
.end method

.method public final setInfoWindowShown(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/cy;->A:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/cy;->B:Z

    return-void
.end method

.method public final setModelFixedLength(I)V
    .locals 0

    if-lez p1, :cond_0

    int-to-float p1, p1

    iput p1, p0, Lcom/amap/api/col/l3s/cy;->w:F

    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lcom/amap/api/col/l3s/cy;->x:Z

    return-void

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/amap/api/col/l3s/cy;->w:F

    const/4 p1, 0x0

    goto :goto_0
.end method

.method public final setObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/cy;->t:Ljava/lang/Object;

    return-void
.end method

.method public final setPosition(Lcom/amap/api/maps/model/LatLng;)V
    .locals 5

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/amap/api/col/l3s/cy;->m:Lcom/amap/api/maps/model/LatLng;

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    iget-wide v1, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v3, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v1, v2, v3, v4, v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    iget p1, v0, Landroid/graphics/Point;->x:I

    iput p1, p0, Lcom/amap/api/col/l3s/cy;->k:I

    iget p1, v0, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/amap/api/col/l3s/cy;->l:I

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/cy;->B:Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/cy;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setRotateAngle(F)V
    .locals 2

    iput p1, p0, Lcom/amap/api/col/l3s/cy;->s:F

    iget-object p1, p0, Lcom/amap/api/col/l3s/cy;->h:Lcom/amap/api/col/l3s/y;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amap/api/col/l3s/cy;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSR()F

    move-result p1

    iget-object v0, p0, Lcom/amap/api/col/l3s/cy;->h:Lcom/amap/api/col/l3s/y;

    iget v1, p0, Lcom/amap/api/col/l3s/cy;->s:F

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/y;->a(F)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/cy;->B:Z

    return-void
.end method

.method public final setSnippet(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/cy;->H:Ljava/lang/String;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/cy;->I:Ljava/lang/String;

    return-void
.end method

.method public final setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/cy;->p:Z

    return-void
.end method

.method public final setZoomLimit(F)V
    .locals 1

    iput p1, p0, Lcom/amap/api/col/l3s/cy;->u:F

    iget-object v0, p0, Lcom/amap/api/col/l3s/cy;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    float-to-int p1, p1

    invoke-interface {v0, p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getUnitLengthByZoom(I)F

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/cy;->v:F

    return-void
.end method

.method public final showInfoWindow()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/cy;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0, p0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->showInfoWindow(Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public final startAnimation()Z
    .locals 6

    iget-object v0, p0, Lcom/amap/api/col/l3s/cy;->n:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-direct {p0, v3}, Lcom/amap/api/col/l3s/cy;->a(Lcom/autonavi/amap/mapcore/animation/GLAnimation;)V

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->getDuration()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setDuration(J)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/cy;->a(Lcom/autonavi/amap/mapcore/animation/GLAnimation;)V

    :cond_1
    iput-boolean v1, p0, Lcom/amap/api/col/l3s/cy;->o:Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/cy;->n:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->start()V

    :cond_2
    return v1
.end method
