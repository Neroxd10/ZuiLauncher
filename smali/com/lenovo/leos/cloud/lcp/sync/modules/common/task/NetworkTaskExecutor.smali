.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor$ExecuteListener;,
        Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor$Executer;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "NetworkTaskExecutor"


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private b:Z

.field private c:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor$ExecuteListener;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor$ExecuteListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;->b:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;->d:Z

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor$ExecuteListener;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;->b:Z

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->notifyTask()V

    return-void
.end method

.method public execute(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor$Executer;)Ljava/lang/Object;
    .locals 2

    :goto_0
    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;->b:Z

    if-nez v0, :cond_1

    :try_start_0
    invoke-interface {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor$Executer;->execute()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/resultCode/ResultCodeUtil;->parseResultCode(Ljava/lang/Exception;)I

    move-result v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/resultCode/ResultCodeUtil;->isResultNetErr(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;->waitNetworkConnected()V

    goto :goto_0

    :cond_0
    throw v0

    :cond_1
    new-instance p0, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw p0
.end method

.method public init(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;->d:Z

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->startListen(Ljava/util/Observer;)V

    return-void
.end method

.method public release()V
    .locals 1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->stopListen(Ljava/util/Observer;)V

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    iget-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;->d:Z

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/UploadRuleUtil;->isConnection(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;->a:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor$a;

    invoke-direct {p2, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor$a;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor$ExecuteListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor$ExecuteListener;->onDisconnected()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected waitNetworkConnected()V
    .locals 1

    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor$ExecuteListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor$ExecuteListener;->onWait()V

    :cond_1
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->waitTask()V

    return-void
.end method
