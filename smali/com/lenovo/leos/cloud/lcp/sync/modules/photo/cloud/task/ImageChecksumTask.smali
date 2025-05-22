.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$ImageChecksumResult;,
        Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$ChecksumFuture;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$ChecksumFuture;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ImageChecksumComputePool;

.field private e:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

.field private f:Z

.field private g:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->b:Ljava/util/List;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->c:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->f:Z

    if-eqz p1, :cond_0

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->h:Ljava/lang/String;

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->g:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ImageChecksumComputePool;

    invoke-direct {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ImageChecksumComputePool;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->d:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ImageChecksumComputePool;

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-direct {p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->e:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/interceptor/DefaultInterceptor;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/interceptor/DefaultInterceptor;-><init>()V

    invoke-virtual {p1, p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->setRequestIntercepter(Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "networkExecutor is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ImageChecksumComputePool;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->d:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ImageChecksumComputePool;

    return-object p0
.end method

.method static synthetic b(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->e:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    return-object p0
.end method

.method private c(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    const-string v0, "data"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->f()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p4, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "origin"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "albumId"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    move v5, v0

    :goto_1
    if-eqz v5, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, v2, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method

.method private d(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->checkCancelOperation()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->originalAdlerKey:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v3, "origin"

    iget-object v4, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->originalAdlerKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "compressed"

    iget-object v1, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->originalAdlerKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private e()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->h(Ljava/util/List;)V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private f()Z
    .locals 0

    iget-boolean p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->f:Z

    return p0
.end method

.method private g(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private h(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$ChecksumFuture;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->h:Ljava/lang/String;

    invoke-direct {v0, p0, v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$ChecksumFuture;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;Ljava/lang/String;Ljava/util/List;)V

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->a:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->f:Z

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$ChecksumFuture;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->d:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ImageChecksumComputePool;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ImageChecksumComputePool;->shutDown()V

    return-void
.end method

.method protected checkCancelOperation()V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->f()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw p0
.end method

.method public declared-synchronized get(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$ImageChecksumResult;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->getFuture(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$ChecksumFuture;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$ImageChecksumResult;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/util/concurrent/CancellationException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getCloudExistImage(Ljava/lang/String;Ljava/util/List;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$ImageChecksumResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;)",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$ImageChecksumResult;"
        }
    .end annotation

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$ImageChecksumResult;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$ImageChecksumResult;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->d(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "v4/backupcheck"

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/PhotoUtils;->getURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->g:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;

    new-instance v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$a;

    invoke-direct {v5, p0, v3, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$a;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Lorg/json/JSONArray;)V

    invoke-virtual {v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;->execute(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor$Executer;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "result"

    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_0

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Lorg/json/JSONObject;)V

    :cond_0
    iput-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$ImageChecksumResult;->movableList:Ljava/util/List;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$ImageChecksumResult;->existMap:Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public getFuture(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$ChecksumFuture;
    .locals 3

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->a:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$ChecksumFuture;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$ChecksumFuture;->contains(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public start(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    instance-of v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/VideoImageInfo;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->h(Ljava/util/List;)V

    :cond_1
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->e()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->e()V

    :cond_3
    return-void
.end method
