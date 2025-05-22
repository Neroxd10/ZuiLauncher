.class public Lcom/alibaba/sdk/android/oss/model/GetObjectResult;
.super Lcom/alibaba/sdk/android/oss/model/OSSResult;
.source ""


# instance fields
.field private d:Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

.field private e:J

.field private f:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSResult;-><init>()V

    new-instance v0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->d:Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    return-void
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->e:J

    return-wide v0
.end method

.method public getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->d:Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    return-object p0
.end method

.method public getObjectContent()Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->f:Ljava/io/InputStream;

    return-object p0
.end method

.method public setContentLength(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->e:J

    return-void
.end method

.method public setMetadata(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->d:Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    return-void
.end method

.method public setObjectContent(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->f:Ljava/io/InputStream;

    return-void
.end method
