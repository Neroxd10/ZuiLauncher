.class public Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;
.super Lcom/alibaba/sdk/android/oss/model/OSSRequest;
.source ""


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Integer;

.field private f:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSRequest;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxParts()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method public getObjectKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getPartNumberMarker()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;->f:Ljava/lang/Integer;

    return-object p0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public setMaxParts(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;->e:Ljava/lang/Integer;

    return-void
.end method

.method public setObjectKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public setPartNumberMarker(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;->f:Ljava/lang/Integer;

    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;->d:Ljava/lang/String;

    return-void
.end method
