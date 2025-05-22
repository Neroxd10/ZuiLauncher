.class Lcom/lenovo/leos/cloud/lcp/file/pilot2/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;


# instance fields
.field protected final a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

.field protected volatile b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/a;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

    return-void
.end method


# virtual methods
.method public afterRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/HttpResponse;)V
    .locals 0

    return-void
.end method

.method public beforeRequest(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/Exception;)Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/a;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/a;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->getSessionId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/a;->b:Ljava/lang/String;

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    instance-of v1, p2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatusXXXException;

    const/16 v2, 0xc8

    if-eqz v1, :cond_1

    check-cast p2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatusXXXException;

    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatusXXXException;->getStatusCode()I

    move-result p2

    goto :goto_0

    :cond_1
    move p2, v2

    :goto_0
    const/16 v1, 0x191

    if-ne p2, v1, :cond_2

    const-string p2, "X-Lenovows-Authorization"

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/a;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->getSessionId(Z)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {p1, p2, p0}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    if-ne p2, v2, :cond_3

    const-string p2, "X-Lenovows-Authorization"

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/a;->b:Ljava/lang/String;
    :try_end_2
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :goto_2
    const/4 p0, 0x0

    return p0

    :cond_3
    return v0

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "CosOperator"

    const-string p2, "BaseRequestIntercepter AuthenticationException "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method
