.class public Lcom/lenovo/leos/cloud/lcp/common/track/TrackThreadPoolExecutor;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static c:Lcom/lenovo/leos/cloud/lcp/common/track/TrackThreadPoolExecutor;


# instance fields
.field private a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final b:Ljava/util/concurrent/RejectedExecutionHandler;


# direct methods
.method private constructor <init>(I)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackThreadPoolExecutor$a;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackThreadPoolExecutor$a;-><init>(Lcom/lenovo/leos/cloud/lcp/common/track/TrackThreadPoolExecutor;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackThreadPoolExecutor;->b:Ljava/util/concurrent/RejectedExecutionHandler;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackThreadPoolExecutor;->b:Ljava/util/concurrent/RejectedExecutionHandler;

    const-wide/16 v4, 0x2

    move-object v1, v0

    move v2, p1

    move v3, p1

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackThreadPoolExecutor;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static getInstance()Lcom/lenovo/leos/cloud/lcp/common/track/TrackThreadPoolExecutor;
    .locals 3

    const-class v0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackThreadPoolExecutor;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/common/track/TrackThreadPoolExecutor;->c:Lcom/lenovo/leos/cloud/lcp/common/track/TrackThreadPoolExecutor;

    if-nez v1, :cond_0

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/track/TrackThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackThreadPoolExecutor;-><init>(I)V

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/common/track/TrackThreadPoolExecutor;->c:Lcom/lenovo/leos/cloud/lcp/common/track/TrackThreadPoolExecutor;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackThreadPoolExecutor;->c:Lcom/lenovo/leos/cloud/lcp/common/track/TrackThreadPoolExecutor;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackThreadPoolExecutor;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
