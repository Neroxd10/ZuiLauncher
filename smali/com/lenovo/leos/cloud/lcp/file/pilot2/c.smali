.class Lcom/lenovo/leos/cloud/lcp/file/pilot2/c;
.super Lcom/lenovo/leos/cloud/lcp/file/pilot2/a;
.source ""


# instance fields
.field private c:J

.field private d:J

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;JJJ)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/a;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/c;->g:Z

    iput-wide p2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/c;->e:J

    iput-wide p4, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/c;->c:J

    add-long/2addr p4, p6

    const-wide/16 p1, 0x1

    sub-long/2addr p4, p1

    iput-wide p4, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/c;->d:J

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/c;->g:Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/c;->f:Ljava/lang/String;

    return-void
.end method

.method public beforeRequest(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/Exception;)Z
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/a;->beforeRequest(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/Exception;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/c;->f:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/c;->f:Ljava/lang/String;

    const-string v0, "Content-Type"

    invoke-virtual {p1, v0, p2}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/c;->h:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/c;->h:Ljava/lang/String;

    const-string v0, "X-Lenovows-UploadId"

    invoke-virtual {p1, v0, p2}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/c;->c:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/c;->d:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "X-Lenovows-Range"

    invoke-virtual {p1, v0, p2}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/c;->e:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v1, "X-Lenovows-Part-Number"

    invoke-virtual {p1, v1, p2}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/c;->g:Z

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string v2, "X-Lenovows-Commit"

    invoke-virtual {p1, v2, p2}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "header"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/c;->g:Z

    if-eqz p2, :cond_3

    const-string p2, "X-Lenovows-OSS-Callback-Enabled"

    const-string v0, "true"

    invoke-virtual {p1, p2, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/c;->e:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p2, "X-Lenovows-Part-Count"

    invoke-virtual {p1, p2, p0}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/c;->h:Ljava/lang/String;

    return-void
.end method
