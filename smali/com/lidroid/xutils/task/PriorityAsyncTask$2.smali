.class Lcom/lidroid/xutils/task/PriorityAsyncTask$2;
.super Ljava/util/concurrent/FutureTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lidroid/xutils/task/PriorityAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidroid/xutils/task/PriorityAsyncTask;


# direct methods
.method constructor <init>(Lcom/lidroid/xutils/task/PriorityAsyncTask;Ljava/util/concurrent/Callable;)V
    .locals 0

    iput-object p1, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask$2;->this$0:Lcom/lidroid/xutils/task/PriorityAsyncTask;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask$2;->this$0:Lcom/lidroid/xutils/task/PriorityAsyncTask;

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->access$3(Lcom/lidroid/xutils/task/PriorityAsyncTask;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask$2;->this$0:Lcom/lidroid/xutils/task/PriorityAsyncTask;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->access$3(Lcom/lidroid/xutils/task/PriorityAsyncTask;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    const-string v1, "An error occured while executing doInBackground()"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/lidroid/xutils/util/LogUtils;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
