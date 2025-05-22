.class public Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;
.super Lcom/alibaba/sdk/android/oss/model/OSSRequest;
.source ""


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/alibaba/sdk/android/oss/model/Range;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSRequest;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getObjectKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getRange()Lcom/alibaba/sdk/android/oss/model/Range;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->d:Lcom/alibaba/sdk/android/oss/model/Range;

    return-object p0
.end method

.method public getxOssProcess()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->e:Ljava/lang/String;

    return-object p0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public setObjectKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public setRange(Lcom/alibaba/sdk/android/oss/model/Range;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->d:Lcom/alibaba/sdk/android/oss/model/Range;

    return-void
.end method

.method public setxOssProcess(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->e:Ljava/lang/String;

    return-void
.end method
