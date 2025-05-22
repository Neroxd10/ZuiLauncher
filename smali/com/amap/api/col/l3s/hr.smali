.class public Lcom/amap/api/col/l3s/hr;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile c:Lcom/amap/api/col/l3s/hr;


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
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/hr;->a:Ljava/util/concurrent/BlockingQueue;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/hr;->b:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    mul-int/lit8 v3, v2, 0x2

    iget-object v7, p0, Lcom/amap/api/col/l3s/hr;->a:Ljava/util/concurrent/BlockingQueue;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    const-wide/16 v4, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/hr;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a()Lcom/amap/api/col/l3s/hr;
    .locals 2

    sget-object v0, Lcom/amap/api/col/l3s/hr;->c:Lcom/amap/api/col/l3s/hr;

    if-nez v0, :cond_1

    const-class v0, Lcom/amap/api/col/l3s/hr;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/amap/api/col/l3s/hr;->c:Lcom/amap/api/col/l3s/hr;

    if-nez v1, :cond_0

    new-instance v1, Lcom/amap/api/col/l3s/hr;

    invoke-direct {v1}, Lcom/amap/api/col/l3s/hr;-><init>()V

    sput-object v1, Lcom/amap/api/col/l3s/hr;->c:Lcom/amap/api/col/l3s/hr;

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
    sget-object v0, Lcom/amap/api/col/l3s/hr;->c:Lcom/amap/api/col/l3s/hr;

    return-object v0
.end method

.method public static b()V
    .locals 3

    sget-object v0, Lcom/amap/api/col/l3s/hr;->c:Lcom/amap/api/col/l3s/hr;

    if-eqz v0, :cond_1

    const-class v0, Lcom/amap/api/col/l3s/hr;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/amap/api/col/l3s/hr;->c:Lcom/amap/api/col/l3s/hr;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/amap/api/col/l3s/hr;->c:Lcom/amap/api/col/l3s/hr;

    iget-object v1, v1, Lcom/amap/api/col/l3s/hr;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    sget-object v1, Lcom/amap/api/col/l3s/hr;->c:Lcom/amap/api/col/l3s/hr;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/amap/api/col/l3s/hr;->b:Ljava/util/concurrent/ExecutorService;

    sput-object v2, Lcom/amap/api/col/l3s/hr;->c:Lcom/amap/api/col/l3s/hr;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/hr;->b:Ljava/util/concurrent/ExecutorService;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
