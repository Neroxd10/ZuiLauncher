.class public Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;->a:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public recordException(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public roll(Ljava/lang/Exception;)Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;->a:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    invoke-interface {v0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;->roll(Ljava/lang/Exception;)Ljava/net/URI;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public rollHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/Exception;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;->roll(Ljava/lang/Exception;)Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;->a:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    instance-of v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HostURIRoller;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HostURIRoller;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HostURIRoller;->getHostname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/StringUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HostURIRoller;->getHostname()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Host"

    invoke-virtual {p1, v0, p0}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRollerUtil;->setCurrentRolledUri(Ljava/net/URI;)V

    :cond_1
    return-void
.end method
