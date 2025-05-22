.class public Lcom/lenovo/leos/cloud/lcp/common/httpclient/ByteInputStreamBody;
.super Lorg/apache/http/entity/mime/content/InputStreamBody;
.source ""


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:[B

.field private c:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lorg/apache/http/entity/mime/content/InputStreamBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/ByteInputStreamBody;->a:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/ByteInputStreamBody;->b:[B

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/ByteInputStreamBody;->c:J

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/ByteInputStreamBody;->a:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 0

    const-string p0, "UTF-8"

    return-object p0
.end method

.method public getContentLength()J
    .locals 4

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/ByteInputStreamBody;->c:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    return-wide v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/ByteInputStreamBody;->a:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/ByteInputStreamBody;->b:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ByteInputStreamBody"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/ByteInputStreamBody;->b:[B

    if-nez v0, :cond_1

    invoke-super {p0}, Lorg/apache/http/entity/mime/content/InputStreamBody;->getContentLength()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    array-length v0, v0

    int-to-long v0, v0

    :goto_1
    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/ByteInputStreamBody;->c:J

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/ByteInputStreamBody;->b:[B

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/ByteInputStreamBody;->b:[B

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/ByteInputStreamBody;->b:[B

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    invoke-static {v0, p1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->fromTo(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "input stream can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "output stream can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
