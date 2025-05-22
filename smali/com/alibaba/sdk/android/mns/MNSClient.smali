.class public Lcom/alibaba/sdk/android/mns/MNSClient;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/alibaba/sdk/android/mns/MNS;


# instance fields
.field private a:Ljava/net/URI;

.field private b:Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;

.field private c:Lcom/alibaba/sdk/android/common/ClientConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/common/auth/CredentialProvider;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/sdk/android/mns/MNSClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/common/auth/CredentialProvider;Lcom/alibaba/sdk/android/common/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/common/auth/CredentialProvider;Lcom/alibaba/sdk/android/common/ClientConfiguration;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/mns/MNSClient;->a:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p3, :cond_2

    if-nez p4, :cond_1

    invoke-static {}, Lcom/alibaba/sdk/android/common/ClientConfiguration;->getDefaultConf()Lcom/alibaba/sdk/android/common/ClientConfiguration;

    move-result-object p4

    :cond_1
    iput-object p4, p0, Lcom/alibaba/sdk/android/mns/MNSClient;->c:Lcom/alibaba/sdk/android/common/ClientConfiguration;

    new-instance p2, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;

    iget-object p4, p0, Lcom/alibaba/sdk/android/mns/MNSClient;->a:Ljava/net/URI;

    iget-object v0, p0, Lcom/alibaba/sdk/android/mns/MNSClient;->c:Lcom/alibaba/sdk/android/common/ClientConfiguration;

    invoke-direct {p2, p1, p4, p3, v0}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;-><init>(Landroid/content/Context;Ljava/net/URI;Lcom/alibaba/sdk/android/common/auth/CredentialProvider;Lcom/alibaba/sdk/android/common/ClientConfiguration;)V

    iput-object p2, p0, Lcom/alibaba/sdk/android/mns/MNSClient;->b:Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "CredentialProvider can\'t be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Endpoint must be a string like \'http://mns.cn-****.aliyuncs.com\'!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asyncChangeMessageVisibility(Lcom/alibaba/sdk/android/mns/model/request/ChangeMessageVisibilityRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;
    .locals 0
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

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/MNSClient;->b:Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->changeMessageVisibility(Lcom/alibaba/sdk/android/mns/model/request/ChangeMessageVisibilityRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public asyncCreateQueue(Lcom/alibaba/sdk/android/mns/model/request/CreateQueueRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;
    .locals 0
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

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/MNSClient;->b:Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->createQueue(Lcom/alibaba/sdk/android/mns/model/request/CreateQueueRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public asyncDeleteMessage(Lcom/alibaba/sdk/android/mns/model/request/DeleteMessageRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;
    .locals 0
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

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/MNSClient;->b:Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->deleteMessage(Lcom/alibaba/sdk/android/mns/model/request/DeleteMessageRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public asyncDeleteQueue(Lcom/alibaba/sdk/android/mns/model/request/DeleteQueueRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;
    .locals 0
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

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/MNSClient;->b:Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->deleteQueue(Lcom/alibaba/sdk/android/mns/model/request/DeleteQueueRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public asyncGetQueueAttributes(Lcom/alibaba/sdk/android/mns/model/request/GetQueueAttributesRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;
    .locals 0
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

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/MNSClient;->b:Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->getQueueAttr(Lcom/alibaba/sdk/android/mns/model/request/GetQueueAttributesRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public asyncListQueue(Lcom/alibaba/sdk/android/mns/model/request/ListQueueRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;
    .locals 0
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

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/MNSClient;->b:Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->listQueue(Lcom/alibaba/sdk/android/mns/model/request/ListQueueRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public asyncPeekMessage(Lcom/alibaba/sdk/android/mns/model/request/PeekMessageRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;
    .locals 0
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

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/MNSClient;->b:Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->peekMessage(Lcom/alibaba/sdk/android/mns/model/request/PeekMessageRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public asyncReceiveMessage(Lcom/alibaba/sdk/android/mns/model/request/ReceiveMessageRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;
    .locals 0
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

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/MNSClient;->b:Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->receiveMessage(Lcom/alibaba/sdk/android/mns/model/request/ReceiveMessageRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public asyncSendMessage(Lcom/alibaba/sdk/android/mns/model/request/SendMessageRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;
    .locals 0
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

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/MNSClient;->b:Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->sendMessage(Lcom/alibaba/sdk/android/mns/model/request/SendMessageRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public asyncSetQueueAttributes(Lcom/alibaba/sdk/android/mns/model/request/SetQueueAttributesRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;
    .locals 0
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

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/MNSClient;->b:Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->setQueueAttr(Lcom/alibaba/sdk/android/mns/model/request/SetQueueAttributesRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public changeMessageVisibility(Lcom/alibaba/sdk/android/mns/model/request/ChangeMessageVisibilityRequest;)Lcom/alibaba/sdk/android/mns/model/result/ChangeMessageVisibilityResult;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/MNSClient;->b:Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->changeMessageVisibility(Lcom/alibaba/sdk/android/mns/model/request/ChangeMessageVisibilityRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;->getResult()Lcom/alibaba/sdk/android/mns/model/MNSResult;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/mns/model/result/ChangeMessageVisibilityResult;

    return-object p0
.end method

.method public createQueue(Lcom/alibaba/sdk/android/mns/model/request/CreateQueueRequest;)Lcom/alibaba/sdk/android/mns/model/result/CreateQueueResult;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/MNSClient;->b:Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->createQueue(Lcom/alibaba/sdk/android/mns/model/request/CreateQueueRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;->getResult()Lcom/alibaba/sdk/android/mns/model/MNSResult;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/mns/model/result/CreateQueueResult;

    return-object p0
.end method

.method public deleteMessage(Lcom/alibaba/sdk/android/mns/model/request/DeleteMessageRequest;)Lcom/alibaba/sdk/android/mns/model/result/DeleteMessageResult;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/MNSClient;->b:Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->deleteMessage(Lcom/alibaba/sdk/android/mns/model/request/DeleteMessageRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;->getResult()Lcom/alibaba/sdk/android/mns/model/MNSResult;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/mns/model/result/DeleteMessageResult;

    return-object p0
.end method

.method public deleteQueue(Lcom/alibaba/sdk/android/mns/model/request/DeleteQueueRequest;)Lcom/alibaba/sdk/android/mns/model/result/DeleteQueueResult;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/MNSClient;->b:Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->deleteQueue(Lcom/alibaba/sdk/android/mns/model/request/DeleteQueueRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;->getResult()Lcom/alibaba/sdk/android/mns/model/MNSResult;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/mns/model/result/DeleteQueueResult;

    return-object p0
.end method

.method public getQueueAttributes(Lcom/alibaba/sdk/android/mns/model/request/GetQueueAttributesRequest;)Lcom/alibaba/sdk/android/mns/model/result/GetQueueAttributesResult;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/MNSClient;->b:Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->getQueueAttr(Lcom/alibaba/sdk/android/mns/model/request/GetQueueAttributesRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;->getResult()Lcom/alibaba/sdk/android/mns/model/MNSResult;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/mns/model/result/GetQueueAttributesResult;

    return-object p0
.end method

.method public listQueue(Lcom/alibaba/sdk/android/mns/model/request/ListQueueRequest;)Lcom/alibaba/sdk/android/mns/model/result/ListQueueResult;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/MNSClient;->b:Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->listQueue(Lcom/alibaba/sdk/android/mns/model/request/ListQueueRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;->getResult()Lcom/alibaba/sdk/android/mns/model/MNSResult;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/mns/model/result/ListQueueResult;

    return-object p0
.end method

.method public peekMessage(Lcom/alibaba/sdk/android/mns/model/request/PeekMessageRequest;)Lcom/alibaba/sdk/android/mns/model/result/PeekMessageResult;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/MNSClient;->b:Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->peekMessage(Lcom/alibaba/sdk/android/mns/model/request/PeekMessageRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;->getResult()Lcom/alibaba/sdk/android/mns/model/MNSResult;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/mns/model/result/PeekMessageResult;

    return-object p0
.end method

.method public receiveMessage(Lcom/alibaba/sdk/android/mns/model/request/ReceiveMessageRequest;)Lcom/alibaba/sdk/android/mns/model/result/ReceiveMessageResult;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/MNSClient;->b:Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->receiveMessage(Lcom/alibaba/sdk/android/mns/model/request/ReceiveMessageRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;->getResult()Lcom/alibaba/sdk/android/mns/model/MNSResult;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/mns/model/result/ReceiveMessageResult;

    return-object p0
.end method

.method public sendMessage(Lcom/alibaba/sdk/android/mns/model/request/SendMessageRequest;)Lcom/alibaba/sdk/android/mns/model/result/SendMessageResult;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/MNSClient;->b:Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->sendMessage(Lcom/alibaba/sdk/android/mns/model/request/SendMessageRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;->getResult()Lcom/alibaba/sdk/android/mns/model/MNSResult;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/mns/model/result/SendMessageResult;

    return-object p0
.end method

.method public setQueueAttributes(Lcom/alibaba/sdk/android/mns/model/request/SetQueueAttributesRequest;)Lcom/alibaba/sdk/android/mns/model/result/SetQueueAttributesResult;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/MNSClient;->b:Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/mns/internal/MNSInternalRequestOperation;->setQueueAttr(Lcom/alibaba/sdk/android/mns/model/request/SetQueueAttributesRequest;Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/mns/internal/MNSAsyncTask;->getResult()Lcom/alibaba/sdk/android/mns/model/MNSResult;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/mns/model/result/SetQueueAttributesResult;

    return-object p0
.end method
