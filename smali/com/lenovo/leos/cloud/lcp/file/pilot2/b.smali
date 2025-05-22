.class Lcom/lenovo/leos/cloud/lcp/file/pilot2/b;
.super Lcom/lenovo/leos/cloud/lcp/file/pilot2/a;
.source ""


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/a;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;)V

    return-void
.end method


# virtual methods
.method public beforeRequest(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/Exception;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/a;->beforeRequest(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/Exception;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "X-Lenovows-OSS-Callback-Enabled"

    const-string p2, "false"

    invoke-virtual {p1, p0, p2}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
