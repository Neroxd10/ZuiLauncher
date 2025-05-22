.class final Lcom/amap/api/col/l3s/dx$3;
.super Ljava/util/concurrent/FutureTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/dx;-><init>()V
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
.field final synthetic a:Lcom/amap/api/col/l3s/dx;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/dx;Ljava/util/concurrent/Callable;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/dx$3;->a:Lcom/amap/api/col/l3s/dx;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected final done()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/dx$3;->a:Lcom/amap/api/col/l3s/dx;

    iget-object v1, p0, Lcom/amap/api/col/l3s/dx$3;->a:Lcom/amap/api/col/l3s/dx;

    invoke-static {v1}, Lcom/amap/api/col/l3s/dx;->b(Lcom/amap/api/col/l3s/dx;)Ljava/util/concurrent/FutureTask;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/dx;->b(Lcom/amap/api/col/l3s/dx;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/dx$3;->a:Lcom/amap/api/col/l3s/dx;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/amap/api/col/l3s/dx;->b(Lcom/amap/api/col/l3s/dx;Ljava/lang/Object;)V

    return-void

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

    const-string v0, "AbstractAsyncTask"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
