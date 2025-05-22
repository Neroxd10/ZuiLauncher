.class public Lcom/lenovo/leos/cloud/lcp/common/httpclient/HostURIRoller;
.super Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;
.source ""


# static fields
.field private static final serialVersionUID:J = -0x47b05d800f78491dL


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;-><init>([Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HostURIRoller;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HostURIRoller;->b()V

    return-void
.end method

.method public varargs constructor <init>([Ljava/net/URI;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;-><init>([Ljava/net/URI;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HostURIRoller;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HostURIRoller;->b()V

    return-void
.end method

.method private b()V
    .locals 5

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->uriArray:[Ljava/net/URI;

    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/StringUtil;->isIP(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iput-object v3, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HostURIRoller;->a:Ljava/lang/String;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public getHostname()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HostURIRoller;->a:Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized rollHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/Exception;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->roll(Ljava/lang/Exception;)Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HostURIRoller;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/StringUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Host"

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HostURIRoller;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRollerUtil;->setCurrentRolledUri(Ljava/net/URI;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method
