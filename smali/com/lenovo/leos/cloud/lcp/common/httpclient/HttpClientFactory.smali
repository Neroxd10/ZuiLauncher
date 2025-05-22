.class public final Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpClientFactory;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpClientFactory$b;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String; = "LCP-SDK HttpClient Model"

.field private static b:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpClientFactory;->a:Ljava/lang/String;

    :cond_0
    const-string v0, "UserAgent"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;->newInstance(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;

    move-result-object p0

    sput-object p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpClientFactory;->b:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpClientFactory$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpClientFactory$b;-><init>(Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpClientFactory$a;)V

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    return-void
.end method

.method public static destroyHttpClient()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpClientFactory;->b:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpClientFactory;->b:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;->close()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpClientFactory;->b:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HttpClientFactory"

    const-string v2, "Unexcepted Exception in method destroyHttpClient"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpClientFactory;->getHttpClient(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static getHttpClient(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;
    .locals 3

    const-class v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpClientFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpClientFactory;->b:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil$ApkEnviroment;->getDevice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "appPkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil$ApkEnviroment;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "appVerName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil$ApkEnviroment;->getAppVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "netType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/ConnectivityUtil;->getNetwordTypeEnum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpClientFactory;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpClientFactory;->a(Ljava/lang/String;)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpClientFactory;->b:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
