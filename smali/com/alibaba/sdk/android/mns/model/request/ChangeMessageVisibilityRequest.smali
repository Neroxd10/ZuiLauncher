.class public Lcom/alibaba/sdk/android/mns/model/request/ChangeMessageVisibilityRequest;
.super Lcom/alibaba/sdk/android/mns/model/MNSRequest;
.source ""


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/mns/model/MNSRequest;-><init>()V

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/mns/model/request/ChangeMessageVisibilityRequest;->setQueueName(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/alibaba/sdk/android/mns/model/request/ChangeMessageVisibilityRequest;->setReceiptHandle(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/alibaba/sdk/android/mns/model/request/ChangeMessageVisibilityRequest;->setVisibleTime(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public getQueueName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/request/ChangeMessageVisibilityRequest;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getReceiptHandle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/request/ChangeMessageVisibilityRequest;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getVisibleTime()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/request/ChangeMessageVisibilityRequest;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public setQueueName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/request/ChangeMessageVisibilityRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public setReceiptHandle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/request/ChangeMessageVisibilityRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public setVisibleTime(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/request/ChangeMessageVisibilityRequest;->d:Ljava/lang/Integer;

    return-void
.end method
