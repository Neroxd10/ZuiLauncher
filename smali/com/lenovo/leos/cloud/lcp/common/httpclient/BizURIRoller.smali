.class public Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
.super Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;
.source ""


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;-><init>([Ljava/lang/String;)V

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V
    .locals 1

    invoke-interface {p3, p4}, Lcom/lenovo/leos/cloud/lcp/common/LenovoId;->getSt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;->d:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    iput-object p4, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;->b:Ljava/lang/String;

    return-void
.end method

.method private b(Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/StringUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LenovoAuth LPSUST=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Authorization"

    invoke-virtual {p1, v1, p0}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "X-Lenovows-Authorization"

    invoke-virtual {p1, v0, p0}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public roll(Ljava/lang/Exception;)Ljava/net/URI;
    .locals 3

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;->d:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    if-eqz v0, :cond_0

    instance-of v1, p1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus401Exception;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;->e:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/LenovoId;->getSt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;->b:Ljava/lang/String;

    :cond_0
    invoke-super {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->roll(Ljava/lang/Exception;)Ljava/net/URI;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;->c:Z

    if-eqz v0, :cond_2

    const-string v0, "http:"

    const-string v1, "https:"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized rollHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/Exception;)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;->roll(Ljava/lang/Exception;)Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V

    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRollerUtil;->setCurrentRolledUri(Ljava/net/URI;)V

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;->b(Lorg/apache/http/client/methods/HttpRequestBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setSsl(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
