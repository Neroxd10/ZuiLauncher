.class public Lcom/alibaba/sdk/android/mns/model/result/GetQueueAttributesResult;
.super Lcom/alibaba/sdk/android/mns/model/MNSResult;
.source ""


# instance fields
.field private d:Lcom/alibaba/sdk/android/mns/model/QueueMeta;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/mns/model/MNSResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getQueueMeta()Lcom/alibaba/sdk/android/mns/model/QueueMeta;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/result/GetQueueAttributesResult;->d:Lcom/alibaba/sdk/android/mns/model/QueueMeta;

    return-object p0
.end method

.method public setQueueMeta(Lcom/alibaba/sdk/android/mns/model/QueueMeta;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/result/GetQueueAttributesResult;->d:Lcom/alibaba/sdk/android/mns/model/QueueMeta;

    return-void
.end method
