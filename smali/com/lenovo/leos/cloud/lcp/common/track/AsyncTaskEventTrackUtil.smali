.class public Lcom/lenovo/leos/cloud/lcp/common/track/AsyncTaskEventTrackUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lcom/lenovo/leos/cloud/lcp/common/track/NetworkTrackInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()I
    .locals 10

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x1f4

    const/16 v3, 0x2710

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    new-instance v6, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;

    const-string v7, "http://app.lenovo.com/"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v6, v3}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->get(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;I)Lorg/apache/http/HttpResponse;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncTaskEventTrackUtil;->f(Lorg/apache/http/HttpResponse;I)[B

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v5

    goto :goto_0

    :catch_0
    move-exception v6

    invoke-static {v6}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    move-object v6, v1

    move v7, v4

    :goto_0
    shl-int/2addr v7, v5

    :try_start_1
    new-instance v8, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;

    const-string v9, "http://www.baidu.com"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v8, v3}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->get(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;I)Lorg/apache/http/HttpResponse;

    move-result-object v8

    invoke-static {v8, v2}, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncTaskEventTrackUtil;->f(Lorg/apache/http/HttpResponse;I)[B

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catch_1
    move-exception v8

    invoke-static {v8}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    :goto_1
    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    invoke-static {v6, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    return v4

    :cond_0
    if-lez v7, :cond_1

    :try_start_2
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;

    const-string v6, "http://pimapi.lenovomm.com/pimapi/checknetwork"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->get(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;I)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncTaskEventTrackUtil;->f(Lorg/apache/http/HttpResponse;I)[B
    :try_end_2
    .catch Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus40XException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    :goto_2
    move v4, v5

    :goto_3
    shl-int/lit8 v0, v4, 0x2

    add-int/2addr v7, v0

    :cond_1
    return v7
.end method

.method protected static addNetwordErrorParam(Lcom/lenovo/lps/reaper/sdk/api/ParamMap;Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;)Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    .locals 4

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncTaskEventTrackUtil;->d()Lcom/lenovo/leos/cloud/lcp/common/track/NetworkTrackInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/track/NetworkTrackInfo;->getStatus()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "networkStatus"

    invoke-virtual {p0, v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncTaskEventTrackUtil;->d()Lcom/lenovo/leos/cloud/lcp/common/track/NetworkTrackInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/track/NetworkTrackInfo;->getType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    const-string v3, "networkType"

    invoke-virtual {p0, v1, v3, v0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;->getUrlStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;->getRootCauseMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x5

    const-string v1, "failedUrl"

    invoke-virtual {p0, v0, v1, p1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0, v1, p1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->putExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncTaskEventTrackUtil;->d()Lcom/lenovo/leos/cloud/lcp/common/track/NetworkTrackInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/common/track/NetworkTrackInfo;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->putExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncTaskEventTrackUtil;->d()Lcom/lenovo/leos/cloud/lcp/common/track/NetworkTrackInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/common/track/NetworkTrackInfo;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->putExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method private static b()I
    .locals 4

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v1, v3

    :cond_1
    shl-int/2addr v1, v3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    return v1
.end method

.method private static c(Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncTaskEventTrackUtil$a;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncTaskEventTrackUtil$a;-><init>(Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;)V

    return-object v0
.end method

.method protected static checkNetwork(Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;)V
    .locals 1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncTaskEventTrackUtil;->b()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncTaskEventTrackUtil;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncTaskEventTrackUtil;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static d()Lcom/lenovo/leos/cloud/lcp/common/track/NetworkTrackInfo;
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncTaskEventTrackUtil;->a:Lcom/lenovo/leos/cloud/lcp/common/track/NetworkTrackInfo;

    return-object v0
.end method

.method private static e(Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;
    .locals 0

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    invoke-static {p0}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private static f(Lorg/apache/http/HttpResponse;I)[B
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncTaskEventTrackUtil;->e(Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p0, p1, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->readBytes(Ljava/io/InputStream;IZ)[B

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array v0, v2, [Ljava/io/Closeable;

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object p0, v0

    :goto_0
    :try_start_2
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-array p1, v2, [Ljava/io/Closeable;

    aput-object p0, p1, v1

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    return-object v0

    :goto_1
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v0, p0, v1

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    throw p1
.end method

.method private static declared-synchronized g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncTaskEventTrackUtil;

    monitor-enter v0

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/track/NetworkTrackInfo;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/track/NetworkTrackInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncTaskEventTrackUtil;->a:Lcom/lenovo/leos/cloud/lcp/common/track/NetworkTrackInfo;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method protected static isNeedCheck(Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;)Z
    .locals 5

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncTaskEventTrackUtil;->d()Lcom/lenovo/leos/cloud/lcp/common/track/NetworkTrackInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/track/NetworkTrackInfo;->getTime()J

    move-result-wide v3

    cmp-long p0, v1, v3

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static track(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackThreadPoolExecutor;->getInstance()Lcom/lenovo/leos/cloud/lcp/common/track/TrackThreadPoolExecutor;

    move-result-object v0

    new-instance v8, Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/lenovo/leos/cloud/lcp/common/track/AsyncTaskEventTrackUtil;->c(Lcom/lenovo/leos/cloud/lcp/common/track/TaskEventTrackInfo;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
