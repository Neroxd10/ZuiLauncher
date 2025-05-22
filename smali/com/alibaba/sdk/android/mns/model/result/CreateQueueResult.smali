.class public Lcom/alibaba/sdk/android/mns/model/result/CreateQueueResult;
.super Lcom/alibaba/sdk/android/mns/model/MNSResult;
.source ""


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/mns/model/MNSResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getQueueLocation()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/result/CreateQueueResult;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setQueueLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/result/CreateQueueResult;->d:Ljava/lang/String;

    return-void
.end method
