.class public Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

.field private volatile c:Ljava/lang/String;

.field private d:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->d:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->d:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->c:Ljava/lang/String;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "developer_kid"

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->getDeveloperKid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "developer_key"

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->getDeveloperKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "connector"

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexcepted JSONException occured !"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public getConnectorId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->getSessionId(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getSessionId(Z)Ljava/lang/String;
    .locals 6

    const-string v0, "Unexcepted IOException occurs"

    const-string v1, "Connector"

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->c:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->d:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->sessionURIRoller()Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v3, v4, v2, v5}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->post(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    const-string v2, "Location"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->recycleHttpResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p0

    :cond_1
    :try_start_2
    new-instance p0, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;

    const-string v2, "Server don\'t resturn session info, can\'t find \"Location\" header!"

    invoke-direct {p0, v2}, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    :try_start_3
    const-string v2, "getSessionId failed, IOException "

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->recycleHttpResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    new-instance p1, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;

    invoke-direct {p1, p0}, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :goto_2
    :try_start_5
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->recycleHttpResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    throw p0
.end method

.method protected sessionURIRoller()Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .locals 2

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->getAirURIRoller()Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object p0

    const-string v1, "/v1/app/session"

    invoke-direct {v0, p0, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;-><init>(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;)V

    return-object v0
.end method
