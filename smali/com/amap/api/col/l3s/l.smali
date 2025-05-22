.class public final Lcom/amap/api/col/l3s/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;


# instance fields
.field protected a:Z

.field private b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amap/api/col/l3s/l;-><init>(Landroid/content/Context;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/amap/api/col/l3s/l;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/amap/api/col/l3s/l;->a:Z

    new-instance p2, Lcom/amap/api/col/l3s/k;

    invoke-direct {p2, p0, p1}, Lcom/amap/api/col/l3s/k;-><init>(Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amap/api/col/l3s/l;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    return-void
.end method


# virtual methods
.method public final a()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/l;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    return-object p0
.end method

.method public final getHeight()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getHolder()Landroid/view/SurfaceHolder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getParent()Landroid/view/ViewParent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRenderMode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getWidth()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/l;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onDetachedGLThread()V
    .locals 0

    return-void
.end method

.method public final post(Ljava/lang/Runnable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final postDelayed(Ljava/lang/Runnable;J)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final queueEvent(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final requestRender()V
    .locals 0

    return-void
.end method

.method public final setBackgroundColor(I)V
    .locals 0

    return-void
.end method

.method public final setEGLConfigChooser(Lcom/amap/api/col/l3s/ed;)V
    .locals 0

    return-void
.end method

.method public final setEGLContextFactory(Lcom/amap/api/col/l3s/ee;)V
    .locals 0

    return-void
.end method

.method public final setRenderMode(I)V
    .locals 0

    return-void
.end method

.method public final setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 0

    return-void
.end method

.method public final setVisibility(I)V
    .locals 0

    return-void
.end method

.method public final setZOrderOnTop(Z)V
    .locals 0

    return-void
.end method
