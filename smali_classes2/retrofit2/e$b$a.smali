.class Lretrofit2/e$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/e$b;->enqueue(Lretrofit2/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lretrofit2/Callback;

.field final synthetic b:Lretrofit2/e$b;


# direct methods
.method constructor <init>(Lretrofit2/e$b;Lretrofit2/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lretrofit2/e$b$a;->b:Lretrofit2/e$b;

    iput-object p2, p0, Lretrofit2/e$b$a;->a:Lretrofit2/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lretrofit2/Callback;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lretrofit2/e$b$a;->b:Lretrofit2/e$b;

    invoke-interface {p1, p0, p2}, Lretrofit2/Callback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic b(Lretrofit2/Callback;Lretrofit2/Response;)V
    .locals 1

    iget-object v0, p0, Lretrofit2/e$b$a;->b:Lretrofit2/e$b;

    iget-object v0, v0, Lretrofit2/e$b;->b:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->isCanceled()Z

    move-result v0

    iget-object p0, p0, Lretrofit2/e$b$a;->b:Lretrofit2/e$b;

    if-eqz v0, :cond_0

    new-instance p2, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0, p2}, Lretrofit2/Callback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0, p2}, Lretrofit2/Callback;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    :goto_0
    return-void
.end method

.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lretrofit2/e$b$a;->b:Lretrofit2/e$b;

    iget-object p1, p1, Lretrofit2/e$b;->a:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lretrofit2/e$b$a;->a:Lretrofit2/Callback;

    new-instance v1, Lretrofit2/b;

    invoke-direct {v1, p0, v0, p2}, Lretrofit2/b;-><init>(Lretrofit2/e$b$a;Lretrofit2/Callback;Ljava/lang/Throwable;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Lretrofit2/Response<",
            "TT;>;)V"
        }
    .end annotation

    iget-object p1, p0, Lretrofit2/e$b$a;->b:Lretrofit2/e$b;

    iget-object p1, p1, Lretrofit2/e$b;->a:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lretrofit2/e$b$a;->a:Lretrofit2/Callback;

    new-instance v1, Lretrofit2/a;

    invoke-direct {v1, p0, v0, p2}, Lretrofit2/a;-><init>(Lretrofit2/e$b$a;Lretrofit2/Callback;Lretrofit2/Response;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
