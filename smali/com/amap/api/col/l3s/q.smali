.class public final Lcom/amap/api/col/l3s/q;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/q$a;
    }
.end annotation


# static fields
.field private static c:I = 0x0

.field private static d:I = 0x3

.field private static e:J = 0x7530L

.field private static g:Z = false


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field private f:Lcom/amap/api/col/l3s/q$a;

.field private h:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/q;->a:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/amap/api/col/l3s/q;->f:Lcom/amap/api/col/l3s/q$a;

    new-instance v0, Lcom/amap/api/col/l3s/q$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/l3s/q$1;-><init>(Lcom/amap/api/col/l3s/q;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/q;->h:Landroid/os/Handler;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/q;->a:Ljava/lang/ref/WeakReference;

    :cond_0
    iput-object p2, p0, Lcom/amap/api/col/l3s/q;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-static {}, Lcom/amap/api/col/l3s/q;->f()V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/q;)Lcom/amap/api/col/l3s/q$a;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/q;->f:Lcom/amap/api/col/l3s/q$a;

    return-object p0
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/q;Lcom/amap/api/col/l3s/q$a;)Lcom/amap/api/col/l3s/q$a;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/q;->f:Lcom/amap/api/col/l3s/q$a;

    return-object p1
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Lcom/amap/api/col/l3s/q;->g:Z

    return v0
.end method

.method static synthetic b()I
    .locals 2

    sget v0, Lcom/amap/api/col/l3s/q;->c:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/amap/api/col/l3s/q;->c:I

    return v0
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/q;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/q;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    return-object p0
.end method

.method static synthetic c()I
    .locals 1

    sget v0, Lcom/amap/api/col/l3s/q;->c:I

    return v0
.end method

.method static synthetic c(Lcom/amap/api/col/l3s/q;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/q;->a:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic d()I
    .locals 1

    sget v0, Lcom/amap/api/col/l3s/q;->d:I

    return v0
.end method

.method static synthetic e()Z
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/col/l3s/q;->g:Z

    return v0
.end method

.method private static f()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/amap/api/col/l3s/q;->c:I

    sput-boolean v0, Lcom/amap/api/col/l3s/q;->g:Z

    return-void
.end method


# virtual methods
.method public final interrupt()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/q;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iput-object v0, p0, Lcom/amap/api/col/l3s/q;->a:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/amap/api/col/l3s/q;->h:Landroid/os/Handler;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iput-object v0, p0, Lcom/amap/api/col/l3s/q;->h:Landroid/os/Handler;

    iput-object v0, p0, Lcom/amap/api/col/l3s/q;->f:Lcom/amap/api/col/l3s/q$a;

    invoke-static {}, Lcom/amap/api/col/l3s/q;->f()V

    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public final run()V
    .locals 7

    :try_start_0
    sget-boolean v0, Lcom/amap/api/col/l3s/q;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget v2, Lcom/amap/api/col/l3s/q;->d:I

    if-gt v1, v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/l3s/q;->h:Landroid/os/Handler;

    add-int/lit8 v1, v1, 0x1

    int-to-long v3, v1

    sget-wide v5, Lcom/amap/api/col/l3s/q;->e:J

    mul-long/2addr v3, v5

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "AMapDelegateImpGLSurfaceView"

    const-string v1, "mVerfy"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v0, Lcom/amap/api/col/l3s/fc;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "auth pro exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/amap/api/col/l3s/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
