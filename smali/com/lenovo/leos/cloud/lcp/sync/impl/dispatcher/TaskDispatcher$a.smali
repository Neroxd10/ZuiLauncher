.class Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->b(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

.field final synthetic b:Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher$a;->b:Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    invoke-interface {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher$a;->b:Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher$a;->b:Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->a(Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;)Ljava/util/Map;

    move-result-object v1

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    invoke-interface {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;->getTaskId()Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;->getInstance()Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;->decreaseBackgroundTask()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher$a;->b:Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;

    monitor-enter v1

    :try_start_2
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher$a;->b:Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->a(Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;)Ljava/util/Map;

    move-result-object v2

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    invoke-interface {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;->getTaskId()Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;->getInstance()Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;->decreaseBackgroundTask()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method
