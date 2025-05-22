.class public abstract Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TASK_TYPE_BACKUP:I = 0x0

.field public static final TASK_TYPE_RESTORE:I = 0x1

.field public static final TASK_TYPE_STANDBY:I = -0x1

.field public static final TASK_TYPE_SYNC:I = 0x2


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->a:Ljava/util/Map;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->a:Ljava/util/Map;

    return-object p0
.end method

.method private b(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V
    .locals 1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;->getInstance()Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;->increaseBackgroundTask()V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher$a;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher$a;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/ConcurrentExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized cancelTask()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->a:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    invoke-interface {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancelTask(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->a:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized dispatch(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->dispatchBefore(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->dispatchTask(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->dispatchAfter(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V

    invoke-interface {v0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;->setProgressListener(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V

    invoke-interface {v0, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;->setProblemResolver(Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;)V

    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->a:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->b(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected dispatchAfter(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/exception/UnSupportedTaskTypeException;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/exception/UnSupportedTaskTypeException;-><init>()V

    throw p0
.end method

.method protected dispatchBefore(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V
    .locals 2

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    invoke-interface {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;->getValue()I

    move-result v0

    invoke-interface {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;->getValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/exception/DuplicateTaskException;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/exception/DuplicateTaskException;-><init>()V

    throw p0

    :cond_1
    return-void
.end method

.method protected abstract dispatchTask(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;
.end method

.method public abstract getCount(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)I
.end method

.method public declared-synchronized getRunningTaskID()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
