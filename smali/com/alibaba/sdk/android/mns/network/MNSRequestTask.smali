.class public Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/mns/network/MNSRequestTask$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alibaba/sdk/android/mns/model/MNSResult;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/sdk/android/mns/internal/ResponseParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/sdk/android/mns/internal/ResponseParser<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:Lcom/alibaba/sdk/android/mns/internal/RequestMessage;

.field private c:Lcom/alibaba/sdk/android/mns/network/ExecutionContext;

.field private d:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/mns/internal/RequestMessage;Lcom/alibaba/sdk/android/mns/internal/ResponseParser;Lcom/alibaba/sdk/android/mns/network/ExecutionContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;->a:Lcom/alibaba/sdk/android/mns/internal/ResponseParser;

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;->b:Lcom/alibaba/sdk/android/mns/internal/RequestMessage;

    iput-object p3, p0, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;->c:Lcom/alibaba/sdk/android/mns/network/ExecutionContext;

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;->getClient()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;->d:Lokhttp3/OkHttpClient;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;)Lcom/alibaba/sdk/android/mns/network/ExecutionContext;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;->c:Lcom/alibaba/sdk/android/mns/network/ExecutionContext;

    return-object p0
.end method


# virtual methods
.method public call()Lcom/alibaba/sdk/android/mns/model/MNSResult;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "[call] - "

    invoke-static {v1}, Lcom/alibaba/sdk/android/mns/common/MNSLog;->logD(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;->c:Lcom/alibaba/sdk/android/mns/network/ExecutionContext;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/common/CancellationHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/common/CancellationHandler;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;->b:Lcom/alibaba/sdk/android/mns/internal/RequestMessage;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->buildCanonicalURL()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;->b:Lcom/alibaba/sdk/android/mns/internal/RequestMessage;

    invoke-static {v3}, Lcom/alibaba/sdk/android/mns/common/MNSUtils;->signRequest(Lcom/alibaba/sdk/android/mns/internal/RequestMessage;)V

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;->b:Lcom/alibaba/sdk/android/mns/internal/RequestMessage;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;->b:Lcom/alibaba/sdk/android/mns/internal/RequestMessage;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;->b:Lcom/alibaba/sdk/android/mns/internal/RequestMessage;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Content-Type"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;->b:Lcom/alibaba/sdk/android/mns/internal/RequestMessage;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->getContent()Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;->b:Lcom/alibaba/sdk/android/mns/internal/RequestMessage;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->getContent()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    const-string v3, "Content type can\'t be null when send data!"

    invoke-static {v4, v3}, Lcom/alibaba/sdk/android/mns/common/MNSUtils;->assertTrue(ZLjava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;->b:Lcom/alibaba/sdk/android/mns/internal/RequestMessage;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->getMethod()Lcom/alibaba/sdk/android/common/HttpMethod;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask$b;

    iget-object v6, p0, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;->b:Lcom/alibaba/sdk/android/mns/internal/RequestMessage;

    invoke-virtual {v6}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;->c:Lcom/alibaba/sdk/android/mns/network/ExecutionContext;

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;->getProgressCallback()Lcom/alibaba/sdk/android/mns/callback/MNSProgressCallback;

    move-result-object v7

    invoke-direct {v4, p0, v6, v2, v7}, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask$b;-><init>(Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;[BLjava/lang/String;Lcom/alibaba/sdk/android/mns/callback/MNSProgressCallback;)V

    invoke-virtual {v1, v3, v4}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    goto :goto_2

    :cond_2
    sget-object v2, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask$a;->a:[I

    iget-object v3, p0, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;->b:Lcom/alibaba/sdk/android/mns/internal/RequestMessage;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->getMethod()Lcom/alibaba/sdk/android/common/HttpMethod;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v4, :cond_6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->delete()Lokhttp3/Request$Builder;

    move-result-object v1

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->head()Lokhttp3/Request$Builder;

    move-result-object v1

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v1

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;->b:Lcom/alibaba/sdk/android/mns/internal/RequestMessage;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->getMethod()Lcom/alibaba/sdk/android/common/HttpMethod;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [B

    invoke-static {v0, v3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    :goto_2
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/sdk/android/mns/common/MNSLog;->isEnableLog()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v3, ": "

    if-eqz v2, :cond_7

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request url: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/sdk/android/mns/common/MNSLog;->logD(Ljava/lang/String;)V

    invoke-virtual {v1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "requestHeader "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/sdk/android/mns/common/MNSLog;->logD(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;->d:Lokhttp3/OkHttpClient;

    invoke-virtual {v2, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget-object v4, p0, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;->c:Lcom/alibaba/sdk/android/mns/network/ExecutionContext;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/common/CancellationHandler;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/alibaba/sdk/android/common/CancellationHandler;->setCall(Lokhttp3/Call;)V

    invoke-interface {v2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-static {}, Lcom/alibaba/sdk/android/mns/common/MNSLog;->isEnableLog()Z

    move-result v6

    if-eqz v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "response code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lokhttp3/Response;->code()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " for url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/mns/common/MNSLog;->logD(Ljava/lang/String;)V

    invoke-virtual {v4}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "responseHeader "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/sdk/android/mns/common/MNSLog;->logD(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :cond_8
    move-object v3, v0

    goto :goto_6

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    move-object v4, v0

    goto :goto_5

    :cond_9
    :try_start_4
    new-instance v1, Ljava/io/InterruptedIOException;

    const-string v2, "This task is cancelled!"

    invoke-direct {v1, v2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception v1

    move-object v2, v0

    move-object v4, v2

    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encounter local execpiton: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/sdk/android/mns/common/MNSLog;->logE(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/sdk/android/mns/common/MNSLog;->isEnableLog()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    new-instance v3, Lcom/alibaba/sdk/android/common/ClientException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v1}, Lcom/alibaba/sdk/android/common/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    if-nez v3, :cond_c

    invoke-virtual {v4}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v5, 0xcb

    if-eq v1, v5, :cond_b

    invoke-virtual {v4}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v5, 0x12c

    if-lt v1, v5, :cond_c

    :cond_b
    :try_start_5
    invoke-static {v4}, Lcom/alibaba/sdk/android/mns/internal/ResponseParsers;->parseResponseErrorXML(Lokhttp3/Response;)Lcom/alibaba/sdk/android/common/ServiceException;

    move-result-object v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_7

    :catch_3
    move-exception v1

    new-instance v3, Lcom/alibaba/sdk/android/common/ClientException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/alibaba/sdk/android/common/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_c
    if-nez v3, :cond_e

    :try_start_6
    iget-object v1, p0, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;->a:Lcom/alibaba/sdk/android/mns/internal/ResponseParser;

    invoke-interface {v1, v4}, Lcom/alibaba/sdk/android/mns/internal/ResponseParser;->parse(Lokhttp3/Response;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sdk/android/mns/model/MNSResult;

    iget-object v3, p0, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;->c:Lcom/alibaba/sdk/android/mns/network/ExecutionContext;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;->getCompletedCallback()Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;->c:Lcom/alibaba/sdk/android/mns/network/ExecutionContext;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;->getCompletedCallback()Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;->c:Lcom/alibaba/sdk/android/mns/network/ExecutionContext;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;->getRequest()Lcom/alibaba/sdk/android/mns/model/MNSRequest;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;->onSuccess(Lcom/alibaba/sdk/android/mns/model/MNSRequest;Lcom/alibaba/sdk/android/mns/model/MNSResult;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_d
    return-object v1

    :catch_4
    move-exception v1

    new-instance v3, Lcom/alibaba/sdk/android/common/ClientException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/alibaba/sdk/android/common/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    :goto_7
    if-eqz v2, :cond_f

    invoke-interface {v2}, Lokhttp3/Call;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_10

    :cond_f
    iget-object v1, p0, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;->c:Lcom/alibaba/sdk/android/mns/network/ExecutionContext;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/common/CancellationHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/common/CancellationHandler;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    new-instance v1, Lcom/alibaba/sdk/android/common/ClientException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "Task is cancelled!"

    invoke-direct {v1, v4, v2, v3}, Lcom/alibaba/sdk/android/common/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Boolean;)V

    move-object v3, v1

    :cond_11
    instance-of v1, v3, Lcom/alibaba/sdk/android/common/ClientException;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;->c:Lcom/alibaba/sdk/android/mns/network/ExecutionContext;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;->getCompletedCallback()Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;

    move-result-object v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;->c:Lcom/alibaba/sdk/android/mns/network/ExecutionContext;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;->getCompletedCallback()Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;

    move-result-object v1

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;->c:Lcom/alibaba/sdk/android/mns/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;->getRequest()Lcom/alibaba/sdk/android/mns/model/MNSRequest;

    move-result-object p0

    move-object v2, v3

    check-cast v2, Lcom/alibaba/sdk/android/common/ClientException;

    invoke-interface {v1, p0, v2, v0}, Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;->onFailure(Lcom/alibaba/sdk/android/mns/model/MNSRequest;Lcom/alibaba/sdk/android/common/ClientException;Lcom/alibaba/sdk/android/common/ServiceException;)V

    goto :goto_8

    :cond_12
    iget-object v1, p0, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;->c:Lcom/alibaba/sdk/android/mns/network/ExecutionContext;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;->getCompletedCallback()Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;

    move-result-object v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;->c:Lcom/alibaba/sdk/android/mns/network/ExecutionContext;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;->getCompletedCallback()Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;

    move-result-object v1

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;->c:Lcom/alibaba/sdk/android/mns/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;->getRequest()Lcom/alibaba/sdk/android/mns/model/MNSRequest;

    move-result-object p0

    move-object v2, v3

    check-cast v2, Lcom/alibaba/sdk/android/common/ServiceException;

    invoke-interface {v1, p0, v0, v2}, Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;->onFailure(Lcom/alibaba/sdk/android/mns/model/MNSRequest;Lcom/alibaba/sdk/android/common/ClientException;Lcom/alibaba/sdk/android/common/ServiceException;)V

    :cond_13
    :goto_8
    throw v3
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/mns/network/MNSRequestTask;->call()Lcom/alibaba/sdk/android/mns/model/MNSResult;

    move-result-object p0

    return-object p0
.end method
