.class public Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;
.super Lcom/alibaba/sdk/android/oss/model/OSSRequest;
.source ""


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Integer;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSRequest;-><init>()V

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->setPrefix(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->setMarker(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->setDelimiter(Ljava/lang/String;)V

    if-eqz p5, :cond_0

    invoke-virtual {p0, p5}, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->setMaxKeys(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getDelimiter()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getEncodingType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getMarker()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxKeys()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->c:Ljava/lang/String;

    return-object p0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->f:Ljava/lang/String;

    return-void
.end method

.method public setEncodingType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->g:Ljava/lang/String;

    return-void
.end method

.method public setMarker(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->d:Ljava/lang/String;

    return-void
.end method

.method public setMaxKeys(Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->e:Ljava/lang/Integer;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Maxkeys should less can not exceed 1000."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->c:Ljava/lang/String;

    return-void
.end method
