.class public Lcom/alibaba/sdk/android/oss/model/UploadPartResult;
.super Lcom/alibaba/sdk/android/oss/model/OSSResult;
.source ""


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getETag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/UploadPartResult;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/UploadPartResult;->d:Ljava/lang/String;

    return-void
.end method
