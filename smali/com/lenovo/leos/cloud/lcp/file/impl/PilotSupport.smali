.class public Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity<",
        "+",
        "Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "AppConfFileService"


# instance fields
.field protected bucketName:Ljava/lang/String;

.field protected context:Landroid/content/Context;

.field protected lenovoId:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

.field protected pilotApi:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

.field protected realmId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->context:Landroid/content/Context;

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->lenovoId:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->realmId:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->bucketName:Ljava/lang/String;

    invoke-static {p3}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->getInstance(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->pilotApi:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne p0, v0, :cond_2

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;->isWritten()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;

    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;->length()J

    move-result-wide v5

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    new-instance p0, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;

    const-string p1, "entityList size is not equal to cosList size"

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotUtils;->loadPilotParameter()V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->lenovoId:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->realmId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/LenovoId;->getSt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->pilotApi:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->realmId:Ljava/lang/String;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->lenovoId:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    invoke-interface {p0, v1}, Lcom/lenovo/leos/cloud/lcp/common/LenovoId;->getSt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->ensureLogin(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;

    const-string v0, "\u83b7\u53d6\u7684Lpsust\u4e3anull, \u8bf7\u68c0\u67e5\u662f\u5426\u767b\u5f55\u6216LenovoId\u7684Bug"

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public download(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;)I
    .locals 2
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

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->b()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->pilotApi:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->batchDownload(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;)V

    const-wide/16 p0, 0x64

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AppConfFileService"

    const-string p2, "InterruptedException"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return v0
.end method

.method public download(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/OutputPipe;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/OutputPipe<",
            "Ljava/io/Serializable;",
            ">;)",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->b()V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->pilotApi:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->download(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/OutputPipe;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;

    move-result-object p0

    return-object p0
.end method

.method public download(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/DownloadInputStreamProxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->b()V

    :try_start_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->pilotApi:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->download(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/DownloadInputStreamProxy;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw p0
.end method

.method public uploadToPilot(Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;Ljava/util/Map;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity<",
            "+",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            ")",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->uploadToPilot(Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;Ljava/util/Map;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;

    move-result-object p0

    return-object p0
.end method

.method public uploadToPilot(Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;Ljava/util/Map;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity<",
            "+",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport<",
            "Ljava/io/Serializable;",
            ">;)",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->b()V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;

    invoke-direct {v0, p1, p4}, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;-><init>(Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;)V

    invoke-virtual {v0, p3}, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->setProgressListener(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->pilotApi:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

    invoke-virtual {p0, v0, p2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->upload(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;Ljava/util/Map;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;

    move-result-object p0

    return-object p0
.end method

.method public uploadToPilot(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            ")",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->b()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    const-wide/16 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;

    invoke-interface {v4}, Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$a;

    invoke-direct {v0, v2, v3, p2}, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$a;-><init>(JLcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;

    invoke-direct {v3, v2}, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;-><init>(Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;)V

    invoke-virtual {v3, v0}, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->setProgressListener(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->pilotApi:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

    invoke-virtual {p2, v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->batchUpload(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const-wide/16 p1, 0x64

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "AppConfFileService"

    const-string v0, "InterruptedException"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-object p0

    :cond_3
    :goto_3
    return-object v0
.end method
