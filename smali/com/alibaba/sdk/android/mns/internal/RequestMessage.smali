.class public Lcom/alibaba/sdk/android/mns/internal/RequestMessage;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/net/URI;

.field private b:Ljava/lang/String;

.field private c:Lcom/alibaba/sdk/android/common/HttpMethod;

.field private d:Z

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;

.field private k:Lcom/alibaba/sdk/android/common/auth/CredentialProvider;

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->d:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->e:Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->f:Ljava/util/Map;

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->l:Z

    return-void
.end method


# virtual methods
.method public addHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->e:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public buildCanonicalURL()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->a:Ljava/net/URI;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Endpoint haven\'t been set!"

    invoke-static {v0, v2}, Lcom/alibaba/sdk/android/mns/common/MNSUtils;->assertTrue(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->a:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->a:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->l:Z

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/alibaba/sdk/android/common/utils/HttpdnsMini;->getInstance()Lcom/alibaba/sdk/android/common/utils/HttpdnsMini;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alibaba/sdk/android/common/utils/HttpdnsMini;->getIpByHostAsync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v4, "[buildCannonicalURL] - proxy exist, disable httpdns"

    invoke-static {v4}, Lcom/alibaba/sdk/android/mns/common/MNSLog;->logD(Ljava/lang/String;)V

    :goto_1
    if-nez v3, :cond_2

    move-object v3, v2

    :cond_2
    iget-object v4, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->e:Ljava/util/Map;

    const-string v5, "Host"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/alibaba/sdk/android/mns/internal/RequestMessage$a;->a:[I

    iget-object v3, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->j:Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-string v3, "/queues/"

    if-eq v2, v1, :cond_4

    const/4 v1, 0x2

    if-eq v2, v1, :cond_3

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/messages"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->i:Ljava/lang/String;

    move-object v0, v1

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->b:Ljava/lang/String;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->i:Ljava/lang/String;

    goto :goto_3

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/queues"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :goto_3
    iget-object v1, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->f:Ljava/util/Map;

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/mns/common/MNSUtils;->paramToQueryString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/mns/common/MNSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v0

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->i:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getContentLength()J
    .locals 2

    iget-wide v0, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->h:J

    return-wide v0
.end method

.method public getCredentialProvider()Lcom/alibaba/sdk/android/common/auth/CredentialProvider;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->k:Lcom/alibaba/sdk/android/common/auth/CredentialProvider;

    return-object p0
.end method

.method public getEndpoint()Ljava/net/URI;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->a:Ljava/net/URI;

    return-object p0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->e:Ljava/util/Map;

    return-object p0
.end method

.method public getMethod()Lcom/alibaba/sdk/android/common/HttpMethod;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->c:Lcom/alibaba/sdk/android/common/HttpMethod;

    return-object p0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->f:Ljava/util/Map;

    return-object p0
.end method

.method public getQueueName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->i:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->j:Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;

    return-object p0
.end method

.method public isAuthorizationRequired()Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->d:Z

    return p0
.end method

.method public isHttpdnsEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->l:Z

    return p0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->g:Ljava/lang/String;

    return-void
.end method

.method public setCredentialProvider(Lcom/alibaba/sdk/android/common/auth/CredentialProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->k:Lcom/alibaba/sdk/android/common/auth/CredentialProvider;

    return-void
.end method

.method public setEndpoint(Ljava/net/URI;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->a:Ljava/net/URI;

    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->e:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public setIsAuthorizationRequired(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->d:Z

    return-void
.end method

.method public setIsHttpdnsEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->l:Z

    return-void
.end method

.method public setMethod(Lcom/alibaba/sdk/android/common/HttpMethod;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->c:Lcom/alibaba/sdk/android/common/HttpMethod;

    return-void
.end method

.method public setParameters(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->f:Ljava/util/Map;

    return-void
.end method

.method public setQueueName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->b:Ljava/lang/String;

    return-void
.end method

.method public setResourcePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->i:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/internal/RequestMessage;->j:Lcom/alibaba/sdk/android/mns/common/MNSConstants$MNSType;

    return-void
.end method
