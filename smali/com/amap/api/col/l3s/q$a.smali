.class final Lcom/amap/api/col/l3s/q$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/amap/api/col/l3s/r;


# direct methods
.method public constructor <init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/q$a;->a:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/amap/api/col/l3s/q$a;->b:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/q$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_0

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/q$a;->b:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/q$a;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/q$a;->b:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/q$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/q$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/amap/api/col/l3s/q$a$1;

    invoke-direct {v1, p0, v0}, Lcom/amap/api/col/l3s/q$a$1;-><init>(Lcom/amap/api/col/l3s/q$a;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3s/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/q$a;->c:Lcom/amap/api/col/l3s/r;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/q$a;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/q$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/amap/api/col/l3s/r;

    iget-object v1, p0, Lcom/amap/api/col/l3s/q$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/l3s/r;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/q$a;->c:Lcom/amap/api/col/l3s/r;

    :cond_1
    invoke-static {}, Lcom/amap/api/col/l3s/q;->b()I

    invoke-static {}, Lcom/amap/api/col/l3s/q;->c()I

    move-result v0

    invoke-static {}, Lcom/amap/api/col/l3s/q;->d()I

    move-result v1

    if-le v0, v1, :cond_2

    invoke-static {}, Lcom/amap/api/col/l3s/q;->e()Z

    invoke-direct {p0}, Lcom/amap/api/col/l3s/q$a;->a()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/q$a;->c:Lcom/amap/api/col/l3s/r;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3s/q$a;->c:Lcom/amap/api/col/l3s/r;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/im;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/l3s/r$a;

    if-eqz v0, :cond_4

    iget-boolean v0, v0, Lcom/amap/api/col/l3s/r$a;->d:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/amap/api/col/l3s/q$a;->a()V

    :cond_3
    invoke-static {}, Lcom/amap/api/col/l3s/q;->e()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "authForPro"

    const-string v1, "loadConfigData_uploadException"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/amap/api/col/l3s/fc;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "auth exception get data "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/amap/api/col/l3s/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
