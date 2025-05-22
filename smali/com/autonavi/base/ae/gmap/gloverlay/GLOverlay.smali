.class public abstract Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;
    }
.end annotation


# instance fields
.field protected isNightStyle:Z

.field protected mCode:I

.field protected mEngineID:I

.field protected mGLMapView:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field mIsInBundle:Z

.field protected mItemPriority:I

.field protected mNativeInstance:J


# direct methods
.method public constructor <init>(ILcom/autonavi/base/amap/api/mapcore/IAMapDelegate;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->isNightStyle:Z

    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mIsInBundle:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    iput v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mItemPriority:I

    iput p1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mEngineID:I

    iput-object p2, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mGLMapView:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iput p3, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mCode:I

    iput-wide v1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    iput v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mItemPriority:I

    return-void
.end method

.method private static native nativeGetCount(J)I
.end method

.method private static native nativeGetOverlayPriority(J)I
.end method

.method private static native nativeGetSubType(J)I
.end method

.method private static native nativeGetType(J)I
.end method

.method private static native nativeIsClickable(J)Z
.end method

.method private static native nativeIsVisible(J)Z
.end method

.method private static native nativeRemoveAll(J)V
.end method

.method private static native nativeRemoveItem(JI)V
.end method

.method private static native nativeSetClickable(JZ)V
.end method

.method private static native nativeSetMaxDisplayLevel(JF)V
.end method

.method private static native nativeSetMinDisplayLevel(JF)V
.end method

.method private static native nativeSetOverlayItemPriority(JI)V
.end method

.method private static native nativeSetOverlayOnTop(JZ)V
.end method

.method private static native nativeSetOverlayPriority(JI)V
.end method

.method private static native nativeSetShownMaxCount(JI)V
.end method

.method protected static native nativeSetVisible(JZ)V
.end method


# virtual methods
.method public clearFocus()V
    .locals 0

    return-void
.end method

.method public getCode()I
    .locals 0

    iget p0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mCode:I

    return p0
.end method

.method public getIsInBundle()Z
    .locals 0

    iget-boolean p0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mIsInBundle:Z

    return p0
.end method

.method public getNativeInstatnce()J
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    return-wide v0
.end method

.method public getOverlayPriority()I
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    invoke-static {v0, v1}, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->nativeGetOverlayPriority(J)I

    move-result p0

    return p0
.end method

.method public getSize()I
    .locals 4

    iget-wide v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {v0, v1}, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->nativeGetCount(J)I

    move-result p0

    return p0
.end method

.method public getSubType()I
    .locals 4

    iget-wide v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {v0, v1}, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->nativeGetSubType(J)I

    move-result p0

    return p0
.end method

.method public getType()I
    .locals 4

    iget-wide v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {v0, v1}, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->nativeGetType(J)I

    move-result p0

    return p0
.end method

.method public isClickable()Z
    .locals 4

    iget-wide v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {v0, v1}, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->nativeIsClickable(J)Z

    move-result p0

    return p0
.end method

.method public isVisible()Z
    .locals 4

    iget-wide v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {v0, v1}, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->nativeIsVisible(J)Z

    move-result p0

    return p0
.end method

.method releaseInstance()V
    .locals 4

    iget-wide v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iput-wide v2, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    :cond_0
    return-void
.end method

.method public removeAll()V
    .locals 4

    iget-wide v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1}, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->nativeRemoveAll(J)V

    return-void
.end method

.method public removeItem(I)V
    .locals 4

    iget-wide v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->nativeRemoveItem(JI)V

    return-void
.end method

.method public setClickable(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->nativeSetClickable(JZ)V

    return-void
.end method

.method public setMaxCountShown(I)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->nativeSetShownMaxCount(JI)V

    return-void
.end method

.method public setMaxDisplayLevel(F)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->nativeSetMaxDisplayLevel(JF)V

    return-void
.end method

.method public setMinDisplayLevel(F)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->nativeSetMinDisplayLevel(JF)V

    return-void
.end method

.method public setOverlayItemPriority(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mItemPriority:I

    return-void
.end method

.method public setOverlayOnTop(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->nativeSetOverlayOnTop(JZ)V

    return-void
.end method

.method public setOverlayPriority(I)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->nativeSetOverlayPriority(JI)V

    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mGLMapView:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mGLMapView:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object p1

    iget p0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mEngineID:I

    invoke-virtual {p1, p0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getOverlayBundle(I)Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlayBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlayBundle;->sortOverlay()V

    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->nativeSetVisible(JZ)V

    return-void
.end method

.method public useNightStyle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->isNightStyle:Z

    return-void
.end method
