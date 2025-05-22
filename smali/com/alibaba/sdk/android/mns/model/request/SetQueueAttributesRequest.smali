.class public Lcom/alibaba/sdk/android/mns/model/request/SetQueueAttributesRequest;
.super Lcom/alibaba/sdk/android/mns/model/MNSRequest;
.source ""


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/alibaba/sdk/android/mns/model/QueueMeta;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/mns/model/MNSRequest;-><init>()V

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/mns/model/request/SetQueueAttributesRequest;->setQueueName(Ljava/lang/String;)V

    return-void
.end method

.method private setQueueName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/request/SetQueueAttributesRequest;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getQueueMeta()Lcom/alibaba/sdk/android/mns/model/QueueMeta;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/request/SetQueueAttributesRequest;->c:Lcom/alibaba/sdk/android/mns/model/QueueMeta;

    return-object p0
.end method

.method public getQueueName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/request/SetQueueAttributesRequest;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setQueueMeta(Lcom/alibaba/sdk/android/mns/model/QueueMeta;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/request/SetQueueAttributesRequest;->c:Lcom/alibaba/sdk/android/mns/model/QueueMeta;

    return-void
.end method
