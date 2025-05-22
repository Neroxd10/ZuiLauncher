.class public Lcom/amap/api/col/l3s/ew;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile c:Lcom/amap/api/col/l3s/ew;


# instance fields
.field private a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/ew;->a:Ljava/util/concurrent/BlockingQueue;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/ew;->b:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    mul-int/lit8 v3, v2, 0x2

    iget-object v7, p0, Lcom/amap/api/col/l3s/ew;->a:Ljava/util/concurrent/BlockingQueue;

    new-instance v8, Lcom/amap/api/col/l3s/ek;

    const-string v1, "AMapThreadUtil"

    invoke-direct {v8, v1}, Lcom/amap/api/col/l3s/ek;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    const-wide/16 v4, 0xa

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/ew;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a()Lcom/amap/api/col/l3s/ew;
    .locals 2

    sget-object v0, Lcom/amap/api/col/l3s/ew;->c:Lcom/amap/api/col/l3s/ew;

    if-nez v0, :cond_1

    const-class v0, Lcom/amap/api/col/l3s/ew;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/amap/api/col/l3s/ew;->c:Lcom/amap/api/col/l3s/ew;

    if-nez v1, :cond_0

    new-instance v1, Lcom/amap/api/col/l3s/ew;

    invoke-direct {v1}, Lcom/amap/api/col/l3s/ew;-><init>()V

    sput-object v1, Lcom/amap/api/col/l3s/ew;->c:Lcom/amap/api/col/l3s/ew;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/amap/api/col/l3s/ew;->c:Lcom/amap/api/col/l3s/ew;

    return-object v0
.end method

.method public static b()V
    .locals 2

    sget-object v0, Lcom/amap/api/col/l3s/ew;->c:Lcom/amap/api/col/l3s/ew;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/amap/api/col/l3s/ew;->c:Lcom/amap/api/col/l3s/ew;

    iget-object v0, v0, Lcom/amap/api/col/l3s/ew;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    sget-object v0, Lcom/amap/api/col/l3s/ew;->c:Lcom/amap/api/col/l3s/ew;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/amap/api/col/l3s/ew;->b:Ljava/util/concurrent/ExecutorService;

    sput-object v1, Lcom/amap/api/col/l3s/ew;->c:Lcom/amap/api/col/l3s/ew;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ew;->b:Ljava/util/concurrent/ExecutorService;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method
