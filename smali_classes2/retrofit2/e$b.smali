.class final Lretrofit2/e$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lretrofit2/Call;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Call<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Executor;

.field final b:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lretrofit2/Call;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lretrofit2/Call<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/e$b;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lretrofit2/e$b;->b:Lretrofit2/Call;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    iget-object p0, p0, Lretrofit2/e$b;->b:Lretrofit2/Call;

    invoke-interface {p0}, Lretrofit2/Call;->cancel()V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lretrofit2/e$b;->clone()Lretrofit2/Call;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lretrofit2/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lretrofit2/e$b;

    iget-object v1, p0, Lretrofit2/e$b;->a:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lretrofit2/e$b;->b:Lretrofit2/Call;

    invoke-interface {p0}, Lretrofit2/Call;->clone()Lretrofit2/Call;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lretrofit2/e$b;-><init>(Ljava/util/concurrent/Executor;Lretrofit2/Call;)V

    return-object v0
.end method

.method public enqueue(Lretrofit2/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Callback<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "callback == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lretrofit2/e$b;->b:Lretrofit2/Call;

    new-instance v1, Lretrofit2/e$b$a;

    invoke-direct {v1, p0, p1}, Lretrofit2/e$b$a;-><init>(Lretrofit2/e$b;Lretrofit2/Callback;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public execute()Lretrofit2/Response;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Response<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lretrofit2/e$b;->b:Lretrofit2/Call;

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    return-object p0
.end method

.method public isCanceled()Z
    .locals 0

    iget-object p0, p0, Lretrofit2/e$b;->b:Lretrofit2/Call;

    invoke-interface {p0}, Lretrofit2/Call;->isCanceled()Z

    move-result p0

    return p0
.end method

.method public isExecuted()Z
    .locals 0

    iget-object p0, p0, Lretrofit2/e$b;->b:Lretrofit2/Call;

    invoke-interface {p0}, Lretrofit2/Call;->isExecuted()Z

    move-result p0

    return p0
.end method

.method public request()Lokhttp3/Request;
    .locals 0

    iget-object p0, p0, Lretrofit2/e$b;->b:Lretrofit2/Call;

    invoke-interface {p0}, Lretrofit2/Call;->request()Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method public timeout()Lokio/Timeout;
    .locals 0

    iget-object p0, p0, Lretrofit2/e$b;->b:Lretrofit2/Call;

    invoke-interface {p0}, Lretrofit2/Call;->timeout()Lokio/Timeout;

    move-result-object p0

    return-object p0
.end method
