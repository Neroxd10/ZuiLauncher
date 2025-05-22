.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/common/pilot/LeSyncPilotApi;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static d:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/pilot/LeSyncPilotApi;


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;

.field private b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/pilot/LeSyncPilotApi;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/pilot/LeSyncPilotApi;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/pilot/LeSyncPilotApi;->d:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/pilot/LeSyncPilotApi;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/pilot/LeSyncPilotApi;->c:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized a()V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "contact.cloud.lps.lenovo.com"

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getCachedST(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pilot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pilot lenovoId.getSt cost time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->devDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/pilot/LeSyncPilotApi;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/pilot/LeSyncPilotApi;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/pilot/LeSyncPilotApi;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotUtils;->loadPilotParameter()V

    const-string v3, "pilot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pilot loadPilotParameter cost time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->devDebug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;

    sget-object v4, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->DEFAULT:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-direct {v3, v4}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;)V

    iput-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/pilot/LeSyncPilotApi;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;

    const-string v4, "contact.cloud.lps.lenovo.com"

    invoke-virtual {v3, v4, v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->getOperatorByLpsust(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/pilot/LeSyncPilotApi;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->setWriteThreadCount(I)V

    iput-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/pilot/LeSyncPilotApi;->c:Ljava/lang/String;

    :cond_1
    const-string v2, "pilot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pilot preparePilot total cost time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->devDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getIntance()Lcom/lenovo/leos/cloud/lcp/sync/modules/common/pilot/LeSyncPilotApi;
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/pilot/LeSyncPilotApi;->d:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/pilot/LeSyncPilotApi;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized createPilotApi(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/pilot/LeSyncPilotApi;->a()V

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->getInstance(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

    move-result-object p1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/pilot/LeSyncPilotApi;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/pilot/LeSyncPilotApi;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->ensureLogin(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized init()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/pilot/LeSyncPilotApi;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/pilot/LeSyncPilotApi;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/pilot/LeSyncPilotApi;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
