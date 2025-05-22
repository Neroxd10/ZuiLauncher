.class public Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;
.super Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;
.source ""


# direct methods
.method public constructor <init>(ILcom/autonavi/base/amap/api/mapcore/IAMapDelegate;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;-><init>(ILcom/autonavi/base/amap/api/mapcore/IAMapDelegate;I)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object p3

    if-eqz p3, :cond_0

    new-instance p3, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector$1;

    invoke-direct {p3, p0, p2, p1}, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector$1;-><init>(Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;I)V

    invoke-interface {p2, p3}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(J[I[B)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;->nativeAddVectorData(J[I[B)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(JLjava/lang/Object;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;->nativeInitTextureCallback(JLjava/lang/Object;Z)V

    return-void
.end method

.method private static native nativeAddVectorCar(JIII)V
.end method

.method private static native nativeAddVectorData(J[I[B)I
.end method

.method private static native nativeInitTextureCallback(JLjava/lang/Object;Z)V
.end method

.method private static native nativeSetArrowResId(JZI)V
.end method

.method private static native nativeSetBackgroundResId(JI)V
.end method

.method private static native nativeSetCarResId(JI)V
.end method


# virtual methods
.method public addVectorItem(Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;[BI)I
    .locals 4

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/16 p3, 0xa

    new-array p3, p3, [I

    iget-object v0, p1, Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;->stAreaRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    aput v1, p3, v2

    const/4 v1, 0x1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    aput v3, p3, v1

    const/4 v1, 0x2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    aput v3, p3, v1

    const/4 v1, 0x3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    aput v0, p3, v1

    const/4 v0, 0x4

    iget v1, p1, Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;->stAreaColor:I

    aput v1, p3, v0

    const/4 v0, 0x5

    iget v1, p1, Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;->fArrowBorderWidth:I

    aput v1, p3, v0

    const/4 v0, 0x6

    iget v1, p1, Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;->stArrowBorderColor:I

    aput v1, p3, v0

    const/4 v0, 0x7

    iget v1, p1, Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;->fArrowLineWidth:I

    aput v1, p3, v0

    const/16 v0, 0x8

    iget v1, p1, Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;->stArrowLineColor:I

    aput v1, p3, v0

    const/16 v0, 0x9

    iget-boolean p1, p1, Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;->dayMode:Z

    aput p1, p3, v0

    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mGLMapView:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector$2;

    invoke-direct {v0, p0, p3, p2}, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector$2;-><init>(Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;[I[B)V

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->queueEvent(Ljava/lang/Runnable;)V

    :cond_1
    return v2

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public initTextureCallback(Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;Z)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mGLMapView:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector$3;-><init>(Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;Z)V

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setArrowResId(ZI)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    invoke-static {v0, v1, p1, p2}, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;->nativeSetArrowResId(JZI)V

    return-void
.end method

.method public setBackgroundResId(I)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;->nativeSetBackgroundResId(JI)V

    return-void
.end method

.method public setCarResId(I)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;->nativeSetCarResId(JI)V

    return-void
.end method
