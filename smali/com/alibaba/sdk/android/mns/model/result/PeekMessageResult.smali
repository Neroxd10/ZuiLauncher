.class public Lcom/alibaba/sdk/android/mns/model/result/PeekMessageResult;
.super Lcom/alibaba/sdk/android/mns/model/MNSResult;
.source ""


# instance fields
.field private d:Lcom/alibaba/sdk/android/mns/model/Message;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/mns/model/MNSResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Lcom/alibaba/sdk/android/mns/model/Message;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/model/result/PeekMessageResult;->d:Lcom/alibaba/sdk/android/mns/model/Message;

    return-object p0
.end method

.method public setMessage(Lcom/alibaba/sdk/android/mns/model/Message;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/model/result/PeekMessageResult;->d:Lcom/alibaba/sdk/android/mns/model/Message;

    return-void
.end method
