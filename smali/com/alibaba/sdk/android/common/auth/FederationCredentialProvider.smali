.class public abstract Lcom/alibaba/sdk/android/common/auth/FederationCredentialProvider;
.super Lcom/alibaba/sdk/android/common/auth/CredentialProvider;
.source ""


# instance fields
.field private volatile a:Lcom/alibaba/sdk/android/common/auth/FederationToken;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/common/auth/CredentialProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getFederationToken()Lcom/alibaba/sdk/android/common/auth/FederationToken;
.end method

.method public declared-synchronized getValidFederationToken()Lcom/alibaba/sdk/android/common/auth/FederationToken;
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/common/auth/FederationCredentialProvider;->a:Lcom/alibaba/sdk/android/common/auth/FederationToken;

    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alibaba/sdk/android/common/utils/DateUtil;->getFixedSkewedTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v1

    iget-object v0, p0, Lcom/alibaba/sdk/android/common/auth/FederationCredentialProvider;->a:Lcom/alibaba/sdk/android/common/auth/FederationToken;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/common/auth/FederationToken;->getExpiration()J

    move-result-wide v5

    const-wide/16 v7, 0xf

    sub-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/common/auth/FederationCredentialProvider;->a:Lcom/alibaba/sdk/android/common/auth/FederationToken;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "token expired! current time: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/sdk/android/common/utils/DateUtil;->getFixedSkewedTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " token expired: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/sdk/android/common/auth/FederationCredentialProvider;->a:Lcom/alibaba/sdk/android/common/auth/FederationToken;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/common/auth/FederationToken;->getExpiration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logD(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/common/auth/FederationCredentialProvider;->getFederationToken()Lcom/alibaba/sdk/android/common/auth/FederationToken;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/common/auth/FederationCredentialProvider;->a:Lcom/alibaba/sdk/android/common/auth/FederationToken;

    :cond_2
    iget-object v0, p0, Lcom/alibaba/sdk/android/common/auth/FederationCredentialProvider;->a:Lcom/alibaba/sdk/android/common/auth/FederationToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
