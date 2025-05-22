.class public Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;
.super Lcom/alibaba/sdk/android/oss/model/OSSRequest;
.source ""


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSRequest;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBucketACL()Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;->c:Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    return-object p0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getLocationConstraint()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setBucketACL(Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;->c:Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    return-void
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public setLocationConstraint(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;->d:Ljava/lang/String;

    return-void
.end method
