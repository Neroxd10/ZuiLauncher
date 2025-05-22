.class public Lcom/alibaba/sdk/android/common/auth/PlainTextAKSKCredentialProvider;
.super Lcom/alibaba/sdk/android/common/auth/CredentialProvider;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/common/auth/CredentialProvider;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/common/auth/PlainTextAKSKCredentialProvider;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/common/auth/PlainTextAKSKCredentialProvider;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccessKeyId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/common/auth/PlainTextAKSKCredentialProvider;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getAccessKeySecret()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/common/auth/PlainTextAKSKCredentialProvider;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setAccessKeyId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/common/auth/PlainTextAKSKCredentialProvider;->a:Ljava/lang/String;

    return-void
.end method

.method public setAccessKeySecret(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/common/auth/PlainTextAKSKCredentialProvider;->b:Ljava/lang/String;

    return-void
.end method
