.class public final Lcom/amap/api/col/l3s/n;
.super Lcom/amap/api/col/l3s/v;
.source ""

# interfaces
.implements Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;


# instance fields
.field protected a:Z

.field private b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field private c:Lcom/autonavi/base/ae/gmap/GLMapRender;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/v;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/n;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iput-object v0, p0, Lcom/amap/api/col/l3s/n;->c:Lcom/autonavi/base/ae/gmap/GLMapRender;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/n;->a:Z

    invoke-static {p0}, Lcom/amap/api/col/l3s/ef;->a(Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;)V

    new-instance v0, Lcom/amap/api/col/l3s/k;

    invoke-direct {v0, p0, p1, p2}, Lcom/amap/api/col/l3s/k;-><init>(Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/n;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/n;)Lcom/autonavi/base/ae/gmap/GLMapRender;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/n;->c:Lcom/autonavi/base/ae/gmap/GLMapRender;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/n;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    return-object p0
.end method

.method public final b()V
    .locals 4

    sget-object v0, Lcom/amap/api/col/l3s/fc;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AMapGLTextureView onPause mMapRender.mSurfacedestoryed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/col/l3s/n;->c:Lcom/autonavi/base/ae/gmap/GLMapRender;

    iget-boolean v2, v2, Lcom/autonavi/base/ae/gmap/GLMapRender;->mSurfacedestoryed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/fd;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/n;->c:Lcom/autonavi/base/ae/gmap/GLMapRender;

    iget-boolean v0, v0, Lcom/autonavi/base/ae/gmap/GLMapRender;->mSurfacedestoryed:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3s/n$1;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/n$1;-><init>(Lcom/amap/api/col/l3s/n;)V

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/v;->queueEvent(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/n;->c:Lcom/autonavi/base/ae/gmap/GLMapRender;

    iget-boolean v1, v1, Lcom/autonavi/base/ae/gmap/GLMapRender;->mSurfacedestoryed:Z

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x32

    if-ge v0, v2, :cond_0

    const-wide/16 v2, 0x14

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move v0, v1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/amap/api/col/l3s/v;->b()V

    return-void
.end method

.method public final c()V
    .locals 1

    invoke-super {p0}, Lcom/amap/api/col/l3s/v;->c()V

    sget-object p0, Lcom/amap/api/col/l3s/fc;->c:Ljava/lang/String;

    const-string v0, "AMapGLTextureView onResume"

    invoke-static {p0, v0}, Lcom/amap/api/col/l3s/fd;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final getHolder()Landroid/view/SurfaceHolder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/amap/api/col/l3s/v;->onAttachedToWindow()V

    sget-object v0, Lcom/amap/api/col/l3s/fc;->c:Ljava/lang/String;

    const-string v1, "AMapGLTextureView onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/fd;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/n;->c:Lcom/autonavi/base/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/n;->c:Lcom/autonavi/base/ae/gmap/GLMapRender;

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapRender;->onAttachedToWindow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/n;->c()V

    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 3

    sget-object v0, Lcom/amap/api/col/l3s/fc;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AMapGLTextureView onDetachedFromWindow MapsInitializer.isSupportRecycleView() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->isSupportRecycleView()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/fd;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->isSupportRecycleView()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/n;->b()V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/n;->c:Lcom/autonavi/base/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/n;->c:Lcom/autonavi/base/ae/gmap/GLMapRender;

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapRender;->onDetachedFromWindow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/amap/api/col/l3s/v;->onDetachedFromWindow()V

    :cond_1
    return-void
.end method

.method public final onDetachedGLThread()V
    .locals 3

    sget-object v0, Lcom/amap/api/col/l3s/fc;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AMapGLTextureView onDetachedGLThread MapsInitializer.isSupportRecycleView() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->isSupportRecycleView()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/fd;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->isSupportRecycleView()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/n;->b()V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/n;->c:Lcom/autonavi/base/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/n;->c:Lcom/autonavi/base/ae/gmap/GLMapRender;

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapRender;->onDetachedFromWindow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/amap/api/col/l3s/v;->onDetachedFromWindow()V

    :cond_1
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    sget-object v0, Lcom/amap/api/col/l3s/fc;->c:Ljava/lang/String;

    const-string v1, "AMapGLTextureView onSurfaceTextureDestroyed"

    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/fd;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/v;->requestRender()V

    :try_start_0
    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->getTextureDestroyRender()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/amap/api/col/l3s/v;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    move-result p0

    return p0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/TextureView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/n;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method protected final onWindowVisibilityChanged(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowVisibilityChanged(I)V

    sget-object v0, Lcom/amap/api/col/l3s/fc;->c:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AMapGLTextureView onWindowVisibilityChanged visibility "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/fd;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/n;->c:Lcom/autonavi/base/ae/gmap/GLMapRender;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/amap/api/col/l3s/n;->c:Lcom/autonavi/base/ae/gmap/GLMapRender;

    invoke-virtual {p0}, Lcom/autonavi/base/ae/gmap/GLMapRender;->renderResume()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/n;->c:Lcom/autonavi/base/ae/gmap/GLMapRender;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amap/api/col/l3s/n;->c:Lcom/autonavi/base/ae/gmap/GLMapRender;

    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/GLMapRender;->renderPause()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/n;->a:Z

    :cond_3
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/v;->requestRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setEGLConfigChooser(Lcom/amap/api/col/l3s/ed;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/amap/api/col/l3s/v;->a(Lcom/amap/api/col/l3s/v$e;)V

    return-void
.end method

.method public final setEGLContextFactory(Lcom/amap/api/col/l3s/ee;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/amap/api/col/l3s/v;->a(Lcom/amap/api/col/l3s/v$f;)V

    return-void
.end method

.method public final setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/autonavi/base/ae/gmap/GLMapRender;

    iput-object v0, p0, Lcom/amap/api/col/l3s/n;->c:Lcom/autonavi/base/ae/gmap/GLMapRender;

    invoke-super {p0, p1}, Lcom/amap/api/col/l3s/v;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    return-void
.end method

.method public final setZOrderOnTop(Z)V
    .locals 0

    return-void
.end method
