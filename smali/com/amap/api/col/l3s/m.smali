.class public final Lcom/amap/api/col/l3s/m;
.super Landroid/opengl/GLSurfaceView;
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

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/amap/api/col/l3s/m;-><init>(Landroid/content/Context;ZB)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZB)V
    .locals 0

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lcom/amap/api/col/l3s/m;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iput-object p3, p0, Lcom/amap/api/col/l3s/m;->c:Lcom/autonavi/base/ae/gmap/GLMapRender;

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/amap/api/col/l3s/m;->a:Z

    invoke-static {p0}, Lcom/amap/api/col/l3s/ef;->a(Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;)V

    new-instance p3, Lcom/amap/api/col/l3s/k;

    invoke-direct {p3, p0, p1, p2}, Lcom/amap/api/col/l3s/k;-><init>(Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;Landroid/content/Context;Z)V

    iput-object p3, p0, Lcom/amap/api/col/l3s/m;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/m;)Lcom/autonavi/base/ae/gmap/GLMapRender;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/m;->c:Lcom/autonavi/base/ae/gmap/GLMapRender;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/m;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    return-object p0
.end method

.method protected final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onAttachedToWindow()V

    sget-object v0, Lcom/amap/api/col/l3s/fc;->c:Ljava/lang/String;

    const-string v1, "AMapGLSurfaceView onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/fd;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/m;->c:Lcom/autonavi/base/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/m;->c:Lcom/autonavi/base/ae/gmap/GLMapRender;

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapRender;->onAttachedToWindow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/m;->onResume()V

    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 3

    sget-object v0, Lcom/amap/api/col/l3s/fc;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AMapGLSurfaceView onDetachedFromWindow MapsInitializer.isSupportRecycleView() "

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

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/m;->onPause()V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/m;->c:Lcom/autonavi/base/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/m;->c:Lcom/autonavi/base/ae/gmap/GLMapRender;

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapRender;->onDetachedFromWindow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    :cond_1
    return-void
.end method

.method public final onDetachedGLThread()V
    .locals 3

    sget-object v0, Lcom/amap/api/col/l3s/fc;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AMapGLSurfaceView onDetachedGLThread MapsInitializer.isSupportRecycleView() "

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

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/m;->onPause()V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/m;->c:Lcom/autonavi/base/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/m;->c:Lcom/autonavi/base/ae/gmap/GLMapRender;

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapRender;->onDetachedFromWindow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    :cond_1
    return-void
.end method

.method public final onPause()V
    .locals 4

    sget-object v0, Lcom/amap/api/col/l3s/fc;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AMapGLSurfaceView onPause mMapRender.mSurfacedestoryed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/col/l3s/m;->c:Lcom/autonavi/base/ae/gmap/GLMapRender;

    iget-boolean v2, v2, Lcom/autonavi/base/ae/gmap/GLMapRender;->mSurfacedestoryed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/fd;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/m;->c:Lcom/autonavi/base/ae/gmap/GLMapRender;

    iget-boolean v0, v0, Lcom/autonavi/base/ae/gmap/GLMapRender;->mSurfacedestoryed:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3s/m$1;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/m$1;-><init>(Lcom/amap/api/col/l3s/m;)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/m;->c:Lcom/autonavi/base/ae/gmap/GLMapRender;

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
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    sget-object p0, Lcom/amap/api/col/l3s/fc;->c:Ljava/lang/String;

    const-string v0, "AMapGLSurfaceView onPause"

    invoke-static {p0, v0}, Lcom/amap/api/col/l3s/fd;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/m;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

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

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onWindowVisibilityChanged(I)V

    sget-object v0, Lcom/amap/api/col/l3s/fc;->c:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AMapGLSurfaceView onWindowVisibilityChanged visibility "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/fd;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    :try_start_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/m;->c:Lcom/autonavi/base/ae/gmap/GLMapRender;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/amap/api/col/l3s/m;->c:Lcom/autonavi/base/ae/gmap/GLMapRender;

    invoke-virtual {p0}, Lcom/autonavi/base/ae/gmap/GLMapRender;->renderResume()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/m;->c:Lcom/autonavi/base/ae/gmap/GLMapRender;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amap/api/col/l3s/m;->c:Lcom/autonavi/base/ae/gmap/GLMapRender;

    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/GLMapRender;->renderPause()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/m;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setEGLConfigChooser(Lcom/amap/api/col/l3s/ed;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    return-void
.end method

.method public final setEGLContextFactory(Lcom/amap/api/col/l3s/ee;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    return-void
.end method

.method public final setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/autonavi/base/ae/gmap/GLMapRender;

    iput-object v0, p0, Lcom/amap/api/col/l3s/m;->c:Lcom/autonavi/base/ae/gmap/GLMapRender;

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    return-void
.end method
