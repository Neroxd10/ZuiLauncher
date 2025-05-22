.class Lcom/zui/launcher/networksdk/download/DownloadTask$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/networksdk/download/DownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lokhttp3/ResponseBody;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/networksdk/download/DownloadTask;


# direct methods
.method constructor <init>(Lcom/zui/launcher/networksdk/download/DownloadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask$b;->a:Lcom/zui/launcher/networksdk/download/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lretrofit2/Response;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask$b;->a:Lcom/zui/launcher/networksdk/download/DownloadTask;

    invoke-static {p0, p1}, Lcom/zui/launcher/networksdk/download/DownloadTask;->g(Lcom/zui/launcher/networksdk/download/DownloadTask;Lretrofit2/Response;)V

    return-void
.end method

.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask$b;->a:Lcom/zui/launcher/networksdk/download/DownloadTask;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/zui/launcher/networksdk/download/DownloadTask;->f(Lcom/zui/launcher/networksdk/download/DownloadTask;I)I

    iget-object p0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask$b;->a:Lcom/zui/launcher/networksdk/download/DownloadTask;

    const/4 p1, 0x7

    invoke-static {p0, p1}, Lcom/zui/launcher/networksdk/download/DownloadTask;->j(Lcom/zui/launcher/networksdk/download/DownloadTask;I)I

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Lretrofit2/Response<",
            "Lokhttp3/ResponseBody;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/systemui/shared/system/BackgroundExecutor;->get()Lcom/android/systemui/shared/system/BackgroundExecutor;

    move-result-object p1

    new-instance v0, Lcom/zui/launcher/networksdk/download/a;

    invoke-direct {v0, p0, p2}, Lcom/zui/launcher/networksdk/download/a;-><init>(Lcom/zui/launcher/networksdk/download/DownloadTask$b;Lretrofit2/Response;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/system/BackgroundExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
