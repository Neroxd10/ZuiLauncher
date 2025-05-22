.class public Lcom/alibaba/sdk/android/mns/network/ExecutionContext;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alibaba/sdk/android/mns/model/MNSRequest;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/sdk/android/mns/model/MNSRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Lokhttp3/OkHttpClient;

.field private c:Lcom/alibaba/sdk/android/common/CancellationHandler;

.field private d:Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;

.field private e:Lcom/alibaba/sdk/android/mns/callback/MNSProgressCallback;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/mns/model/MNSRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/OkHttpClient;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alibaba/sdk/android/common/CancellationHandler;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/common/CancellationHandler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;->c:Lcom/alibaba/sdk/android/common/CancellationHandler;

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;->b:Lokhttp3/OkHttpClient;

    iput-object p2, p0, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;->a:Lcom/alibaba/sdk/android/mns/model/MNSRequest;

    return-void
.end method


# virtual methods
.method public getCancellationHandler()Lcom/alibaba/sdk/android/common/CancellationHandler;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;->c:Lcom/alibaba/sdk/android/common/CancellationHandler;

    return-object p0
.end method

.method public getClient()Lokhttp3/OkHttpClient;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;->b:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public getCompletedCallback()Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;->d:Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;

    return-object p0
.end method

.method public getProgressCallback()Lcom/alibaba/sdk/android/mns/callback/MNSProgressCallback;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;->e:Lcom/alibaba/sdk/android/mns/callback/MNSProgressCallback;

    return-object p0
.end method

.method public getRequest()Lcom/alibaba/sdk/android/mns/model/MNSRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;->a:Lcom/alibaba/sdk/android/mns/model/MNSRequest;

    return-object p0
.end method

.method public setCancellationHandler(Lcom/alibaba/sdk/android/common/CancellationHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;->c:Lcom/alibaba/sdk/android/common/CancellationHandler;

    return-void
.end method

.method public setClient(Lokhttp3/OkHttpClient;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;->b:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public setCompletedCallback(Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;->d:Lcom/alibaba/sdk/android/mns/callback/MNSCompletedCallback;

    return-void
.end method

.method public setProgressCallback(Lcom/alibaba/sdk/android/mns/callback/MNSProgressCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;->e:Lcom/alibaba/sdk/android/mns/callback/MNSProgressCallback;

    return-void
.end method

.method public setRequest(Lcom/alibaba/sdk/android/mns/model/MNSRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alibaba/sdk/android/mns/network/ExecutionContext;->a:Lcom/alibaba/sdk/android/mns/model/MNSRequest;

    return-void
.end method
