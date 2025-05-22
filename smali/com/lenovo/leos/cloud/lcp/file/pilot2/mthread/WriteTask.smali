.class public Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ThreadTask;


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;

.field private b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;

.field private c:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;

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
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->g:Z

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->c:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;

    return-void
.end method

.method private a(Ljava/lang/Exception;)Z
    .locals 0

    instance-of p0, p1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus40XException;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private b(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;JJ)V
    .locals 9

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;

    invoke-interface {v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;->requestURIRoller()Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;

    invoke-interface {v2, p2, p3, p4, p5}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;->requestIntercepter(JJ)Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->setRequestIntercepter(Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;)V

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeEntity;

    move-object v3, v2

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeEntity;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;JJ)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->putForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->setRequestIntercepter(Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "upload resp:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "WriteTask"

    invoke-static {p3, p2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;

    invoke-interface {p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;->verifyResponse(Ljava/lang/Object;)V

    return-void
.end method

.method private c([J)V
    .locals 13

    const-string v0, "UploadOdometer.acquire"

    const-string v1, "-"

    const/4 v2, 0x0

    aget-wide v9, p1, v2

    const/4 v2, 0x1

    aget-wide v7, p1, v2

    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "START-"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;

    invoke-virtual {v2, v9, v10}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->partNumber(J)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v11, v9, v7

    invoke-virtual {p1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->c:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;

    move-object v3, p0

    move-wide v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->b(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;JJ)V

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;

    invoke-virtual {p1, v9, v10}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->finish(J)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FINISH-"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;

    invoke-virtual {v2, v9, v10}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->partNumber(J)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->c:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;

    invoke-interface {p1, v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;->persistOdometer(Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;

    invoke-virtual {p0, v9, v10}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->release(J)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->a(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->c:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;

    invoke-interface {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;->removeOdometer()V

    :cond_0
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    const-string v0, "WriteTask"

    const-string v1, "sendOneSegement exception"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;

    invoke-virtual {p0, v9, v10}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->release(J)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->call()Ljava/lang/String;

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

    iput-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->d:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->turnOnRequest(J)V

    :goto_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->isAllFinish()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->g:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->acquire()[J

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->c([J)V

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

    :cond_2
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->isAllFinish()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->c:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;

    invoke-interface {v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;->removeOdometer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRollerUtil;->currentRolledUri()Ljava/net/URI;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRollerUtil;->currentRolledUri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->f:Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRollerUtil;->currentRolledUri()Ljava/net/URI;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRollerUtil;->currentRolledUri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->f:Ljava/lang/String;

    throw v1
.end method

.method public cancel(Z)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->g:Z

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->getThreadId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->getThreadId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->turnOffRequest(J)V

    :cond_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->e:Ljava/util/concurrent/Future;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method

.method public get()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->e:Ljava/util/concurrent/Future;

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

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->e:Ljava/util/concurrent/Future;

    return-object p0
.end method

.method public getTaskUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getThreadId()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->d:Ljava/lang/Long;

    return-object p0
.end method

.method public isDone()Z
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->e:Ljava/util/concurrent/Future;

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

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->e:Ljava/util/concurrent/Future;

    return-void
.end method
