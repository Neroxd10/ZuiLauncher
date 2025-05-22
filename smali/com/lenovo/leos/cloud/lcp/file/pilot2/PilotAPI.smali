.class public final Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;

.field private b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->DEFAULT:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/DownloadInputStreamProxy;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;
    .locals 0

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/DownloadInputStreamProxy;->getUrl()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/UrlReadTaskAssistant;

    invoke-direct {p1, p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/UrlReadTaskAssistant;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method private b(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/OutputPipe;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/OutputPipe<",
            "Ljava/io/Serializable;",
            ">;)",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;"
        }
    .end annotation

    instance-of p0, p1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistantSuppliable;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistantSuppliable;

    invoke-interface {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistantSuppliable;->getTaskAssistant()Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/OutputPipe;->target()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/Serializable;

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_1

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/UrlReadTaskAssistant;

    check-cast p0, Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/UrlReadTaskAssistant;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6682\u4e0d\u652f\u6301target("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")\u5bf9\u5e94\u7684\u4e0b\u8f7d\u7c7b\u578b "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;
    .locals 1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public batchCreateObject(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;",
            ">;"
        }
    .end annotation

    const-string v0, "create Object:"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->c:Ljava/lang/String;

    invoke-virtual {v3, p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->batchCreateObject(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-object p0

    :cond_0
    :try_start_1
    new-instance p0, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;

    const-string p1, "Not login."

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;)V

    throw p0
.end method

.method public batchDownload(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->c:Ljava/lang/String;

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->batchDownload(Ljava/util/List;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;)V

    return-void
.end method

.method public batchUpload(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->c:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->batchCreateObject(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->c:Ljava/lang/String;

    invoke-virtual {v1, p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->batchWriteObject(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v0

    :cond_0
    new-instance p0, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;

    const-string p1, "Not login."

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public download(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/OutputPipe;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/OutputPipe<",
            "Ljava/io/Serializable;",
            ">;)",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->b(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/OutputPipe;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;

    move-result-object p0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/MultiTaskExecutor;->getInstance()Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/MultiTaskExecutor;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/MultiTaskExecutor;->readObject(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/OutputPipe;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->createFailFuture(Ljava/lang/Exception;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;

    move-result-object p0

    return-object p0
.end method

.method public download(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/DownloadInputStreamProxy;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->a(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/DownloadInputStreamProxy;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;

    move-result-object p0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/MultiTaskExecutor;->getInstance()Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/MultiTaskExecutor;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/MultiTaskExecutor;->readObjectInCurrentThread(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/DownloadInputStreamProxy;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;)V

    return-void
.end method

.method public declared-synchronized ensureLogin(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized ensureLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->DEFAULT:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->setConfig(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->getOperatorByLpsust(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public upload(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;Ljava/util/Map;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;->loadOdometer()Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->getTarget()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;

    :cond_0
    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->createObject(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;

    move-result-object v1

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1, p2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;->setAppServerCallbackData(Ljava/util/Map;)V

    :cond_2
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;

    invoke-virtual {p0, p1, v1, v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->writeObject(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;

    invoke-direct {p1, v1, p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;Ljava/util/List;)V

    return-object p1

    :cond_3
    new-instance p0, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;

    const-string p1, "Not login."

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->createFailFuture(Ljava/lang/Exception;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;

    move-result-object p0

    return-object p0
.end method
