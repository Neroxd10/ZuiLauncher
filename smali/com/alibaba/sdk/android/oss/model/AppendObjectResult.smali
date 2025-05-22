.class public Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;
.super Lcom/alibaba/sdk/android/oss/model/OSSResult;
.source ""


# instance fields
.field private d:J

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getNextPosition()J
    .locals 2

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;->d:J

    return-wide v0
.end method

.method public getObjectCRC64()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;->e:Ljava/lang/String;

    return-object p0
.end method

.method public setNextPosition(Ljava/lang/Long;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;->d:J

    return-void
.end method

.method public setObjectCRC64(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;->e:Ljava/lang/String;

    return-void
.end method
