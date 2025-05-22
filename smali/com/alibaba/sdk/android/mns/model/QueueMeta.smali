.class public Lcom/alibaba/sdk/android/mns/model/QueueMeta;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected activeMessages:Ljava/lang/Long;

.field protected createTime:Ljava/util/Date;

.field protected delayMessages:Ljava/lang/Long;

.field protected delaySeconds:Ljava/lang/Long;

.field protected inactiveMessages:Ljava/lang/Long;

.field protected lastModifyTime:Ljava/util/Date;

.field protected loggingEnabled:Ljava/lang/Integer;

.field protected maxMessageSize:Ljava/lang/Long;

.field protected messageRetentionPeriod:Ljava/lang/Long;

.field protected pollingWaitSeconds:Ljava/lang/Integer;

.field protected queueName:Ljava/lang/String;

.field protected queueURL:Ljava/lang/String;

.field protected visibilityTimeout:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->queueName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->delaySeconds:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->messageRetentionPeriod:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->maxMessageSize:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->visibilityTimeout:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->createTime:Ljava/util/Date;

    iput-object v0, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->lastModifyTime:Ljava/util/Date;

    iput-object v0, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->pollingWaitSeconds:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->activeMessages:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->inactiveMessages:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->delayMessages:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->queueURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->loggingEnabled:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getActiveMessages()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->activeMessages:Ljava/lang/Long;

    return-object p0
.end method

.method public getCreateTime()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->createTime:Ljava/util/Date;

    return-object p0
.end method

.method public getDelayMessages()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->delayMessages:Ljava/lang/Long;

    return-object p0
.end method

.method public getDelaySeconds()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->delaySeconds:Ljava/lang/Long;

    return-object p0
.end method

.method public getInactiveMessages()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->inactiveMessages:Ljava/lang/Long;

    return-object p0
.end method

.method public getLastModifyTime()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->lastModifyTime:Ljava/util/Date;

    return-object p0
.end method

.method public getLoggingEnabled()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->loggingEnabled:Ljava/lang/Integer;

    return-object p0
.end method

.method public getMaxMessageSize()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->maxMessageSize:Ljava/lang/Long;

    return-object p0
.end method

.method public getMessageRetentionPeriod()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->messageRetentionPeriod:Ljava/lang/Long;

    return-object p0
.end method

.method public getPollingWaitSeconds()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->pollingWaitSeconds:Ljava/lang/Integer;

    return-object p0
.end method

.method public getQueueName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->queueName:Ljava/lang/String;

    return-object p0
.end method

.method public getQueueURL()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->queueURL:Ljava/lang/String;

    return-object p0
.end method

.method public getVisibilityTimeout()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->visibilityTimeout:Ljava/lang/Long;

    return-object p0
.end method

.method public setActiveMessages(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->activeMessages:Ljava/lang/Long;

    return-void
.end method

.method public setCreateTime(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->createTime:Ljava/util/Date;

    return-void
.end method

.method public setDelayMessages(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->delayMessages:Ljava/lang/Long;

    return-void
.end method

.method public setDelaySeconds(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->delaySeconds:Ljava/lang/Long;

    return-void
.end method

.method public setInactiveMessages(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->inactiveMessages:Ljava/lang/Long;

    return-void
.end method

.method public setLastModifyTime(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->lastModifyTime:Ljava/util/Date;

    return-void
.end method

.method public setLoggingEnabled(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->loggingEnabled:Ljava/lang/Integer;

    return-void
.end method

.method public setLoggingEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->loggingEnabled:Ljava/lang/Integer;

    return-void
.end method

.method public setMaxMessageSize(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->maxMessageSize:Ljava/lang/Long;

    return-void
.end method

.method public setMessageRetentionPeriod(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->messageRetentionPeriod:Ljava/lang/Long;

    return-void
.end method

.method public setPollingWaitSeconds(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->pollingWaitSeconds:Ljava/lang/Integer;

    return-void
.end method

.method public setQueueName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->queueName:Ljava/lang/String;

    return-void
.end method

.method public setQueueURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->queueURL:Ljava/lang/String;

    return-void
.end method

.method public setVisibilityTimeout(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/QueueMeta;->visibilityTimeout:Ljava/lang/Long;

    return-void
.end method
