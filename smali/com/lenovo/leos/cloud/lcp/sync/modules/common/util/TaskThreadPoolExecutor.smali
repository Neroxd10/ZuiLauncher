.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskThreadPoolExecutor;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final b:Ljava/util/concurrent/RejectedExecutionHandler;


# direct methods
.method public constructor <init>(I)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskThreadPoolExecutor$a;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskThreadPoolExecutor$a;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskThreadPoolExecutor;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskThreadPoolExecutor;->b:Ljava/util/concurrent/RejectedExecutionHandler;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskThreadPoolExecutor;->b:Ljava/util/concurrent/RejectedExecutionHandler;

    const-wide/16 v4, 0x1

    move-object v1, v0

    move v2, p1

    move v3, p1

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskThreadPoolExecutor;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskThreadPoolExecutor;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public waitFinish()V
    .locals 6

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskThreadPoolExecutor;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskThreadPoolExecutor;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x2

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v1, v0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method
