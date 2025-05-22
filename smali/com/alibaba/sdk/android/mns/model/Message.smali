.class public Lcom/alibaba/sdk/android/mns/model/Message;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/util/Date;

.field private d:Ljava/util/Date;

.field private e:Ljava/util/Date;

.field private f:Ljava/lang/Integer;

.field private g:Ljava/lang/Integer;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/mns/model/Message;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/sdk/android/mns/model/Message;->b:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alibaba/sdk/android/mns/model/Message;->c:Ljava/util/Date;

    iput-object v0, p0, Lcom/alibaba/sdk/android/mns/model/Message;->d:Ljava/util/Date;

    iput-object v0, p0, Lcom/alibaba/sdk/android/mns/model/Message;->e:Ljava/util/Date;

    iput-object v0, p0, Lcom/alibaba/sdk/android/mns/model/Message;->f:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alibaba/sdk/android/mns/model/Message;->g:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alibaba/sdk/android/mns/model/Message;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/sdk/android/mns/model/Message;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/sdk/android/mns/model/Message;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDelaySeconds()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/Message;->g:Ljava/lang/Integer;

    return-object p0
.end method

.method public getDequeueCount()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/Message;->f:Ljava/lang/Integer;

    return-object p0
.end method

.method public getEnqueueTime()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/Message;->c:Ljava/util/Date;

    return-object p0
.end method

.method public getFirstDequeueTime()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/Message;->e:Ljava/util/Date;

    return-object p0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/Message;->h:Ljava/lang/String;

    return-object p0
.end method

.method public getMessageBodyMd5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/Message;->j:Ljava/lang/String;

    return-object p0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/Message;->i:Ljava/lang/String;

    return-object p0
.end method

.method public getNextVisibleTime()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/Message;->d:Ljava/util/Date;

    return-object p0
.end method

.method public getPriority()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/Message;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public getReceiptHandle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/Message;->a:Ljava/lang/String;

    return-object p0
.end method

.method public setDelaySeconds(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/Message;->g:Ljava/lang/Integer;

    return-void
.end method

.method public setDequeueCount(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/Message;->f:Ljava/lang/Integer;

    return-void
.end method

.method public setEnqueueTime(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/Message;->c:Ljava/util/Date;

    return-void
.end method

.method public setFirstDequeueTime(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/Message;->e:Ljava/util/Date;

    return-void
.end method

.method public setMessageBody(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/Message;->h:Ljava/lang/String;

    return-void
.end method

.method public setMessageBodyMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/Message;->j:Ljava/lang/String;

    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/Message;->i:Ljava/lang/String;

    return-void
.end method

.method public setNextVisibleTime(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/Message;->d:Ljava/util/Date;

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/Message;->b:Ljava/lang/Integer;

    return-void
.end method

.method public setReceiptHandle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/Message;->a:Ljava/lang/String;

    return-void
.end method
