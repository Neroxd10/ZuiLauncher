.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/PosterDownloadRun;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final KEY_STORE_ID:Ljava/lang/String; = "lenovo:channel"

.field public static final REQUEST_BEGIN_TIME:Ljava/lang/String; = "request_begin_time"

.field private static d:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/PosterDownloadRun; = null

.field public static final mainPhotoIntervalTime:J = 0x2932e00L


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

.field private c:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/PosterDownloadRun;->a:Landroid/content/Context;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/PosterDownloadRun;->b:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/PosterDownloadRun;->c:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method private a()Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/PosterDownloadRun;->b(Lorg/json/JSONObject;)Z

    move-result p0

    return p0
.end method

.method private b(Lorg/json/JSONObject;)Z
    .locals 1

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/PosterDownloadRun;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/AutoTaskService;->getInstance(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/ConfigBaseService;

    move-result-object p0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/ConfigBaseService;->resolveJson(Lorg/json/JSONObject;)V

    const-string p1, "PosterDownloadTask"

    const-string v0, "\u670d\u52a1\u5668\u81ea\u52a8\u5907\u4efd\u914d\u7f6e\u5df2\u6210\u529f\u4fdd\u5b58"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/ConfigBaseService;->checkAndstart()Z

    move-result p0

    return p0
.end method

.method private c()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getActivitiesServer()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "v1/syncserverconfig"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/PosterDownloadRun;->b:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->getForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f53\u524d\u670d\u52a1\u5668\u81ea\u52a8\u5907\u4efd\u914d\u7f6e\u4e3a\uff1a"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PosterDownloadTask"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private d()Z
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/PosterDownloadRun;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/PosterDownloadRun;->fetchServerConfig()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/PosterDownloadRun;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/PosterDownloadRun;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :goto_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/PosterDownloadRun;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_0
    const-string p0, "PosterDownloadTask"

    const-string v0, "\u83b7\u53d6\u9501\u5931\u8d25\uff0c\u4e0a\u6b21\u89e6\u53d1\u83b7\u53d6\u670d\u52a1\u5668\u914d\u7f6e\u7ebf\u7a0b\u572830s\u5185\u90fd\u8fd8\u6ca1\u6709\u7ed3\u675f"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/PosterDownloadRun;
    .locals 1

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/PosterDownloadRun;->d:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/PosterDownloadRun;

    if-nez p0, :cond_0

    const-class p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/PosterDownloadRun;

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/PosterDownloadRun;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/PosterDownloadRun;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/PosterDownloadRun;->d:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/PosterDownloadRun;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/PosterDownloadRun;->d:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/PosterDownloadRun;

    return-object p0
.end method


# virtual methods
.method public fetchServerConfig()Z
    .locals 2

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/NetWorkUtil;->isServerReachable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/PosterDownloadRun;->c()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/PosterDownloadRun;->b(Lorg/json/JSONObject;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p0, "request_begin_time"

    invoke-static {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveLong(Ljava/lang/String;J)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public start()Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "request_begin_time"

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2932e00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const-string v0, "PosterDownloadTask"

    const-string v1, "\u7b2c\u4e00\u6b21\u8fdb\u5165\u6216\u8d85\u8fc712\u5c0f\u65f6\uff0c\u91cd\u65b0\u83b7\u53d6\u670d\u52a1\u5668\u81ea\u52a8\u5907\u4efd\u914d\u7f6e"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/PosterDownloadRun;->d()Z

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/config/PosterDownloadRun;->a()Z

    move-result p0

    return p0
.end method
