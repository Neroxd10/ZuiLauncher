.class public Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/v1/app/connector"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->c:Ljava/util/Map;

    :try_start_0
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->clone()Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Authenticator"

    const-string v2, "Config CloneNotSupportedException, set itself"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;
    .locals 3

    const-string v0, "Authenticator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-direct {p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->connectorURIRoller()Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v2

    invoke-virtual {p2, v2, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Login by lpsust failed, IOException "

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw p0

    :catch_1
    move-exception p0

    const-string p1, "Login by lpsust failed, server return wrong format content!"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "connector"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "session"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-direct {v1, v2, p1, v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->c:Ljava/util/Map;

    invoke-interface {p0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "developer_kid"

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->getDeveloperKid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "developer_key"

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->getDeveloperKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app_id"

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app_spec_shape"

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->getAppSpecShape()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "user_credential"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lenovo_id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "workspace"

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->getWorkspace()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexcepted JSONException occured !"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method protected connectorURIRoller()Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .locals 2

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->getAirURIRoller()Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v1

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->a:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;-><init>(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;)V

    return-object v0
.end method

.method public getConfig()Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    return-object p0
.end method

.method public getOperatorByLpsust(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

    move-result-object p1

    new-instance p2, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-direct {p2, p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;)V

    return-object p2
.end method

.method public setConfig(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;)V
    .locals 3

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-virtual {p1, v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->clone()Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Authenticator"

    const-string v2, "Config CloneNotSupportedException, set itself"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    :cond_0
    :goto_0
    return-void
.end method
