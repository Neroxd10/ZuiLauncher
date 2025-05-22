.class public Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;
.super Ljava/io/InputStream;
.source ""


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->a:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->b:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;

    const-string v0, "releaseTrigger"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->c:Ljava/lang/String;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->a:Ljava/io/InputStream;

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->b:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter LCPHttpResponse and  InputStream  can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->getHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->isAborted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->b(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/impl/conn/AbstractClientConnAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->releaseConnection()V

    :cond_0
    new-instance p2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpAbortException;

    invoke-direct {p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpAbortException;-><init>()V

    :cond_1
    return-object p2
.end method

.method private b(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/impl/conn/AbstractClientConnAdapter;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->c:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/ReflectUtil;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public available()I
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    return p0
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public mark(I)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result p0

    return p0
.end method

.method public read()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->b:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;

    invoke-direct {p0, v1, v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->a(Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public read([B)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->b:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->a(Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public read([BII)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->b:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;

    invoke-direct {p0, p2, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->a(Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    return-void
.end method

.method public skip(J)J
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p0

    return-wide p0
.end method
