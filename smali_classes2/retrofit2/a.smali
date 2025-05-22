.class public final synthetic Lretrofit2/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lretrofit2/e$b$a;

.field public final synthetic b:Lretrofit2/Callback;

.field public final synthetic c:Lretrofit2/Response;


# direct methods
.method public synthetic constructor <init>(Lretrofit2/e$b$a;Lretrofit2/Callback;Lretrofit2/Response;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/a;->a:Lretrofit2/e$b$a;

    iput-object p2, p0, Lretrofit2/a;->b:Lretrofit2/Callback;

    iput-object p3, p0, Lretrofit2/a;->c:Lretrofit2/Response;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lretrofit2/a;->a:Lretrofit2/e$b$a;

    iget-object v1, p0, Lretrofit2/a;->b:Lretrofit2/Callback;

    iget-object p0, p0, Lretrofit2/a;->c:Lretrofit2/Response;

    invoke-virtual {v0, v1, p0}, Lretrofit2/e$b$a;->b(Lretrofit2/Callback;Lretrofit2/Response;)V

    return-void
.end method
