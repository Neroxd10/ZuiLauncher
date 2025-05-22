.class public abstract Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/LCPSyncAPI;


# instance fields
.field protected dispatcher:Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;

.field protected listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

.field protected problemResolvers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;",
            "Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->listeners:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->problemResolvers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public varargs backup([Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->dispatchTask([Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    return-void
.end method

.method public cancel()V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->dispatcher:Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->cancelTask()V

    return-void
.end method

.method public varargs cancel([Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V
    .locals 4

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->dispatcher:Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->dispatcher:Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;

    invoke-virtual {v3, v2}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->cancelTask(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clearProgressListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->mListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->listeners:Ljava/util/Map;

    return-void
.end method

.method protected varargs dispatchTask([Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->dispatcher:Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;

    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->findListener(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->findProblemResolver(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->dispatch(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected findListener(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->mListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->listeners:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    return-object p0
.end method

.method protected findProblemResolver(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->problemResolvers:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    return-object p0
.end method

.method public varargs getCount([Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)[I
    .locals 6

    array-length v0, p1

    new-array v0, v0, [I

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, p1, v2

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->dispatcher:Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;

    invoke-virtual {v5, v4}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->getCount(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)I

    move-result v4

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getRunningTaskID()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->dispatcher:Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->getRunningTaskID()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public varargs restore([Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->dispatchTask([Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    return-void
.end method

.method public setProblemResolver(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->problemResolvers:Ljava/util/Map;

    if-eqz p2, :cond_0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public setProgressListener(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->mListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    return-void
.end method

.method public setProgressListenter(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->listeners:Ljava/util/Map;

    if-nez p2, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public varargs sync([Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;)V
    .locals 0

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/exception/UnSupportedTaskTypeException;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/exception/UnSupportedTaskTypeException;-><init>()V

    throw p0
.end method
