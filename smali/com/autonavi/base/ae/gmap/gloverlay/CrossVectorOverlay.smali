.class public Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;
.super Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;
.source ""

# interfaces
.implements Lcom/autonavi/amap/mapcore/interfaces/ICrossVectorOverlay;


# annotations
.annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBindingInclude;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay<",
        "Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/autonavi/amap/mapcore/interfaces/ICrossVectorOverlay;"
    }
.end annotation


# instance fields
.field attr:Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;

.field private imageListener:Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;

.field private isImageMode:Z

.field private updateListener:Lcom/amap/api/maps/model/CrossOverlay$OnCrossVectorUpdateListener;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/autonavi/amap/mapcore/interfaces/IAMap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;-><init>(ILandroid/content/Context;Lcom/autonavi/amap/mapcore/interfaces/IAMap;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->isImageMode:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->isImageMode:Z

    return p0
.end method

.method static synthetic access$100(Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->initImageMode(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->drawVectorFailed(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;)Lcom/amap/api/maps/model/CrossOverlay$OnCrossVectorUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->updateListener:Lcom/amap/api/maps/model/CrossOverlay$OnCrossVectorUpdateListener;

    return-object p0
.end method

.method private drawVectorFailed(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->isImageMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->imageListener:Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;->onGenerateComplete(Landroid/graphics/Bitmap;I)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->updateListener:Lcom/amap/api/maps/model/CrossOverlay$OnCrossVectorUpdateListener;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/amap/api/maps/model/CrossOverlay$UpdateItem;

    invoke-direct {v0}, Lcom/amap/api/maps/model/CrossOverlay$UpdateItem;-><init>()V

    iput p1, v0, Lcom/amap/api/maps/model/CrossOverlay$UpdateItem;->dataUpdateFlag:I

    iget-object p0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->updateListener:Lcom/amap/api/maps/model/CrossOverlay$OnCrossVectorUpdateListener;

    const/4 p1, 0x0

    invoke-interface {p0, p1, v0}, Lcom/amap/api/maps/model/CrossOverlay$OnCrossVectorUpdateListener;->onUpdate(ILcom/amap/api/maps/model/CrossOverlay$UpdateItem;)V

    :cond_1
    return-void
.end method

.method private initImageMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mGLOverlay:Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;

    invoke-virtual {v0, p0, p1}, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;->initTextureCallback(Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public addOverlayTexture(Landroid/graphics/Bitmap;II)V
    .locals 1

    new-instance v0, Lcom/autonavi/base/ae/gmap/gloverlay/GLTextureProperty;

    invoke-direct {v0}, Lcom/autonavi/base/ae/gmap/gloverlay/GLTextureProperty;-><init>()V

    iput p2, v0, Lcom/autonavi/base/ae/gmap/gloverlay/GLTextureProperty;->mId:I

    iput p3, v0, Lcom/autonavi/base/ae/gmap/gloverlay/GLTextureProperty;->mAnchor:I

    iput-object p1, v0, Lcom/autonavi/base/ae/gmap/gloverlay/GLTextureProperty;->mBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    iput p1, v0, Lcom/autonavi/base/ae/gmap/gloverlay/GLTextureProperty;->mXRatio:F

    iput p1, v0, Lcom/autonavi/base/ae/gmap/gloverlay/GLTextureProperty;->mYRatio:F

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/autonavi/base/ae/gmap/gloverlay/GLTextureProperty;->isGenMimps:Z

    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mMapView:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget p0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mEngineID:I

    invoke-interface {p1, p0, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->addOverlayTexture(ILcom/autonavi/base/ae/gmap/gloverlay/GLTextureProperty;)V

    return-void
.end method

.method public dipToPixel(Landroid/content/Context;I)I
    .locals 1

    if-nez p1, :cond_0

    return p2

    :cond_0
    const/4 p0, 0x1

    int-to-float v0, p2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {p0, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    float-to-int p0, p0

    return p0

    :catch_0
    return p2
.end method

.method public imageContentResult([III)V
    .locals 2
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBindingInclude;
    .end annotation

    const/4 v0, -0x1

    if-nez p1, :cond_0

    invoke-direct {p0, v0}, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->drawVectorFailed(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->imageListener:Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;

    if-eqz v1, :cond_2

    invoke-static {p1, p2, p3}, Lcom/amap/api/col/l3s/ex;->a([III)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->imageListener:Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-interface {p0, p1, v0}, Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;->onGenerateComplete(Landroid/graphics/Bitmap;I)V

    :cond_2
    return-void
.end method

.method protected iniGLOverlay()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mMapView:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$1;

    invoke-direct {v1, p0}, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$1;-><init>(Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;)V

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public remove()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->imageListener:Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->setVisible(Z)V

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mMapView:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$5;

    invoke-direct {v1, p0}, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$5;-><init>(Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;)V

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public resumeMarker(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mMapView:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$2;

    invoke-direct {v1, p0, p1}, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$2;-><init>(Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;Landroid/graphics/Bitmap;)V

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setAttribute(Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;

    return-void
.end method

.method public setData([B)I
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, -0x1

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    invoke-direct {p0, v1}, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->drawVectorFailed(I)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;

    if-nez v0, :cond_1

    new-instance v0, Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;

    invoke-direct {v0}, Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;-><init>()V

    iput-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mMapView:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v3}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapWidth()I

    move-result v3

    iget-object v4, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mMapView:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v4}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0xb

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, v0, Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;->stAreaRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;

    const/16 v2, 0xd9

    const/16 v3, 0x5f

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iput v2, v0, Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;->stAreaColor:I

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;

    iget-object v2, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mContext:Landroid/content/Context;

    const/16 v3, 0x16

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->dipToPixel(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;->fArrowBorderWidth:I

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;

    const/16 v2, 0x32

    const/16 v3, 0x14

    invoke-static {v5, v5, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iput v2, v0, Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;->stArrowBorderColor:I

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;

    iget-object v2, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mContext:Landroid/content/Context;

    const/16 v3, 0x12

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->dipToPixel(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;->fArrowLineWidth:I

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;

    const/16 v2, 0xfd

    const/16 v3, 0x41

    const/16 v4, 0xff

    invoke-static {v4, v4, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iput v2, v0, Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;->stArrowLineColor:I

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;

    iput-boolean v5, v0, Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;->dayMode:Z

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mMapView:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_2

    new-instance v2, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$4;

    invoke-direct {v2, p0, p1}, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$4;-><init>(Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;[B)V

    invoke-interface {v0, v2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->queueEvent(Ljava/lang/Runnable;)V

    :cond_2
    return v1
.end method

.method public setGenerateCrossImageListener(Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->imageListener:Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;

    return-void
.end method

.method public setImageMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->isImageMode:Z

    return-void
.end method

.method public setOnCrossVectorUpdateListener(Lcom/amap/api/maps/model/CrossOverlay$OnCrossVectorUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->updateListener:Lcom/amap/api/maps/model/CrossOverlay$OnCrossVectorUpdateListener;

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mMapView:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$3;

    invoke-direct {v1, p0, p1}, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$3;-><init>(Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;Z)V

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
