.class public interface abstract Lcom/alibaba/sdk/android/mns/MNS;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract asyncChangeMessageVisibility(Lcom/alibaba/sdk/android/mns/model/request/ChangeMessageVisibilityRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/mns/model/request/ChangeMessageVisibilityRequest;",
            "Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback<",
            "Lcom/alibaba/sdk/android/mns/model/request/ChangeMessageVisibilityRequest;",
            "Lcom/alibaba/sdk/android/mns/model/result/ChangeMessageVisibilityResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask<",
            "Lcom/alibaba/sdk/android/mns/model/result/ChangeMessageVisibilityResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract asyncCreateQueue(Lcom/alibaba/sdk/android/mns/model/request/CreateQueueRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/mns/model/request/CreateQueueRequest;",
            "Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback<",
            "Lcom/alibaba/sdk/android/mns/model/request/CreateQueueRequest;",
            "Lcom/alibaba/sdk/android/mns/model/result/CreateQueueResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask<",
            "Lcom/alibaba/sdk/android/mns/model/result/CreateQueueResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract asyncDeleteMessage(Lcom/alibaba/sdk/android/mns/model/request/DeleteMessageRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/mns/model/request/DeleteMessageRequest;",
            "Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback<",
            "Lcom/alibaba/sdk/android/mns/model/request/DeleteMessageRequest;",
            "Lcom/alibaba/sdk/android/mns/model/result/DeleteMessageResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask<",
            "Lcom/alibaba/sdk/android/mns/model/result/DeleteMessageResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract asyncDeleteQueue(Lcom/alibaba/sdk/android/mns/model/request/DeleteQueueRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/mns/model/request/DeleteQueueRequest;",
            "Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback<",
            "Lcom/alibaba/sdk/android/mns/model/request/DeleteQueueRequest;",
            "Lcom/alibaba/sdk/android/mns/model/result/DeleteQueueResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask<",
            "Lcom/alibaba/sdk/android/mns/model/result/DeleteQueueResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract asyncGetQueueAttributes(Lcom/alibaba/sdk/android/mns/model/request/GetQueueAttributesRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/mns/model/request/GetQueueAttributesRequest;",
            "Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback<",
            "Lcom/alibaba/sdk/android/mns/model/request/GetQueueAttributesRequest;",
            "Lcom/alibaba/sdk/android/mns/model/result/GetQueueAttributesResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask<",
            "Lcom/alibaba/sdk/android/mns/model/result/GetQueueAttributesResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract asyncListQueue(Lcom/alibaba/sdk/android/mns/model/request/ListQueueRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/mns/model/request/ListQueueRequest;",
            "Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback<",
            "Lcom/alibaba/sdk/android/mns/model/request/ListQueueRequest;",
            "Lcom/alibaba/sdk/android/mns/model/result/ListQueueResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask<",
            "Lcom/alibaba/sdk/android/mns/model/result/ListQueueResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract asyncPeekMessage(Lcom/alibaba/sdk/android/mns/model/request/PeekMessageRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/mns/model/request/PeekMessageRequest;",
            "Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback<",
            "Lcom/alibaba/sdk/android/mns/model/request/PeekMessageRequest;",
            "Lcom/alibaba/sdk/android/mns/model/result/PeekMessageResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask<",
            "Lcom/alibaba/sdk/android/mns/model/result/PeekMessageResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract asyncReceiveMessage(Lcom/alibaba/sdk/android/mns/model/request/ReceiveMessageRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/mns/model/request/ReceiveMessageRequest;",
            "Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback<",
            "Lcom/alibaba/sdk/android/mns/model/request/ReceiveMessageRequest;",
            "Lcom/alibaba/sdk/android/mns/model/result/ReceiveMessageResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask<",
            "Lcom/alibaba/sdk/android/mns/model/result/ReceiveMessageResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract asyncSendMessage(Lcom/alibaba/sdk/android/mns/model/request/SendMessageRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/mns/model/request/SendMessageRequest;",
            "Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback<",
            "Lcom/alibaba/sdk/android/mns/model/request/SendMessageRequest;",
            "Lcom/alibaba/sdk/android/mns/model/result/SendMessageResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask<",
            "Lcom/alibaba/sdk/android/mns/model/result/SendMessageResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract asyncSetQueueAttributes(Lcom/alibaba/sdk/android/mns/model/request/SetQueueAttributesRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/mns/model/request/SetQueueAttributesRequest;",
            "Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback<",
            "Lcom/alibaba/sdk/android/mns/model/request/SetQueueAttributesRequest;",
            "Lcom/alibaba/sdk/android/mns/model/result/SetQueueAttributesResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask<",
            "Lcom/alibaba/sdk/android/mns/model/result/SetQueueAttributesResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract changeMessageVisibility(Lcom/alibaba/sdk/android/mns/model/request/ChangeMessageVisibilityRequest;)Lcom/alibaba/sdk/android/mns/model/result/ChangeMessageVisibilityResult;
.end method

.method public abstract createQueue(Lcom/alibaba/sdk/android/mns/model/request/CreateQueueRequest;)Lcom/alibaba/sdk/android/mns/model/result/CreateQueueResult;
.end method

.method public abstract deleteMessage(Lcom/alibaba/sdk/android/mns/model/request/DeleteMessageRequest;)Lcom/alibaba/sdk/android/mns/model/result/DeleteMessageResult;
.end method

.method public abstract deleteQueue(Lcom/alibaba/sdk/android/mns/model/request/DeleteQueueRequest;)Lcom/alibaba/sdk/android/mns/model/result/DeleteQueueResult;
.end method

.method public abstract getQueueAttributes(Lcom/alibaba/sdk/android/mns/model/request/GetQueueAttributesRequest;)Lcom/alibaba/sdk/android/mns/model/result/GetQueueAttributesResult;
.end method

.method public abstract listQueue(Lcom/alibaba/sdk/android/mns/model/request/ListQueueRequest;)Lcom/alibaba/sdk/android/mns/model/result/ListQueueResult;
.end method

.method public abstract peekMessage(Lcom/alibaba/sdk/android/mns/model/request/PeekMessageRequest;)Lcom/alibaba/sdk/android/mns/model/result/PeekMessageResult;
.end method

.method public abstract receiveMessage(Lcom/alibaba/sdk/android/mns/model/request/ReceiveMessageRequest;)Lcom/alibaba/sdk/android/mns/model/result/ReceiveMessageResult;
.end method

.method public abstract sendMessage(Lcom/alibaba/sdk/android/mns/model/request/SendMessageRequest;)Lcom/alibaba/sdk/android/mns/model/result/SendMessageResult;
.end method

.method public abstract setQueueAttributes(Lcom/alibaba/sdk/android/mns/model/request/SetQueueAttributesRequest;)Lcom/alibaba/sdk/android/mns/model/result/SetQueueAttributesResult;
.end method
