.class public Lcom/alibaba/sdk/android/mns/model/result/ChangeMessageVisibilityResult;
.super Lcom/alibaba/sdk/android/mns/model/MNSResult;
.source ""


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/mns/model/MNSResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getNextVisibleTime()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/result/ChangeMessageVisibilityResult;->e:Ljava/util/Date;

    return-object p0
.end method

.method public getReceiptHandle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/result/ChangeMessageVisibilityResult;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setChangeVisibleResponse(Lcom/alibaba/sdk/android/mns/model/Message;)V
    .locals 1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/mns/model/Message;->getReceiptHandle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/mns/model/result/ChangeMessageVisibilityResult;->setReceiptHandle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/mns/model/Message;->getNextVisibleTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/mns/model/result/ChangeMessageVisibilityResult;->setNextVisibleTime(Ljava/util/Date;)V

    return-void
.end method

.method public setNextVisibleTime(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/result/ChangeMessageVisibilityResult;->e:Ljava/util/Date;

    return-void
.end method

.method public setReceiptHandle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/result/ChangeMessageVisibilityResult;->d:Ljava/lang/String;

    return-void
.end method
