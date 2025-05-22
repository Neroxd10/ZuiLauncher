.class public Lcom/alibaba/sdk/android/oss/network/ExecutionContext;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alibaba/sdk/android/oss/model/OSSRequest;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/sdk/android/oss/model/OSSRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Lokhttp3/OkHttpClient;

.field private c:Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

.field private d:Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

.field private e:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/OkHttpClient;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->c:Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->b:Lokhttp3/OkHttpClient;

    iput-object p2, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->a:Lcom/alibaba/sdk/android/oss/model/OSSRequest;

    return-void
.end method


# virtual methods
.method public getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->c:Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    return-object p0
.end method

.method public getClient()Lokhttp3/OkHttpClient;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->b:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public getCompletedCallback()Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->d:Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    return-object p0
.end method

.method public getProgressCallback()Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->e:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    return-object p0
.end method

.method public getRequest()Lcom/alibaba/sdk/android/oss/model/OSSRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->a:Lcom/alibaba/sdk/android/oss/model/OSSRequest;

    return-object p0
.end method

.method public setCancellationHandler(Lcom/alibaba/sdk/android/oss/network/CancellationHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->c:Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    return-void
.end method

.method public setClient(Lokhttp3/OkHttpClient;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->b:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->d:Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    return-void
.end method

.method public setProgressCallback(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->e:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    return-void
.end method

.method public setRequest(Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->a:Lcom/alibaba/sdk/android/oss/model/OSSRequest;

    return-void
.end method
