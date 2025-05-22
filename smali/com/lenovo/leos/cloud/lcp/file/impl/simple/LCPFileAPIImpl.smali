.class public final Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;
.super Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity<",
        "Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;",
        ">;>",
        "Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl<",
        "TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;-><init>(Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/lenovo/leos/cloud/lcp/file/impl/CancelEntity;)V
    .locals 0

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/file/impl/CancelEntity;->getPilotFuture()Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method private declared-synchronized c()J
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/file/impl/CancelEntity;

    invoke-direct {v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/CancelEntity;-><init>()V

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->cancelMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d(JLcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            "TT;",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport<",
            "Ljava/io/Serializable;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->notifySubProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;I)V

    invoke-interface {p4}, Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;->getMetaInfo()Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;

    move-result-object v1

    instance-of v1, v1, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;

    if-nez v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-interface {p4}, Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;->getMetaInfo()Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;->getData()Ljava/util/Map;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->pilotSupport:Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;

    invoke-virtual {v2, p4, v1, p3, p5}, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->uploadToPilot(Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;Ljava/util/Map;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p4}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->initCancelPilot(JLcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;)V

    invoke-virtual {p4}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->get()Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;->isOK()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;->getExceptions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Exception;

    throw p0

    :cond_3
    :goto_1
    const/16 p1, 0x64

    invoke-virtual {p0, p3, p1}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->notifySubProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;I)V

    return v0
.end method

.method private e(JLcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            "TT;",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport<",
            "Ljava/io/Serializable;",
            ">;)I"
        }
    .end annotation

    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->d(JLcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;)I

    move-result p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/Exception;

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "The orginal Exception is null. Unknown Exception!"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private f(JLcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            "TT;",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport<",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->e(JLcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;)I

    return-void
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl<",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity<",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;",
            ">;>;"
        }
    .end annotation

    const-class v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->instanceCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;

    if-nez v1, :cond_1

    const-string v1, "contact.cloud.lps.lenovo.com"

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init()Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    move-result-object v2

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;

    invoke-direct {v3, v2, v1, p0}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;-><init>(Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->instanceCache:Ljava/util/Map;

    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public batchDownload(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;",
            ")I"
        }
    .end annotation

    const-string v0, "AbsFileAPIImpl"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->start:J

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->c()J

    move-result-wide v1

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0, p2, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->notifyStart(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;J)V

    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->pilotSupport:Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;

    invoke-virtual {v7, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->download(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;)I

    move-result p1
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus401Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p3, 0x64

    :try_start_1
    invoke-virtual {p0, p2, p3, p3}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->notifyProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;II)V
    :try_end_1
    .catch Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus401Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, p2, p1, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->start:J

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->cost:J

    move v3, p1

    goto/16 :goto_4

    :catchall_0
    move-exception p3

    move v3, p1

    goto/16 :goto_5

    :catchall_1
    move-exception p3

    move v3, v6

    goto :goto_5

    :catch_0
    move-exception p1

    :try_start_2
    const-string p3, "Unexcepted Exception"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_3
    const-string p3, "CancellationException"

    goto :goto_0

    :catch_2
    move-exception p1

    const-string p3, "UserCancelException"

    :goto_0
    invoke-static {v0, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catch_3
    move-exception p1

    :try_start_4
    const-string p3, "ServerRuntimeException"

    :goto_1
    invoke-static {v0, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-virtual {p0, p2, v4, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->start:J

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->cost:J

    move v3, v4

    goto :goto_4

    :catchall_2
    move-exception p3

    move v3, v4

    goto :goto_5

    :catch_4
    move-exception p1

    :try_start_5
    const-string p3, "AuthenticationException"

    invoke-static {v0, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :goto_2
    invoke-virtual {p0, p2, v5, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->start:J

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->cost:J

    move v3, v5

    goto :goto_4

    :catch_5
    move-exception p1

    const/4 v3, 0x2

    :try_start_6
    const-string p3, "IOException"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_0

    :goto_3
    invoke-virtual {p0, p2, v3, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->start:J

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->cost:J

    goto :goto_4

    :catchall_3
    move-exception p3

    goto :goto_5

    :catch_6
    move-exception p1

    :try_start_7
    const-string p3, "HttpStatus401Exception"

    invoke-static {v0, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_2

    :goto_4
    return v3

    :catchall_4
    move-exception p3

    move v3, v5

    :goto_5
    invoke-virtual {p0, p2, v3, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->start:J

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->cost:J

    throw p3
.end method

.method public batchUpload(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Ljava/util/List;)Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            "Ljava/util/List<",
            "TT;>;)",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;"
        }
    .end annotation

    const-string v0, "AbsFileAPIImpl"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->start:J

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->c()J

    move-result-wide v1

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;

    invoke-direct {v3}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;-><init>()V

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->notifyStart(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;J)V

    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->pilotSupport:Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;

    invoke-virtual {v8, p2, p1}, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->uploadToPilot(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;->setResultObjectList(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus401Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3, v7}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;->setResult(I)V

    invoke-virtual {p0, p1, v7, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->start:J

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->cost:J

    goto :goto_5

    :catchall_0
    move-exception p2

    move v4, v7

    goto :goto_6

    :catch_0
    move-exception p2

    :try_start_1
    const-string v4, "Unexcepted Exception"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catch_1
    move-exception p2

    :try_start_2
    const-string v5, "CancellationException"

    goto :goto_1

    :catch_2
    move-exception p2

    const-string v5, "UserCancelException"

    :goto_1
    invoke-static {v0, v5, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catch_3
    move-exception p2

    :try_start_3
    const-string v4, "ServerRuntimeException"

    :goto_2
    invoke-static {v0, v4, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v3, v5}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;->setResult(I)V

    invoke-virtual {p0, p1, v5, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    goto :goto_0

    :catchall_1
    move-exception p2

    move v4, v5

    goto :goto_6

    :catch_4
    move-exception p2

    :try_start_4
    const-string v4, "AuthenticationException"

    invoke-static {v0, v4, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_3
    invoke-virtual {v3, v6}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;->setResult(I)V

    invoke-virtual {p0, p1, v6, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    goto :goto_0

    :catch_5
    move-exception p2

    const/4 v4, 0x2

    :try_start_5
    const-string v5, "IOException"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :goto_4
    invoke-virtual {v3, v4}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;->setResult(I)V

    invoke-virtual {p0, p1, v4, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    goto :goto_0

    :catchall_2
    move-exception p2

    goto :goto_6

    :catch_6
    move-exception p2

    :try_start_6
    const-string v4, "HttpStatus401Exception"

    invoke-static {v0, v4, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    :goto_5
    return-object v3

    :catchall_3
    move-exception p2

    move v4, v6

    :goto_6
    invoke-virtual {v3, v4}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;->setResult(I)V

    invoke-virtual {p0, p1, v4, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->cost:J

    throw p2
.end method

.method public declared-synchronized cancel(J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->cancelMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/file/impl/CancelEntity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/CancelEntity;->isCancel()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/CancelEntity;->setCancel(Z)V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->cancelMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->b(Lcom/lenovo/leos/cloud/lcp/file/impl/CancelEntity;)V

    invoke-static {p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->turnOffRequest(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "AbsFileAPIImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No task is running, to check if code logic wrong , taskId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public download2File(Ljava/lang/String;JLjava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport<",
            "Ljava/io/Serializable;",
            ">;)I"
        }
    .end annotation

    move-object v1, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->start:J

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->c()J

    move-result-wide v2

    new-instance v11, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl$ProxyUploadListener;

    move-object/from16 v0, p5

    invoke-direct {v11, p0, v2, v3, v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl$ProxyUploadListener;-><init>(Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;JLcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V

    const/4 v12, 0x0

    :try_start_0
    invoke-virtual {p0, v11, v2, v3}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->notifyStart(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;J)V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;

    move-object v4, v0

    move-object v5, p1

    move-wide v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    move-object v10, v11

    invoke-direct/range {v4 .. v10}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;-><init>(Ljava/lang/String;JLjava/lang/String;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V

    iget-object v4, v1, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->pilotSupport:Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;

    invoke-virtual {v4, v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->download(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/OutputPipe;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;

    move-result-object v0

    invoke-virtual {p0, v2, v3, v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->initCancelPilot(JLcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;)V

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->get()Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;->isOK()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;->getExceptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    instance-of v4, v0, Ljava/util/concurrent/ExecutionException;

    if-eqz v4, :cond_0

    check-cast v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    throw v0

    :cond_2
    :goto_0
    const/16 v0, 0x64

    invoke-virtual {p0, v11, v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->notifySubProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;I)V

    invoke-virtual {p0, v11, v0, v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->notifyProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v11, v12, v2, v3}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->start:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->cost:J

    return v12

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/resultCode/ResultCodeUtil;->parseResultCode(Ljava/lang/Exception;)I

    move-result v12

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {p0, v11, v12, v2, v3}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    throw v0
.end method

.method public upload(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            "TT;)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->upload(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;)I

    move-result p0

    return p0
.end method

.method public upload(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            "TT;",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport<",
            "Ljava/io/Serializable;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->start:J

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->c()J

    move-result-wide v0

    new-instance v8, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl$ProxyUploadListener;

    invoke-direct {v8, p0, v0, v1, p1}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl$ProxyUploadListener;-><init>(Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;JLcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0, v8, v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->notifyStart(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;J)V

    const/16 v9, 0x64

    invoke-virtual {p0, v8, p1, v9}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->notifyProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;II)V

    move-object v2, p0

    move-wide v3, v0

    move-object v5, v8

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->f(JLcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;)V

    invoke-virtual {p0, v8, v9, v9}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->notifyProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v8, p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_1
    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/common/util/resultCode/ResultCodeUtil;->parseResultCode(Ljava/lang/Exception;)I

    move-result p1

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p0, v8, p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    throw p2
.end method
