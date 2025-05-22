.class public final synthetic Lretrofit2/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lretrofit2/e$b$a;

.field public final synthetic b:Lretrofit2/Callback;

.field public final synthetic c:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lretrofit2/e$b$a;Lretrofit2/Callback;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/b;->a:Lretrofit2/e$b$a;

    iput-object p2, p0, Lretrofit2/b;->b:Lretrofit2/Callback;

    iput-object p3, p0, Lretrofit2/b;->c:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lretrofit2/b;->a:Lretrofit2/e$b$a;

    iget-object v1, p0, Lretrofit2/b;->b:Lretrofit2/Callback;

    iget-object p0, p0, Lretrofit2/b;->c:Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p0}, Lretrofit2/e$b$a;->a(Lretrofit2/Callback;Ljava/lang/Throwable;)V

    return-void
.end method
