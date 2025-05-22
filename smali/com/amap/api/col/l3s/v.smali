.class public Lcom/amap/api/col/l3s/v;
.super Landroid/view/TextureView;
.source ""

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/v$j;,
        Lcom/amap/api/col/l3s/v$l;,
        Lcom/amap/api/col/l3s/v$i;,
        Lcom/amap/api/col/l3s/v$h;,
        Lcom/amap/api/col/l3s/v$m;,
        Lcom/amap/api/col/l3s/v$b;,
        Lcom/amap/api/col/l3s/v$a;,
        Lcom/amap/api/col/l3s/v$e;,
        Lcom/amap/api/col/l3s/v$d;,
        Lcom/amap/api/col/l3s/v$g;,
        Lcom/amap/api/col/l3s/v$c;,
        Lcom/amap/api/col/l3s/v$f;,
        Lcom/amap/api/col/l3s/v$k;
    }
.end annotation


# static fields
.field private static final a:Lcom/amap/api/col/l3s/v$j;


# instance fields
.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amap/api/col/l3s/v;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/amap/api/col/l3s/v$i;

.field private d:Landroid/opengl/GLSurfaceView$Renderer;

.field private e:Z

.field private f:Lcom/amap/api/col/l3s/v$e;

.field private g:Lcom/amap/api/col/l3s/v$f;

.field private h:Lcom/amap/api/col/l3s/v$g;

.field private i:Lcom/amap/api/col/l3s/v$k;

.field private j:I

.field private k:I

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amap/api/col/l3s/v$j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3s/v$j;-><init>(B)V

    sput-object v0, Lcom/amap/api/col/l3s/v;->a:Lcom/amap/api/col/l3s/v$j;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/v;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/v;)I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/v;->k:I

    return p0
.end method

.method private a()V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/v;->c:Lcom/amap/api/col/l3s/v$i;

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setRenderer has already been called for this instance."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/v;)Lcom/amap/api/col/l3s/v$e;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/v;->f:Lcom/amap/api/col/l3s/v$e;

    return-object p0
.end method

.method static synthetic c(Lcom/amap/api/col/l3s/v;)Lcom/amap/api/col/l3s/v$f;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/v;->g:Lcom/amap/api/col/l3s/v$f;

    return-object p0
.end method

.method static synthetic d(Lcom/amap/api/col/l3s/v;)Lcom/amap/api/col/l3s/v$g;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/v;->h:Lcom/amap/api/col/l3s/v$g;

    return-object p0
.end method

.method static synthetic d()Lcom/amap/api/col/l3s/v$j;
    .locals 1

    sget-object v0, Lcom/amap/api/col/l3s/v;->a:Lcom/amap/api/col/l3s/v$j;

    return-object v0
.end method

.method static synthetic e(Lcom/amap/api/col/l3s/v;)Lcom/amap/api/col/l3s/v$k;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/v;->i:Lcom/amap/api/col/l3s/v$k;

    return-object p0
.end method

.method static synthetic f(Lcom/amap/api/col/l3s/v;)I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/v;->j:I

    return p0
.end method

.method static synthetic g(Lcom/amap/api/col/l3s/v;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/v;->l:Z

    return p0
.end method

.method static synthetic h(Lcom/amap/api/col/l3s/v;)Landroid/opengl/GLSurfaceView$Renderer;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/v;->d:Landroid/opengl/GLSurfaceView$Renderer;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/amap/api/col/l3s/v$e;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/v;->a()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/v;->f:Lcom/amap/api/col/l3s/v$e;

    return-void
.end method

.method public final a(Lcom/amap/api/col/l3s/v$f;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/v;->a()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/v;->g:Lcom/amap/api/col/l3s/v$f;

    return-void
.end method

.method public b()V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/v;->c:Lcom/amap/api/col/l3s/v$i;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/v$i;->e()V

    return-void
.end method

.method public c()V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/v;->c:Lcom/amap/api/col/l3s/v$i;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/v$i;->f()V

    return-void
.end method

.method protected finalize()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/v;->c:Lcom/amap/api/col/l3s/v$i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/v;->c:Lcom/amap/api/col/l3s/v$i;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/v$i;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getRenderMode()I
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/v;->c:Lcom/amap/api/col/l3s/v$i;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/v$i;->a()I

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/v;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/v;->d:Landroid/opengl/GLSurfaceView$Renderer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/v;->c:Lcom/amap/api/col/l3s/v$i;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/v$i;->a()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v2, Lcom/amap/api/col/l3s/v$i;

    iget-object v3, p0, Lcom/amap/api/col/l3s/v;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Lcom/amap/api/col/l3s/v$i;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v2, p0, Lcom/amap/api/col/l3s/v;->c:Lcom/amap/api/col/l3s/v$i;

    if-eq v0, v1, :cond_1

    invoke-virtual {v2, v0}, Lcom/amap/api/col/l3s/v$i;->a(I)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/v;->c:Lcom/amap/api/col/l3s/v$i;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/v;->e:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/v;->c:Lcom/amap/api/col/l3s/v$i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/v$i;->g()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/v;->e:Z

    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {p0, v0, v1, v2}, Lcom/amap/api/col/l3s/v;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    invoke-super/range {p0 .. p5}, Landroid/view/TextureView;->onLayout(ZIIII)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/v;->c:Lcom/amap/api/col/l3s/v$i;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/v$i;->c()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->getTextureSizeChangedInvoked()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/v;->c:Lcom/amap/api/col/l3s/v$i;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/v$i;->i()I

    move-result v0

    if-ne v0, p2, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/v;->c:Lcom/amap/api/col/l3s/v$i;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/v$i;->j()I

    move-result v0

    if-eq v0, p3, :cond_3

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/amap/api/col/l3s/v;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/amap/api/col/l3s/v;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/v;->c:Lcom/amap/api/col/l3s/v$i;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/v$i;->d()V

    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/v;->c:Lcom/amap/api/col/l3s/v$i;

    invoke-virtual {p0, p2, p3}, Lcom/amap/api/col/l3s/v$i;->a(II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/v;->c:Lcom/amap/api/col/l3s/v$i;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/v$i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestRender()V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/v;->c:Lcom/amap/api/col/l3s/v$i;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/v$i;->b()V

    return-void
.end method

.method public setRenderMode(I)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/v;->c:Lcom/amap/api/col/l3s/v$i;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/v$i;->a(I)V

    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 2

    invoke-direct {p0}, Lcom/amap/api/col/l3s/v;->a()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/v;->f:Lcom/amap/api/col/l3s/v$e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3s/v$m;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/v$m;-><init>(Lcom/amap/api/col/l3s/v;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/v;->f:Lcom/amap/api/col/l3s/v$e;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/v;->g:Lcom/amap/api/col/l3s/v$f;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/col/l3s/v$c;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/l3s/v$c;-><init>(Lcom/amap/api/col/l3s/v;B)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/v;->g:Lcom/amap/api/col/l3s/v$f;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/v;->h:Lcom/amap/api/col/l3s/v$g;

    if-nez v0, :cond_2

    new-instance v0, Lcom/amap/api/col/l3s/v$d;

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3s/v$d;-><init>(B)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/v;->h:Lcom/amap/api/col/l3s/v$g;

    :cond_2
    iput-object p1, p0, Lcom/amap/api/col/l3s/v;->d:Landroid/opengl/GLSurfaceView$Renderer;

    new-instance p1, Lcom/amap/api/col/l3s/v$i;

    iget-object v0, p0, Lcom/amap/api/col/l3s/v;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Lcom/amap/api/col/l3s/v$i;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/v;->c:Lcom/amap/api/col/l3s/v$i;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
