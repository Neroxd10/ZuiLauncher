.class public Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;
.super Lcom/alibaba/sdk/android/oss/model/OSSResult;
.source ""


# instance fields
.field private d:Lcom/alibaba/sdk/android/oss/model/Owner;

.field private e:Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSResult;-><init>()V

    new-instance v0, Lcom/alibaba/sdk/android/oss/model/Owner;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/model/Owner;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;->d:Lcom/alibaba/sdk/android/oss/model/Owner;

    return-void
.end method


# virtual methods
.method public getBucketACL()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;->e:Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBucketOwner()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;->d:Lcom/alibaba/sdk/android/oss/model/Owner;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/Owner;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBucketOwnerID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;->d:Lcom/alibaba/sdk/android/oss/model/Owner;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/Owner;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setBucketACL(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;->parseACL(Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;->e:Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    return-void
.end method

.method public setBucketOwner(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;->d:Lcom/alibaba/sdk/android/oss/model/Owner;

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/model/Owner;->setDisplayName(Ljava/lang/String;)V

    return-void
.end method

.method public setBucketOwnerID(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;->d:Lcom/alibaba/sdk/android/oss/model/Owner;

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/model/Owner;->setId(Ljava/lang/String;)V

    return-void
.end method
