.class public Lcom/alibaba/sdk/android/mns/model/result/SendMessageResult;
.super Lcom/alibaba/sdk/android/mns/model/MNSResult;
.source ""


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/mns/model/MNSResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageBodyMd5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/result/SendMessageResult;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/result/SendMessageResult;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getReceiptHandle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/result/SendMessageResult;->f:Ljava/lang/String;

    return-object p0
.end method

.method public setMessageBodyMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/result/SendMessageResult;->e:Ljava/lang/String;

    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/result/SendMessageResult;->d:Ljava/lang/String;

    return-void
.end method

.method public setMessageResponse(Lcom/alibaba/sdk/android/mns/model/Message;)V
    .locals 1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/mns/model/Message;->getMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/mns/model/result/SendMessageResult;->setMessageId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/mns/model/Message;->getMessageBodyMd5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/mns/model/result/SendMessageResult;->setMessageBodyMd5(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/mns/model/Message;->getReceiptHandle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/mns/model/Message;->getReceiptHandle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/mns/model/result/SendMessageResult;->setReceiptHandle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setReceiptHandle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/result/SendMessageResult;->f:Ljava/lang/String;

    return-void
.end method
