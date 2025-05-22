.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/query/AppCloudQueryAPI;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static e:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/query/AppCloudQueryAPI;


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

.field private b:Landroid/content/Context;

.field private c:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

.field private d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/lenovo/leos/cloud/lcp/common/LenovoId;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/query/AppCloudQueryAPI;->a:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/query/AppCloudQueryAPI;->d:Ljava/lang/ThreadLocal;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/query/AppCloudQueryAPI;->b:Landroid/content/Context;

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/query/AppCloudQueryAPI;->c:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupCheckResult;
    .locals 4

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/query/AppCloudQueryAPI;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getAppServer()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/query/AppCloudQueryAPI;->c:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    const-string v2, "v3/backupcheck"

    const-string v3, "contact.cloud.lps.lenovo.com"

    invoke-direct {p1, v0, v2, v1, v3}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/query/AppCloudQueryAPI;->a:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->getForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupCheckResult;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupCheckResult;-><init>()V

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupCheckResult;->parse(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;

    move-result-object p0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupCheckResult;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/query/AppCloudQueryAPI;
    .locals 3

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/query/AppCloudQueryAPI;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/query/AppCloudQueryAPI;->e:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/query/AppCloudQueryAPI;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init()Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    move-result-object v1

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/query/AppCloudQueryAPI;

    invoke-direct {v2, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/query/AppCloudQueryAPI;-><init>(Lcom/lenovo/leos/cloud/lcp/common/LenovoId;)V

    sput-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/query/AppCloudQueryAPI;->e:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/query/AppCloudQueryAPI;

    :cond_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/query/AppCloudQueryAPI;->e:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/query/AppCloudQueryAPI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public backupCheck()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupCheckResult;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/query/AppCloudQueryAPI;->backupCheck(Z)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupCheckResult;

    move-result-object p0

    return-object p0
.end method

.method public backupCheck(Z)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupCheckResult;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/query/AppCloudQueryAPI;->b:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppUtils;->localAppList(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->asJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v1, "applist"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "datalist"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppCloudQueryAPI"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/query/AppCloudQueryAPI;->a(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupCheckResult;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unexcepted JSONException occured"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getLastError()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/query/AppCloudQueryAPI;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method
