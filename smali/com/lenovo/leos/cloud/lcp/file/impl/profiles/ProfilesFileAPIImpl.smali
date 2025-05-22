.class public final Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;
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


# static fields
.field private static e:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl<",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity<",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/CancelEntity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

.field private c:Ljava/lang/String;

.field protected context:Landroid/content/Context;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V
    .locals 1

    const-string v0, "appconfig"

    invoke-direct {p0, p2, p3, v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;-><init>(Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->d:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->a:Ljava/util/Map;

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->b:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->c:Ljava/lang/String;

    return-void
.end method

.method private a(J)V
    .locals 1

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->turnOnRequest(J)V

    return-void
.end method

.method static synthetic b(Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->l(J)V

    return-void
.end method

.method private c(Lcom/lenovo/leos/cloud/lcp/file/impl/CancelEntity;)V
    .locals 0

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/file/impl/CancelEntity;->getPilotFuture()Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method private d(Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;)V
    .locals 0

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->get()Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;->isOK()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;->getExceptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Exception;

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private e(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .locals 6

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->d:I

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutSupportListener;

    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->d:I

    int-to-long v3, v3

    new-instance v5, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl$a;

    invoke-direct {v5, p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl$a;-><init>(Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;J)V

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutSupportListener;-><init>(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;JLcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard$TimeoutCallBackListener;)V

    return-object v2

    :cond_0
    return-object p1
.end method

.method private f(J)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lenovo/leos/cloud/lcp/file/impl/CancelEntity;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/file/impl/CancelEntity;->isCancel()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;

    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->b:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->c:Ljava/lang/String;

    invoke-direct {p1, p2, p0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;-><init>(Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V

    return-object p1

    :cond_0
    new-instance p0, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw p0
.end method

.method private declared-synchronized g()J
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/file/impl/CancelEntity;

    invoke-direct {v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/CancelEntity;-><init>()V

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->a:Ljava/util/Map;

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

.method public static declared-synchronized getInstance()Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl<",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity<",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;",
            ">;>;"
        }
    .end annotation

    const-class v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->e:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->e:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "It\'s first getIntance, call method: getInstance( Context, String, String )"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl<",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity<",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init()Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    move-result-object v0

    const-string v1, "contact.cloud.lps.lenovo.com"

    const-class v2, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->e:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;

    if-nez v3, :cond_0

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;

    invoke-direct {v3, p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V

    sput-object v3, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->e:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotUtils;->initLenovoTrackService()V

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->e:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private h(Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/a;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/a;->c()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private i(Ljava/lang/String;JLcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;",
            "TT;)I"
        }
    .end annotation

    invoke-interface {p6}, Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;->getMetaInfo()Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;

    move-result-object v0

    instance-of v0, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-interface {p6}, Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;->getMetaInfo()Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;

    invoke-interface {p6}, Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p5, p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;->updateMetaInfo(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;Z)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/a;->c()I

    move-result p1

    if-eqz v1, :cond_2

    invoke-direct {p0, v8}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->h(Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v2, p0

    move-wide v3, p2

    move-object v5, p5

    move-object v6, p4

    move-object v7, p6

    invoke-direct/range {v2 .. v8}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->n(JLcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/a;)I

    move-result p1

    :cond_2
    return p1
.end method

.method private j(JLcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            "TT;)I"
        }
    .end annotation

    invoke-interface {p5}, Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;->getMetaInfo()Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;

    move-result-object v0

    instance-of v0, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-interface {p5}, Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;->getMetaInfo()Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;

    invoke-interface {p5}, Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p3, v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;->uploadMetaInfo(Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;Z)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/a;->c()I

    move-result v0

    if-eqz v1, :cond_2

    invoke-direct {p0, v8}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->h(Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/a;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->n(JLcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/a;)I

    move-result v0

    :cond_2
    return v0
.end method

.method private k(JLcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;",
            "TT;)I"
        }
    .end annotation

    const-string v0, "V1_PROFILES_UPLOAD_BREAKPOINT_DEFAULT_FINISH"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    move-object v4, p0

    move-wide v5, p1

    move-object v7, p4

    move-object v8, p3

    move-object v9, p5

    :try_start_0
    invoke-direct/range {v4 .. v9}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->j(JLcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v1

    invoke-direct {p0, v0, v3, p2, p3}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->m(Ljava/lang/String;IJ)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/file/impl/FileResultCodeUtil;->parseResultCode(Ljava/lang/Exception;)I

    move-result p2

    const-string p3, "ProfilesFileAPIImpl"

    const-string p4, "Unexcepted Exception"

    invoke-static {p3, p4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/resultCode/ResultCodeUtil;->parseResultCode(Ljava/lang/Exception;)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sub-long/2addr p3, v1

    invoke-direct {p0, v0, p1, p3, p4}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->m(Ljava/lang/String;IJ)V

    move p1, p2

    :goto_0
    return p1

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v1

    invoke-direct {p0, v0, v3, p2, p3}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->m(Ljava/lang/String;IJ)V

    throw p1
.end method

.method private l(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->cancel(J)V

    return-void
.end method

.method private m(Ljava/lang/String;IJ)V
    .locals 0

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/TrackUtil;->buildDefaultTrackType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init()Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getTrackService()Lcom/lenovo/leos/cloud/lcp/common/track/TrackService;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    long-to-int p3, p3

    const/4 p4, 0x1

    invoke-interface {p1, p0, p2, p3, p4}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackService;->trackEvent(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method private n(JLcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            "TT;",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/a;",
            ")I"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p6}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/a;->b()I

    move-result p6

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p6

    const-string v1, "callback_dataId"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, p5, v0, p4}, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->uploadToPilot(Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;Ljava/util/Map;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->initCancelPilot(JLcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;)V

    invoke-direct {p0, p3}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->d(Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public batchDownload(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;)I
    .locals 0
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

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public batchUpload(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Ljava/util/List;)Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            "Ljava/util/List<",
            "TT;>;)",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public declared-synchronized cancel(J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->a:Ljava/util/Map;

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

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->c(Lcom/lenovo/leos/cloud/lcp/file/impl/CancelEntity;)V

    invoke-static {p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->turnOffRequest(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "ProfilesFileAPIImpl"

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
    .locals 14
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

    const-string v2, "V1_PROFILES_DOWNLOAD_BREAKPOINT_DEFAULT_FINISH"

    new-instance v0, Ljava/io/File;

    move-object/from16 v7, p4

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->start:J

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->g()J

    move-result-wide v10

    new-instance v12, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl$ProxyUploadListener;

    move-object/from16 v0, p5

    invoke-direct {v12, p0, v10, v11, v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl$ProxyUploadListener;-><init>(Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;JLcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V

    const/4 v13, 0x0

    :try_start_0
    invoke-virtual {p0, v12, v10, v11}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->notifyStart(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;J)V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;

    move-object v3, v0

    move-object v4, p1

    move-wide/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p6

    move-object v9, v12

    invoke-direct/range {v3 .. v9}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;-><init>(Ljava/lang/String;JLjava/lang/String;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V

    iget-object v3, v1, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->pilotSupport:Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;

    invoke-virtual {v3, v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->download(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/OutputPipe;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;

    move-result-object v0

    invoke-virtual {p0, v10, v11, v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->initCancelPilot(JLcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;)V

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->get()Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;->isOK()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;->getExceptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    instance-of v3, v0, Ljava/util/concurrent/ExecutionException;

    if-eqz v3, :cond_1

    check-cast v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    :cond_1
    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    throw v0

    :cond_3
    :goto_0
    const/16 v0, 0x64

    invoke-virtual {p0, v12, v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->notifySubProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;I)V

    invoke-virtual {p0, v12, v0, v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->notifyProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v12, v13, v10, v11}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v1, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->start:J

    sub-long/2addr v3, v5

    invoke-direct {p0, v2, v13, v3, v4}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->m(Ljava/lang/String;IJ)V

    return v13

    :catchall_0
    move-exception v0

    move v3, v13

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/FileResultCodeUtil;->parseResultCode(Ljava/lang/Exception;)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v4, "ProfilesFileAPIImpl"

    const-string v5, "Unexcepted Exception"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/resultCode/ResultCodeUtil;->parseResultCode(Ljava/lang/Exception;)I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p0, v12, v3, v10, v11}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->start:J

    sub-long/2addr v4, v6

    invoke-direct {p0, v2, v0, v4, v5}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->m(Ljava/lang/String;IJ)V

    return v3

    :catchall_1
    move-exception v0

    :goto_1
    invoke-virtual {p0, v12, v3, v10, v11}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v1, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->start:J

    sub-long/2addr v3, v5

    invoke-direct {p0, v2, v13, v3, v4}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->m(Ljava/lang/String;IJ)V

    throw v0
.end method

.method public download2Proxy(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/DownloadInputStreamProxy;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)I
    .locals 7

    const-string v0, "V1_PROFILES_DOWNLOAD_BREAKPOINT_DEFAULT_FINISH"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->start:J

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->g()J

    move-result-wide v1

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl$ProxyUploadListener;

    invoke-direct {v3, p0, v1, v2, p2}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl$ProxyUploadListener;-><init>(Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;JLcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p0, v3, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->notifyStart(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;J)V

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->pilotSupport:Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;

    invoke-virtual {v4, p1}, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->download(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/DownloadInputStreamProxy;)V

    const/16 p1, 0x64

    invoke-virtual {p0, v3, p1}, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->notifySubProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;I)V

    invoke-virtual {p0, v3, p1, p1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->notifyProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v3, p2, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->start:J

    sub-long/2addr v1, v3

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->m(Ljava/lang/String;IJ)V

    return p2

    :catchall_0
    move-exception p1

    move v4, p2

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/file/impl/FileResultCodeUtil;->parseResultCode(Ljava/lang/Exception;)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v5, "ProfilesFileAPIImpl"

    const-string v6, "Unexcepted Exception"

    invoke-static {v5, v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/resultCode/ResultCodeUtil;->parseResultCode(Ljava/lang/Exception;)I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->start:J

    sub-long/2addr v1, v5

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->m(Ljava/lang/String;IJ)V

    return v4

    :catchall_1
    move-exception p1

    :goto_0
    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->start:J

    sub-long/2addr v1, v3

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->m(Ljava/lang/String;IJ)V

    throw p1
.end method

.method protected initCancelPilot(JLcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;)V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/file/impl/CancelEntity;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/impl/CancelEntity;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/CancelEntity;-><init>()V

    :cond_0
    invoke-virtual {v0, p3}, Lcom/lenovo/leos/cloud/lcp/file/impl/CancelEntity;->setPilotFuture(Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;)V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V
    .locals 2

    const/16 v0, 0x64

    :try_start_0
    invoke-virtual {p0, p1, v0, v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->notifyProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;II)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onFinish(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p3, p4}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->a(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0, p3, p4}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->a(J)V

    throw p1
.end method

.method protected notifyProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;II)V
    .locals 6

    int-to-long v1, p2

    int-to-long v3, p3

    const/4 v5, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onProgress(JJLandroid/os/Bundle;)V

    return-void
.end method

.method protected notifyStart(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;J)V
    .locals 1

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "taskId"

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-interface {p1, p0}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onStart(Landroid/os/Bundle;)V

    return-void
.end method

.method public setDefaulTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->d:I

    return-void
.end method

.method public updateById(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            "TT;)I"
        }
    .end annotation

    const-string v0, "V1_PROFILES_UPDATEBYID_DEFAULT_FINISH"

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->g()J

    move-result-wide v8

    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->e(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    move-result-object p2

    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {p0, p2, v8, v9}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->notifyStart(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;J)V

    invoke-direct {p0, v8, v9}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->f(J)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, v8

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->i(Ljava/lang/String;JLcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p2, p1, v8, v9}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->start:J

    sub-long/2addr p2, v1

    invoke-direct {p0, v0, v10, p2, p3}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->m(Ljava/lang/String;IJ)V

    goto :goto_0

    :catchall_0
    move-exception p1

    move p3, v10

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/file/impl/FileResultCodeUtil;->parseResultCode(Ljava/lang/Exception;)I

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v1, "ProfilesFileAPIImpl"

    const-string v2, "updateById Exception"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/resultCode/ResultCodeUtil;->parseResultCode(Ljava/lang/Exception;)I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p0, p2, p3, v8, v9}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->start:J

    sub-long/2addr v1, v3

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->m(Ljava/lang/String;IJ)V

    move p1, p3

    :goto_0
    return p1

    :catchall_1
    move-exception p1

    :goto_1
    invoke-virtual {p0, p2, p3, v8, v9}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/AbsFileAPIImpl;->start:J

    sub-long/2addr p2, v1

    invoke-direct {p0, v0, v10, p2, p3}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->m(Ljava/lang/String;IJ)V

    throw p1
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

    invoke-virtual {p0, p1, p2, v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->upload(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;)I

    move-result p0

    return p0
.end method

.method public upload(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;)I
    .locals 8
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

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->g()J

    move-result-wide v6

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->e(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0, p1, v6, v7}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->notifyStart(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;J)V

    invoke-direct {p0, v6, v7}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->f(J)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;

    move-result-object v4

    move-object v0, p0

    move-wide v1, v6

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->k(JLcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;)I

    move-result p2
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, v6, v7}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    throw p2

    :catch_0
    const/4 p2, 0x4

    :goto_0
    invoke-virtual {p0, p1, p2, v6, v7}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    return p2
.end method
