.class public interface abstract Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Lcom/alibaba/sdk/android/mns/model/MNSRequest;",
        "T2:",
        "Lcom/alibaba/sdk/android/mns/model/MNSResult;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onFailure(Lcom/alibaba/sdk/android/mns/model/MNSRequest;Lcom/alibaba/sdk/android/common/ClientException;Lcom/alibaba/sdk/android/common/ServiceException;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;",
            "Lcom/alibaba/sdk/android/common/ClientException;",
            "Lcom/alibaba/sdk/android/common/ServiceException;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onSuccess(Lcom/alibaba/sdk/android/mns/model/MNSRequest;Lcom/alibaba/sdk/android/mns/model/MNSResult;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;)V"
        }
    .end annotation
.end method
