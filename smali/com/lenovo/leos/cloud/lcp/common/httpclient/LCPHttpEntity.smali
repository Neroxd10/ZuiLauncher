.class public Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpEntity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/http/HttpEntity;


# instance fields
.field private a:Lorg/apache/http/HttpEntity;

.field private b:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;Lorg/apache/http/HttpEntity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpEntity;->a:Lorg/apache/http/HttpEntity;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpEntity;->b:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpEntity;->a:Lorg/apache/http/HttpEntity;

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpEntity;->b:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter LCPHttpResponse and  HttpEntity  can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public consumeContent()V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpEntity;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpEntity;->b:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpEntity;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;-><init>(Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpEntity;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object p0

    return-object p0
.end method

.method public getContentLength()J
    .locals 2

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpEntity;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpEntity;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object p0

    return-object p0
.end method

.method public isChunked()Z
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpEntity;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result p0

    return p0
.end method

.method public isRepeatable()Z
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpEntity;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result p0

    return p0
.end method

.method public isStreaming()Z
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpEntity;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result p0

    return p0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpEntity;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {p0, p1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
