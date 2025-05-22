.class public Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/SingleReadTask;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;

.field private b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/DownloadInputStreamProxy;

.field private c:Ljava/lang/Long;

.field private d:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile e:Z


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/DownloadInputStreamProxy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/SingleReadTask;->e:Z

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/SingleReadTask;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/SingleReadTask;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/DownloadInputStreamProxy;

    return-void
.end method

.method private a([J)V
    .locals 12

    const-string v0, "ReadTask"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-direct {v4}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/SingleReadTask;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;

    invoke-interface {v5}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;->requestURIRoller()Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v5

    aget-wide v6, p1, v3

    aget-wide v8, p1, v2

    aget-wide v10, p1, v3

    sub-long/2addr v8, v10

    iget-object v10, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/SingleReadTask;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;

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

    aget-wide v10, p1, v3

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v10, p1, v2

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "  ResponseLength:"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Content-Length"

    invoke-interface {v4, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-static {p1}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v1

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/SingleReadTask;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/DownloadInputStreamProxy;

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/DownloadInputStreamProxy;->download(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v1, p0, v3

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    new-array p1, v2, [Ljava/io/Closeable;

    aput-object v1, p1, v3

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    throw p0
.end method


# virtual methods
.method public call()V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/SingleReadTask;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->turnOnRequest(J)V

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/SingleReadTask;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/SingleReadTask;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/DownloadInputStreamProxy;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/DownloadInputStreamProxy;->getSize()J

    move-result-wide v2

    aput-wide v2, v0, v1

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/SingleReadTask;->a([J)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/InterruptedException;

    const-string v0, "User cancelled"

    invoke-direct {p0, v0}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public cancel(Z)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/SingleReadTask;->e:Z

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/SingleReadTask;->getThreadId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/SingleReadTask;->getThreadId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->turnOffRequest(J)V

    :cond_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/SingleReadTask;->d:Ljava/util/concurrent/Future;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
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

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/SingleReadTask;->d:Ljava/util/concurrent/Future;

    return-object p0
.end method

.method public getThreadId()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/SingleReadTask;->c:Ljava/lang/Long;

    return-object p0
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

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/SingleReadTask;->d:Ljava/util/concurrent/Future;

    return-void
.end method
