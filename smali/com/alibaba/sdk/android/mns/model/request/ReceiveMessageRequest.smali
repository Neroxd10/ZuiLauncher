.class public Lcom/alibaba/sdk/android/mns/model/request/ReceiveMessageRequest;
.super Lcom/alibaba/sdk/android/mns/model/MNSRequest;
.source ""


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/mns/model/MNSRequest;-><init>()V

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/mns/model/request/ReceiveMessageRequest;->setQueueName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getQueueName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/request/ReceiveMessageRequest;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setQueueName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/request/ReceiveMessageRequest;->b:Ljava/lang/String;

    return-void
.end method
