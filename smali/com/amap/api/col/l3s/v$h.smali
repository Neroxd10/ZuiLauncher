.class final Lcom/amap/api/col/l3s/v$h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# instance fields
.field a:Ljavax/microedition/khronos/egl/EGL10;

.field b:Ljavax/microedition/khronos/egl/EGLDisplay;

.field c:Ljavax/microedition/khronos/egl/EGLSurface;

.field d:Ljavax/microedition/khronos/egl/EGLConfig;

.field e:Ljavax/microedition/khronos/egl/EGLContext;

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amap/api/col/l3s/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amap/api/col/l3s/v;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/v$h;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/amap/api/col/l3s/v$h;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2}, Lcom/amap/api/col/l3s/v$h;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3s/v$h;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_1

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/v$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/amap/api/col/l3s/v$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v1, v1, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lcom/amap/api/col/l3s/v$h;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/l3s/v;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/amap/api/col/l3s/v;->d(Lcom/amap/api/col/l3s/v;)Lcom/amap/api/col/l3s/v$g;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/v$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/amap/api/col/l3s/v$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/amap/api/col/l3s/v$h;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Lcom/amap/api/col/l3s/v$g;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/v$h;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/amap/api/col/l3s/v$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/v$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/amap/api/col/l3s/v$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2, v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3s/v$h;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/l3s/v;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/amap/api/col/l3s/v$h;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    iput-object v1, p0, Lcom/amap/api/col/l3s/v$h;->e:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/amap/api/col/l3s/v;->b(Lcom/amap/api/col/l3s/v;)Lcom/amap/api/col/l3s/v$e;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/l3s/v$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/amap/api/col/l3s/v$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v4}, Lcom/amap/api/col/l3s/v$e;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/col/l3s/v$h;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-static {v0}, Lcom/amap/api/col/l3s/v;->c(Lcom/amap/api/col/l3s/v;)Lcom/amap/api/col/l3s/v$f;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/col/l3s/v$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/amap/api/col/l3s/v$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/amap/api/col/l3s/v$h;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v2, v3, v4}, Lcom/amap/api/col/l3s/v$f;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/v$h;->e:Ljavax/microedition/khronos/egl/EGLContext;

    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/v$h;->e:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_1

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v2, :cond_2

    :cond_1
    iput-object v1, p0, Lcom/amap/api/col/l3s/v$h;->e:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v0, p0, Lcom/amap/api/col/l3s/v$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const-string v2, "createContext"

    invoke-static {v2, v0}, Lcom/amap/api/col/l3s/v$h;->a(Ljava/lang/String;I)V

    :cond_2
    iput-object v1, p0, Lcom/amap/api/col/l3s/v$h;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    return-void

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "eglInitialize failed"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "eglGetDisplay failed"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()Z
    .locals 5

    iget-object v0, p0, Lcom/amap/api/col/l3s/v$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/col/l3s/v$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/l3s/v$h;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/amap/api/col/l3s/v$h;->f()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/v$h;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/l3s/v;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/amap/api/col/l3s/v;->d(Lcom/amap/api/col/l3s/v;)Lcom/amap/api/col/l3s/v$g;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/l3s/v$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/amap/api/col/l3s/v$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/amap/api/col/l3s/v$h;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/amap/api/col/l3s/v$g;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/amap/api/col/l3s/v$h;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v0, p0, Lcom/amap/api/col/l3s/v$h;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/amap/api/col/l3s/v$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/amap/api/col/l3s/v$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/amap/api/col/l3s/v$h;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v0, v0, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/amap/api/col/l3s/v$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p0

    const-string v0, "EGLHelper"

    const-string v2, "eglMakeCurrent"

    invoke-static {v0, v2, p0}, Lcom/amap/api/col/l3s/v$h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/v$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p0

    const/16 v0, 0x300b

    if-ne p0, v0, :cond_4

    const-string p0, "EglHelper"

    const-string v0, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v1

    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "mEglConfig not initialized"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "eglDisplay not initialized"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "egl not initialized"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method final c()Ljavax/microedition/khronos/opengles/GL;
    .locals 5

    iget-object v0, p0, Lcom/amap/api/col/l3s/v$h;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    iget-object p0, p0, Lcom/amap/api/col/l3s/v$h;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amap/api/col/l3s/v;

    if-eqz p0, :cond_3

    invoke-static {p0}, Lcom/amap/api/col/l3s/v;->e(Lcom/amap/api/col/l3s/v;)Lcom/amap/api/col/l3s/v$k;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/amap/api/col/l3s/v;->e(Lcom/amap/api/col/l3s/v;)Lcom/amap/api/col/l3s/v$k;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/col/l3s/v$k;->a()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    :cond_0
    invoke-static {p0}, Lcom/amap/api/col/l3s/v;->f(Lcom/amap/api/col/l3s/v;)I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/amap/api/col/l3s/v;->f(Lcom/amap/api/col/l3s/v;)I

    move-result v3

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    move v1, v4

    :cond_1
    invoke-static {p0}, Lcom/amap/api/col/l3s/v;->f(Lcom/amap/api/col/l3s/v;)I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    new-instance v2, Lcom/amap/api/col/l3s/v$l;

    invoke-direct {v2}, Lcom/amap/api/col/l3s/v$l;-><init>()V

    :cond_2
    invoke-static {v0, v1, v2}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public final d()V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/v$h;->f()V

    return-void
.end method

.method public final e()V
    .locals 5

    iget-object v0, p0, Lcom/amap/api/col/l3s/v$h;->e:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/v$h;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/l3s/v;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/amap/api/col/l3s/v;->c(Lcom/amap/api/col/l3s/v;)Lcom/amap/api/col/l3s/v$f;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/col/l3s/v$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/amap/api/col/l3s/v$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/amap/api/col/l3s/v$h;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v4}, Lcom/amap/api/col/l3s/v$f;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    :cond_0
    iput-object v1, p0, Lcom/amap/api/col/l3s/v$h;->e:Ljavax/microedition/khronos/egl/EGLContext;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/v$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/amap/api/col/l3s/v$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    iput-object v1, p0, Lcom/amap/api/col/l3s/v$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_2
    return-void
.end method
