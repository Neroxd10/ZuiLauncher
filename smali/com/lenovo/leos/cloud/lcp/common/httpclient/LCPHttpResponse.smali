.class public Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/http/HttpResponse;


# instance fields
.field private a:Lorg/apache/http/HttpResponse;

.field private b:Lorg/apache/http/client/methods/HttpRequestBase;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->a:Lorg/apache/http/HttpResponse;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->b:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz p1, :cond_0

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->b:Lorg/apache/http/client/methods/HttpRequestBase;

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->a:Lorg/apache/http/HttpResponse;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter \'HttpResponse delegate\' can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1, p2}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addHeader(Lorg/apache/http/Header;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1}, Lorg/apache/http/HttpResponse;->addHeader(Lorg/apache/http/Header;)V

    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getAllHeaders()[Lorg/apache/http/Header;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object p0

    return-object p0
.end method

.method public getEntity()Lorg/apache/http/HttpEntity;
    .locals 2

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpEntity;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpEntity;-><init>(Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;Lorg/apache/http/HttpEntity;)V

    return-object v0
.end method

.method public getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p0

    return-object p0
.end method

.method public getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object p0

    return-object p0
.end method

.method public getHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->b:Lorg/apache/http/client/methods/HttpRequestBase;

    return-object p0
.end method

.method public getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p0

    return-object p0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getLocale()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p0

    return-object p0
.end method

.method public getProtocolVersion()Lorg/apache/http/ProtocolVersion;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object p0

    return-object p0
.end method

.method public getStatusLine()Lorg/apache/http/StatusLine;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p0

    return-object p0
.end method

.method public headerIterator()Lorg/apache/http/HeaderIterator;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->headerIterator()Lorg/apache/http/HeaderIterator;

    move-result-object p0

    return-object p0
.end method

.method public headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object p0

    return-object p0
.end method

.method public removeHeader(Lorg/apache/http/Header;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1}, Lorg/apache/http/HttpResponse;->removeHeader(Lorg/apache/http/Header;)V

    return-void
.end method

.method public removeHeaders(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1}, Lorg/apache/http/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    return-void
.end method

.method public setEntity(Lorg/apache/http/HttpEntity;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1, p2}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHeader(Lorg/apache/http/Header;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1}, Lorg/apache/http/HttpResponse;->setHeader(Lorg/apache/http/Header;)V

    return-void
.end method

.method public setHeaders([Lorg/apache/http/Header;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1}, Lorg/apache/http/HttpResponse;->setHeaders([Lorg/apache/http/Header;)V

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1}, Lorg/apache/http/HttpResponse;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setParams(Lorg/apache/http/params/HttpParams;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1}, Lorg/apache/http/HttpResponse;->setParams(Lorg/apache/http/params/HttpParams;)V

    return-void
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1}, Lorg/apache/http/HttpResponse;->setReasonPhrase(Ljava/lang/String;)V

    return-void
.end method

.method public setStatusCode(I)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    return-void
.end method

.method public setStatusLine(Lorg/apache/http/ProtocolVersion;I)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1, p2}, Lorg/apache/http/HttpResponse;->setStatusLine(Lorg/apache/http/ProtocolVersion;I)V

    return-void
.end method

.method public setStatusLine(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1, p2, p3}, Lorg/apache/http/HttpResponse;->setStatusLine(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    return-void
.end method

.method public setStatusLine(Lorg/apache/http/StatusLine;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1}, Lorg/apache/http/HttpResponse;->setStatusLine(Lorg/apache/http/StatusLine;)V

    return-void
.end method
