.class public Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;
.super Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;->b:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccessKeyId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getFederationToken()Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;
    .locals 7

    new-instance v6, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;->c:Ljava/lang/String;

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v6
.end method

.method public getSecretKeyId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getSecurityToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;->c:Ljava/lang/String;

    return-object p0
.end method

.method public setAccessKeyId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;->a:Ljava/lang/String;

    return-void
.end method

.method public setSecretKeyId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;->b:Ljava/lang/String;

    return-void
.end method

.method public setSecurityToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;->c:Ljava/lang/String;

    return-void
.end method
