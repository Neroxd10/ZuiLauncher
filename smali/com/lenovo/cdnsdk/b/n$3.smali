.class public final Lcom/lenovo/cdnsdk/b/n$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/cdnsdk/b/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/cdnsdk/b/n;


# direct methods
.method public constructor <init>(Lcom/lenovo/cdnsdk/b/n;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/cdnsdk/b/n$3;->a:Lcom/lenovo/cdnsdk/b/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/lenovo/cdnsdk/b/n$3;->a:Lcom/lenovo/cdnsdk/b/n;

    invoke-static {v0}, Lcom/lenovo/cdnsdk/b/n;->j(Lcom/lenovo/cdnsdk/b/n;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/cdnsdk/b/n$3;->a:Lcom/lenovo/cdnsdk/b/n;

    invoke-static {v1}, Lcom/lenovo/cdnsdk/b/n;->l(Lcom/lenovo/cdnsdk/b/n;)V

    iget-object v1, p0, Lcom/lenovo/cdnsdk/b/n$3;->a:Lcom/lenovo/cdnsdk/b/n;

    invoke-static {v1}, Lcom/lenovo/cdnsdk/b/n;->n(Lcom/lenovo/cdnsdk/b/n;)Ljava/util/LinkedHashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/lenovo/cdnsdk/b/j;

    iget-object v2, p0, Lcom/lenovo/cdnsdk/b/n$3;->a:Lcom/lenovo/cdnsdk/b/n;

    invoke-static {v2}, Lcom/lenovo/cdnsdk/b/n;->o(Lcom/lenovo/cdnsdk/b/n;)Ljava/net/HttpURLConnection;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/cdnsdk/b/n$3;->a:Lcom/lenovo/cdnsdk/b/n;

    invoke-static {v3}, Lcom/lenovo/cdnsdk/b/n;->n(Lcom/lenovo/cdnsdk/b/n;)Ljava/util/LinkedHashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/cdnsdk/b/n$3;->a:Lcom/lenovo/cdnsdk/b/n;

    invoke-static {v4}, Lcom/lenovo/cdnsdk/b/n;->f(Lcom/lenovo/cdnsdk/b/n;)Lcom/lenovo/cdnsdk/b/a;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/lenovo/cdnsdk/b/j;-><init>(Ljava/net/HttpURLConnection;Ljava/util/LinkedHashMap;Ljava/lang/String;Lcom/lenovo/cdnsdk/b/a;)V

    invoke-virtual {v1}, Lcom/lenovo/cdnsdk/b/j;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/lenovo/cdnsdk/b/n$3;->a:Lcom/lenovo/cdnsdk/b/n;

    invoke-static {v1, v0}, Lcom/lenovo/cdnsdk/b/n;->b(Lcom/lenovo/cdnsdk/b/n;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "------------result:"

    invoke-static {v1}, Lcom/lenovo/cdnsdk/b/e;->b(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/lenovo/cdnsdk/b/n$3;->a:Lcom/lenovo/cdnsdk/b/n;

    invoke-static {p0, v0}, Lcom/lenovo/cdnsdk/b/n;->h(Lcom/lenovo/cdnsdk/b/n;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/lenovo/cdnsdk/b/n$3;->a:Lcom/lenovo/cdnsdk/b/n;

    invoke-static {p0}, Lcom/lenovo/cdnsdk/b/n;->q(Lcom/lenovo/cdnsdk/b/n;)V

    return-void
.end method
