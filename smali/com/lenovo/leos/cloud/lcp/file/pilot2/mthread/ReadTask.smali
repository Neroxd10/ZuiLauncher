.class public Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ThreadTask;


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;

.field private b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadOdometer;

.field private c:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/OutputPipe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/OutputPipe<",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Long;

.field private e:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private volatile g:Z


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadOdometer;Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/OutputPipe;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadOdometer;",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/OutputPipe<",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadTask;->g:Z

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadTask;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadTask;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadOdometer;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadTask;->c:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/OutputPipe;

    return-void
.end method

.method private a([JLjava/io/InputStream;)V
    .locals 5

    const/16 v0, 0x2000

    :try_start_0
    new-array v0, v0, [B

    const/4 v1, 0x0

    aget-wide v1, p1, v1

    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result p1

    :goto_0
    if-ltz p1, :cond_1

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadTask;->c:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/OutputPipe;

    invoke-interface {v3, v0, v1, v2, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/OutputPipe;->write([BJI)V

    iget-boolean v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadTask;->g:Z

    if-nez v3, :cond_0

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadTask;->c:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/OutputPipe;

    invoke-interface {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/OutputPipe;->flush()V

    new-instance p1, Ljava/lang/InterruptedException;

    const-string p2, "User cancelled"

    invoke-direct {p1, p2}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadTask;->c:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/OutputPipe;

    invoke-interface {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/OutputPipe;->close()Z

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadTask;->c:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/OutputPipe;

    invoke-interface {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/OutputPipe;->close()Z

    throw p1
.end method

.method private b([J)V
    .locals 12

    const-string v0, "ReadTask"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-direct {v4}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadTask;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;

    invoke-interface {v5}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;->requestURIRoller()Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v5

    aget-wide v6, p1, v2

    aget-wide v8, p1, v3

    aget-wide v10, p1, v2

    sub-long/2addr v8, v10

    iget-object v10, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadTask;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;

    invoke-interface {v10, v6, v7, v8, v9}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;->requestIntercepter(JJ)Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->setRequestIntercepter(Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;)V

    invoke-virtual {v4, v5}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->get(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "request "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;->roll(Ljava/lang/Exception;)Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v10, p1, v2

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v10, p1, v3

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "  ResponseLength:"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Content-Length"

    invoke-interface {v4, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v5}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadTask;->a([JLjava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadTask;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadOdometer;

    aget-wide v4, p1, v3

    invoke-virtual {p0, v4, v5}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadOdometer;->release(J)V

    new-array p0, v3, [Ljava/io/Closeable;

    aput-object v1, p0, v2

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadTask;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadOdometer;

    aget-wide v4, p1, v3

    invoke-virtual {p0, v4, v5}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadOdometer;->release(J)V

    new-array p0, v3, [Ljava/io/Closeable;

    aput-object v1, p0, v2

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadTask;->call()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public call()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadTask;->d:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->turnOnRequest(J)V

    :goto_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadTask;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadOdometer;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadOdometer;->isAllFinish()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadTask;->g:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadTask;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadOdometer;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadOdometer;->acquire()[J

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadTask;->b([J)V

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/InterruptedException;

    const-string v2, "User cancelled"

    invoke-direct {v1, v2}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRollerUtil;->currentRolledUri()Ljava/net/URI;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRollerUtil;->currentRolledUri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadTask;->f:Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRollerUtil;->currentRolledUri()Ljava/net/URI;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRollerUtil;->currentRolledUri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadTask;->f:Ljava/lang/String;

    throw v1
.end method

.method public cancel(Z)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadTask;->g:Z

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadTask;->getThreadId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadTask;->getThreadId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->turnOffRequest(J)V

    :cond_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadTask;->e:Ljava/util/concurrent/Future;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method

.method public get()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadTask;->e:Ljava/util/concurrent/Future;

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getFuture()Ljava/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadTask;->e:Ljava/util/concurrent/Future;

    return-object p0
.end method

.method public getTaskUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadTask;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getThreadId()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadTask;->d:Ljava/lang/Long;

    return-object p0
.end method

.method public isDone()Z
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadTask;->e:Ljava/util/concurrent/Future;

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p0

    return p0
.end method

.method public setFuture(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadTask;->e:Ljava/util/concurrent/Future;

    return-void
.end method
