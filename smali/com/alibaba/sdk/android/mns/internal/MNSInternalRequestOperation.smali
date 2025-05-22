.class public Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static d:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private volatile a:Ljava/net/URI;

.field private b:Lokhttp3/OkHttpClient;

.field private c:Lcom/alibaba/sdk/android/common/auth/CredentialProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->d:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/net/URI;Lcom/alibaba/sdk/android/common/auth/CredentialProvider;Lcom/alibaba/sdk/android/common/ClientConfiguration;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->a:Ljava/net/URI;

    iput-object p3, p0, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->c:Lcom/alibaba/sdk/android/common/auth/CredentialProvider;

    new-instance p1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    new-instance p3, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation$a;

    invoke-direct {p3, p0, p2}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation$a;-><init>(Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;Ljava/net/URI;)V

    invoke-virtual {p1, p3}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    if-eqz p4, :cond_0

    new-instance p2, Lokhttp3/Dispatcher;

    invoke-direct {p2}, Lokhttp3/Dispatcher;-><init>()V

    invoke-virtual {p4}, Lcom/alibaba/sdk/android/common/ClientConfiguration;->getMaxConcurrentRequest()I

    move-result p3

    invoke-virtual {p2, p3}, Lokhttp3/Dispatcher;->setMaxRequests(I)V

    invoke-virtual {p4}, Lcom/alibaba/sdk/android/common/ClientConfiguration;->getConnectionTimeout()I

    move-result p3

    int-to-long v0, p3

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p3

    invoke-virtual {p4}, Lcom/alibaba/sdk/android/common/ClientConfiguration;->getSocketTimeout()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p3

    invoke-virtual {p4}, Lcom/alibaba/sdk/android/common/ClientConfiguration;->getSocketTimeout()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p3

    invoke-virtual {p3, p2}, Lokhttp3/OkHttpClient$Builder;->dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {p4}, Lcom/alibaba/sdk/android/common/ClientConfiguration;->getMaxErrorRetry()I

    :cond_0
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->b:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private a(Lcom/alibaba/sdk/android/mns/internal/RequestMessage;)V
    .locals 3

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Date"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/alibaba/sdk/android/common/utils/DateUtil;->currentFixedSkewedTimeInRFC822Format()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "text/xml;charset=UTF-8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v1, "x-mns-version"

    const-string v2, "2015-06-06"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->c:Lcom/alibaba/sdk/android/common/auth/CredentialProvider;

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setCredentialProvider(Lcom/alibaba/sdk/android/common/auth/CredentialProvider;)V

    return-void
.end method


# virtual methods
.method public changeMessageVisibility(Lcom/alibaba/sdk/android/mns/model/request/ChangeMessageVisibilityRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/mns/model/request/ChangeMessageVisibilityRequest;",
            "Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback<",
            "Lcom/alibaba/sdk/android/mns/model/request/ChangeMessageVisibilityRequest;",
            "Lcom/alibaba/sdk/android/mns/model/result/ChangeMessageVisibilityResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask<",
            "Lcom/alibaba/sdk/android/mns/model/result/ChangeMessageVisibilityResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->a:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/common/HttpMethod;->PUT:Lcom/alibaba/sdk/android/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/mns/model/request/ChangeMessageVisibilityRequest;->getQueueName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setQueueName(Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;->MESSAGE:Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setType(Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;)V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/mns/model/request/ChangeMessageVisibilityRequest;->getReceiptHandle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ReceiptHandle"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/mns/model/request/ChangeMessageVisibilityRequest;->getVisibleTime()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VisibilityTimeout"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->a(Lcom/alibaba/sdk/android/mns/internal/RequestMessage;)V

    new-instance v1, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/mns/model/MNSRequest;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)V

    :cond_0
    new-instance p0, Lcom/alibaba/sdk/android/mns/internal/ResponseParsers$ChangeMessageVisibilityParser;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/mns/internal/ResponseParsers$ChangeMessageVisibilityParser;-><init>()V

    new-instance p1, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;

    invoke-direct {p1, v0, p0, v1}, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;-><init>(Lcom/alibaba/sdk/android/mns/internal/RequestMessage;Lcom/alibaba/sdk/android/mns/internal/ResponseParser;Lcom/alibaba/sdk/android/mns/network/ExecutionContext;)V

    sget-object p0, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/mns/network/ExecutionContext;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public createQueue(Lcom/alibaba/sdk/android/mns/model/request/CreateQueueRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/mns/model/request/CreateQueueRequest;",
            "Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback<",
            "Lcom/alibaba/sdk/android/mns/model/request/CreateQueueRequest;",
            "Lcom/alibaba/sdk/android/mns/model/result/CreateQueueResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask<",
            "Lcom/alibaba/sdk/android/mns/model/result/CreateQueueResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->a:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/common/HttpMethod;->PUT:Lcom/alibaba/sdk/android/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/mns/model/request/CreateQueueRequest;->getQueueName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setQueueName(Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;->QUEUE:Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setType(Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;)V

    new-instance v1, Lcom/alibaba/sdk/android/mns/model/serialize/QueueMetaSerializer;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/mns/model/serialize/QueueMetaSerializer;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/mns/model/request/CreateQueueRequest;->getQueueMeta()Lcom/alibaba/sdk/android/mns/model/QueueMeta;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/sdk/android/mns/model/serialize/QueueMetaSerializer;->serialize(Lcom/alibaba/sdk/android/mns/model/QueueMeta;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setContent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->a(Lcom/alibaba/sdk/android/mns/internal/RequestMessage;)V

    new-instance v1, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/mns/model/MNSRequest;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)V

    :cond_0
    new-instance p0, Lcom/alibaba/sdk/android/mns/internal/ResponseParsers$CreateQueueResponseParser;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/mns/internal/ResponseParsers$CreateQueueResponseParser;-><init>()V

    new-instance p1, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;

    invoke-direct {p1, v0, p0, v1}, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;-><init>(Lcom/alibaba/sdk/android/mns/internal/RequestMessage;Lcom/alibaba/sdk/android/mns/internal/ResponseParser;Lcom/alibaba/sdk/android/mns/network/ExecutionContext;)V

    sget-object p0, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/mns/network/ExecutionContext;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public deleteMessage(Lcom/alibaba/sdk/android/mns/model/request/DeleteMessageRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/mns/model/request/DeleteMessageRequest;",
            "Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback<",
            "Lcom/alibaba/sdk/android/mns/model/request/DeleteMessageRequest;",
            "Lcom/alibaba/sdk/android/mns/model/result/DeleteMessageResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask<",
            "Lcom/alibaba/sdk/android/mns/model/result/DeleteMessageResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->a:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/common/HttpMethod;->DELETE:Lcom/alibaba/sdk/android/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/mns/model/request/DeleteMessageRequest;->getQueueName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setQueueName(Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;->MESSAGE:Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setType(Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;)V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/mns/model/request/DeleteMessageRequest;->getReceiptHandle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ReceiptHandle"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->a(Lcom/alibaba/sdk/android/mns/internal/RequestMessage;)V

    new-instance v1, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/mns/model/MNSRequest;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)V

    :cond_0
    new-instance p0, Lcom/alibaba/sdk/android/mns/internal/ResponseParsers$DeleteMessageParser;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/mns/internal/ResponseParsers$DeleteMessageParser;-><init>()V

    new-instance p1, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;

    invoke-direct {p1, v0, p0, v1}, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;-><init>(Lcom/alibaba/sdk/android/mns/internal/RequestMessage;Lcom/alibaba/sdk/android/mns/internal/ResponseParser;Lcom/alibaba/sdk/android/mns/network/ExecutionContext;)V

    sget-object p0, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/mns/network/ExecutionContext;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public deleteQueue(Lcom/alibaba/sdk/android/mns/model/request/DeleteQueueRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/mns/model/request/DeleteQueueRequest;",
            "Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback<",
            "Lcom/alibaba/sdk/android/mns/model/request/DeleteQueueRequest;",
            "Lcom/alibaba/sdk/android/mns/model/result/DeleteQueueResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask<",
            "Lcom/alibaba/sdk/android/mns/model/result/DeleteQueueResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->a:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/common/HttpMethod;->DELETE:Lcom/alibaba/sdk/android/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/mns/model/request/DeleteQueueRequest;->getQueueName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setQueueName(Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;->QUEUE:Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setType(Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;)V

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->a(Lcom/alibaba/sdk/android/mns/internal/RequestMessage;)V

    new-instance v1, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/mns/model/MNSRequest;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)V

    :cond_0
    new-instance p0, Lcom/alibaba/sdk/android/mns/internal/ResponseParsers$DeleteQueueResponseParser;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/mns/internal/ResponseParsers$DeleteQueueResponseParser;-><init>()V

    new-instance p1, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;

    invoke-direct {p1, v0, p0, v1}, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;-><init>(Lcom/alibaba/sdk/android/mns/internal/RequestMessage;Lcom/alibaba/sdk/android/mns/internal/ResponseParser;Lcom/alibaba/sdk/android/mns/network/ExecutionContext;)V

    sget-object p0, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/mns/network/ExecutionContext;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public getInnerClient()Lokhttp3/OkHttpClient;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->b:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public getQueueAttr(Lcom/alibaba/sdk/android/mns/model/request/GetQueueAttributesRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/mns/model/request/GetQueueAttributesRequest;",
            "Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback<",
            "Lcom/alibaba/sdk/android/mns/model/request/GetQueueAttributesRequest;",
            "Lcom/alibaba/sdk/android/mns/model/result/GetQueueAttributesResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask<",
            "Lcom/alibaba/sdk/android/mns/model/result/GetQueueAttributesResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->a:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/common/HttpMethod;->GET:Lcom/alibaba/sdk/android/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/mns/model/request/GetQueueAttributesRequest;->getQueueName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setQueueName(Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;->QUEUE:Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setType(Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;)V

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->a(Lcom/alibaba/sdk/android/mns/internal/RequestMessage;)V

    new-instance v1, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/mns/model/MNSRequest;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)V

    :cond_0
    new-instance p0, Lcom/alibaba/sdk/android/mns/internal/ResponseParsers$GetQueueAttributesResponseParser;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/mns/internal/ResponseParsers$GetQueueAttributesResponseParser;-><init>()V

    new-instance p1, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;

    invoke-direct {p1, v0, p0, v1}, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;-><init>(Lcom/alibaba/sdk/android/mns/internal/RequestMessage;Lcom/alibaba/sdk/android/mns/internal/ResponseParser;Lcom/alibaba/sdk/android/mns/network/ExecutionContext;)V

    sget-object p0, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/mns/network/ExecutionContext;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public listQueue(Lcom/alibaba/sdk/android/mns/model/request/ListQueueRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/mns/model/request/ListQueueRequest;",
            "Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback<",
            "Lcom/alibaba/sdk/android/mns/model/request/ListQueueRequest;",
            "Lcom/alibaba/sdk/android/mns/model/result/ListQueueResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask<",
            "Lcom/alibaba/sdk/android/mns/model/result/ListQueueResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->a:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/common/HttpMethod;->GET:Lcom/alibaba/sdk/android/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/common/HttpMethod;)V

    sget-object v1, Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;->QUEUE:Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setType(Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/mns/model/request/ListQueueRequest;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/mns/model/request/ListQueueRequest;->getPrefix()Ljava/lang/String;

    move-result-object v2

    const-string v3, "x-mns-"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/mns/model/request/ListQueueRequest;->getMarker()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/mns/model/request/ListQueueRequest;->getMarker()Ljava/lang/String;

    move-result-object v2

    const-string v3, "x-mns-marker"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/mns/model/request/ListQueueRequest;->getRetNum()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "x-mns-ret-number"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->a(Lcom/alibaba/sdk/android/mns/internal/RequestMessage;)V

    new-instance v1, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/mns/model/MNSRequest;)V

    if-eqz p2, :cond_2

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)V

    :cond_2
    new-instance p0, Lcom/alibaba/sdk/android/mns/internal/ResponseParsers$ListQueueResponseParser;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/mns/internal/ResponseParsers$ListQueueResponseParser;-><init>()V

    new-instance p1, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;

    invoke-direct {p1, v0, p0, v1}, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;-><init>(Lcom/alibaba/sdk/android/mns/internal/RequestMessage;Lcom/alibaba/sdk/android/mns/internal/ResponseParser;Lcom/alibaba/sdk/android/mns/network/ExecutionContext;)V

    sget-object p0, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/mns/network/ExecutionContext;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public peekMessage(Lcom/alibaba/sdk/android/mns/model/request/PeekMessageRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/mns/model/request/PeekMessageRequest;",
            "Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback<",
            "Lcom/alibaba/sdk/android/mns/model/request/PeekMessageRequest;",
            "Lcom/alibaba/sdk/android/mns/model/result/PeekMessageResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask<",
            "Lcom/alibaba/sdk/android/mns/model/result/PeekMessageResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->a:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/common/HttpMethod;->GET:Lcom/alibaba/sdk/android/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/mns/model/request/PeekMessageRequest;->getQueueName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setQueueName(Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;->MESSAGE:Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setType(Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;)V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v1

    const-string v2, "peekonly"

    const-string v3, "true"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->a(Lcom/alibaba/sdk/android/mns/internal/RequestMessage;)V

    new-instance v1, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/mns/model/MNSRequest;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)V

    :cond_0
    new-instance p0, Lcom/alibaba/sdk/android/mns/internal/ResponseParsers$PeekMessageParser;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/mns/internal/ResponseParsers$PeekMessageParser;-><init>()V

    new-instance p1, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;

    invoke-direct {p1, v0, p0, v1}, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;-><init>(Lcom/alibaba/sdk/android/mns/internal/RequestMessage;Lcom/alibaba/sdk/android/mns/internal/ResponseParser;Lcom/alibaba/sdk/android/mns/network/ExecutionContext;)V

    sget-object p0, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/mns/network/ExecutionContext;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public receiveMessage(Lcom/alibaba/sdk/android/mns/model/request/ReceiveMessageRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/mns/model/request/ReceiveMessageRequest;",
            "Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback<",
            "Lcom/alibaba/sdk/android/mns/model/request/ReceiveMessageRequest;",
            "Lcom/alibaba/sdk/android/mns/model/result/ReceiveMessageResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask<",
            "Lcom/alibaba/sdk/android/mns/model/result/ReceiveMessageResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->a:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/common/HttpMethod;->GET:Lcom/alibaba/sdk/android/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/mns/model/request/ReceiveMessageRequest;->getQueueName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setQueueName(Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;->MESSAGE:Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setType(Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;)V

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->a(Lcom/alibaba/sdk/android/mns/internal/RequestMessage;)V

    new-instance v1, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/mns/model/MNSRequest;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)V

    :cond_0
    new-instance p0, Lcom/alibaba/sdk/android/mns/internal/ResponseParsers$ReceiveMessageParser;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/mns/internal/ResponseParsers$ReceiveMessageParser;-><init>()V

    new-instance p1, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;

    invoke-direct {p1, v0, p0, v1}, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;-><init>(Lcom/alibaba/sdk/android/mns/internal/RequestMessage;Lcom/alibaba/sdk/android/mns/internal/ResponseParser;Lcom/alibaba/sdk/android/mns/network/ExecutionContext;)V

    sget-object p0, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/mns/network/ExecutionContext;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public sendMessage(Lcom/alibaba/sdk/android/mns/model/request/SendMessageRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/mns/model/request/SendMessageRequest;",
            "Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback<",
            "Lcom/alibaba/sdk/android/mns/model/request/SendMessageRequest;",
            "Lcom/alibaba/sdk/android/mns/model/result/SendMessageResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask<",
            "Lcom/alibaba/sdk/android/mns/model/result/SendMessageResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->a:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/common/HttpMethod;->POST:Lcom/alibaba/sdk/android/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/mns/model/request/SendMessageRequest;->getQueueName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setQueueName(Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;->MESSAGE:Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setType(Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;)V

    new-instance v1, Lcom/alibaba/sdk/android/mns/model/serialize/MessageSerializer;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/mns/model/serialize/MessageSerializer;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/mns/model/request/SendMessageRequest;->getMessage()Lcom/alibaba/sdk/android/mns/model/Message;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/sdk/android/mns/model/serialize/MessageSerializer;->serialize(Lcom/alibaba/sdk/android/mns/model/Message;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setContent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->a(Lcom/alibaba/sdk/android/mns/internal/RequestMessage;)V

    new-instance v1, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/mns/model/MNSRequest;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)V

    :cond_0
    new-instance p0, Lcom/alibaba/sdk/android/mns/internal/ResponseParsers$SendMessageResponseParser;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/mns/internal/ResponseParsers$SendMessageResponseParser;-><init>()V

    new-instance p1, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;

    invoke-direct {p1, v0, p0, v1}, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;-><init>(Lcom/alibaba/sdk/android/mns/internal/RequestMessage;Lcom/alibaba/sdk/android/mns/internal/ResponseParser;Lcom/alibaba/sdk/android/mns/network/ExecutionContext;)V

    sget-object p0, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/mns/network/ExecutionContext;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public setCredentialProvider(Lcom/alibaba/sdk/android/common/auth/CredentialProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->c:Lcom/alibaba/sdk/android/common/auth/CredentialProvider;

    return-void
.end method

.method public setQueueAttr(Lcom/alibaba/sdk/android/mns/model/request/SetQueueAttributesRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/mns/model/request/SetQueueAttributesRequest;",
            "Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback<",
            "Lcom/alibaba/sdk/android/mns/model/request/SetQueueAttributesRequest;",
            "Lcom/alibaba/sdk/android/mns/model/result/SetQueueAttributesResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask<",
            "Lcom/alibaba/sdk/android/mns/model/result/SetQueueAttributesResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->a:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/common/HttpMethod;->PUT:Lcom/alibaba/sdk/android/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/mns/model/request/SetQueueAttributesRequest;->getQueueName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setQueueName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v1

    const-string v2, "metaoverride"

    const-string v3, "true"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;->QUEUE:Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setType(Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;)V

    new-instance v1, Lcom/alibaba/sdk/android/mns/model/serialize/QueueMetaSerializer;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/mns/model/serialize/QueueMetaSerializer;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/mns/model/request/SetQueueAttributesRequest;->getQueueMeta()Lcom/alibaba/sdk/android/mns/model/QueueMeta;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/sdk/android/mns/model/serialize/QueueMetaSerializer;->serialize(Lcom/alibaba/sdk/android/mns/model/QueueMeta;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->setContent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->a(Lcom/alibaba/sdk/android/mns/internal/RequestMessage;)V

    new-instance v1, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/mns/model/MNSRequest;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)V

    :cond_0
    new-instance p0, Lcom/alibaba/sdk/android/mns/internal/ResponseParsers$CreateQueueResponseParser;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/mns/internal/ResponseParsers$CreateQueueResponseParser;-><init>()V

    new-instance p1, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;

    invoke-direct {p1, v0, p0, v1}, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;-><init>(Lcom/alibaba/sdk/android/mns/internal/RequestMessage;Lcom/alibaba/sdk/android/mns/internal/ResponseParser;Lcom/alibaba/sdk/android/mns/network/ExecutionContext;)V

    sget-object p0, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/mns/network/ExecutionContext;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
