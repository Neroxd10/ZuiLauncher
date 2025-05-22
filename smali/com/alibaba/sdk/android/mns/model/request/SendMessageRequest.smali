.class public Lcom/alibaba/sdk/android/mns/model/request/SendMessageRequest;
.super Lcom/alibaba/sdk/android/mns/model/MNSRequest;
.source ""


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/alibaba/sdk/android/mns/model/Message;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/mns/model/MNSRequest;-><init>()V

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/mns/model/request/SendMessageRequest;->setQueueName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMessage()Lcom/alibaba/sdk/android/mns/model/Message;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/request/SendMessageRequest;->c:Lcom/alibaba/sdk/android/mns/model/Message;

    return-object p0
.end method

.method public getQueueName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/request/SendMessageRequest;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setMessage(Lcom/alibaba/sdk/android/mns/model/Message;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/request/SendMessageRequest;->c:Lcom/alibaba/sdk/android/mns/model/Message;

    return-void
.end method

.method public setQueueName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/request/SendMessageRequest;->b:Ljava/lang/String;

    return-void
.end method
