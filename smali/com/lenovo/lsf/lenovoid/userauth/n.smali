.class Lcom/lenovo/lsf/lenovoid/userauth/n;
.super Lcom/lenovo/lsf/account/service/a;
.source ""


# instance fields
.field final synthetic a:Lcom/lenovo/lsf/lenovoid/userauth/p;


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/lenovoid/userauth/p;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lsf/lenovoid/userauth/n;->a:Lcom/lenovo/lsf/lenovoid/userauth/p;

    invoke-direct {p0}, Lcom/lenovo/lsf/account/service/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/lenovo/lsf/account/service/UkiResult;)V
    .locals 3

    iget-object p1, p0, Lcom/lenovo/lsf/lenovoid/userauth/n;->a:Lcom/lenovo/lsf/lenovoid/userauth/p;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/n;->a:Lcom/lenovo/lsf/lenovoid/userauth/p;

    invoke-static {v0}, Lcom/lenovo/lsf/lenovoid/userauth/p;->a(Lcom/lenovo/lsf/lenovoid/userauth/p;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/n;->a:Lcom/lenovo/lsf/lenovoid/userauth/p;

    invoke-static {v0}, Lcom/lenovo/lsf/lenovoid/userauth/p;->g(Lcom/lenovo/lsf/lenovoid/userauth/p;)Lcom/lenovo/lsf/lenovoid/userauth/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/n;->a:Lcom/lenovo/lsf/lenovoid/userauth/p;

    invoke-static {v0}, Lcom/lenovo/lsf/lenovoid/userauth/p;->h(Lcom/lenovo/lsf/lenovoid/userauth/p;)Lcom/lenovo/lsf/account/service/e;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/n;->a:Lcom/lenovo/lsf/lenovoid/userauth/p;

    invoke-static {v0}, Lcom/lenovo/lsf/lenovoid/userauth/p;->a(Lcom/lenovo/lsf/lenovoid/userauth/p;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/lenovo/lsf/lenovoid/userauth/n;->a:Lcom/lenovo/lsf/lenovoid/userauth/p;

    invoke-static {v2}, Lcom/lenovo/lsf/lenovoid/userauth/p;->g(Lcom/lenovo/lsf/lenovoid/userauth/p;)Lcom/lenovo/lsf/lenovoid/userauth/o;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/n;->a:Lcom/lenovo/lsf/lenovoid/userauth/p;

    invoke-static {v0, v1}, Lcom/lenovo/lsf/lenovoid/userauth/p;->d(Lcom/lenovo/lsf/lenovoid/userauth/p;Lcom/lenovo/lsf/lenovoid/userauth/o;)Lcom/lenovo/lsf/lenovoid/userauth/o;

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/n;->a:Lcom/lenovo/lsf/lenovoid/userauth/p;

    invoke-static {v0, v1}, Lcom/lenovo/lsf/lenovoid/userauth/p;->c(Lcom/lenovo/lsf/lenovoid/userauth/p;Lcom/lenovo/lsf/account/service/e;)Lcom/lenovo/lsf/account/service/e;

    :cond_1
    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/n;->a:Lcom/lenovo/lsf/lenovoid/userauth/p;

    invoke-static {v0}, Lcom/lenovo/lsf/lenovoid/userauth/p;->i(Lcom/lenovo/lsf/lenovoid/userauth/p;)Lcom/lenovo/lsf/lenovoid/OnUkiInfoListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/n;->a:Lcom/lenovo/lsf/lenovoid/userauth/p;

    invoke-static {v0}, Lcom/lenovo/lsf/lenovoid/userauth/p;->a(Lcom/lenovo/lsf/lenovoid/userauth/p;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/n;->a:Lcom/lenovo/lsf/lenovoid/userauth/p;

    iget-object v2, p0, Lcom/lenovo/lsf/lenovoid/userauth/n;->a:Lcom/lenovo/lsf/lenovoid/userauth/p;

    invoke-static {v2}, Lcom/lenovo/lsf/lenovoid/userauth/p;->a(Lcom/lenovo/lsf/lenovoid/userauth/p;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/lsf/lenovoid/userauth/p;->c(Landroid/content/Context;)Lcom/lenovo/lsf/lenovoid/UkiInfo;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/lenovo/lsf/lenovoid/UkiInfo;

    invoke-direct {v0}, Lcom/lenovo/lsf/lenovoid/UkiInfo;-><init>()V

    const-string v2, "USS-0x1000"

    invoke-virtual {v0, v2}, Lcom/lenovo/lsf/lenovoid/UkiInfo;->setErrorCode(Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/lenovo/lsf/lenovoid/userauth/n;->a:Lcom/lenovo/lsf/lenovoid/userauth/p;

    invoke-static {v2}, Lcom/lenovo/lsf/lenovoid/userauth/p;->i(Lcom/lenovo/lsf/lenovoid/userauth/p;)Lcom/lenovo/lsf/lenovoid/OnUkiInfoListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/lenovo/lsf/lenovoid/OnUkiInfoListener;->onResult(Lcom/lenovo/lsf/lenovoid/UkiInfo;)V

    :cond_3
    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/userauth/n;->a:Lcom/lenovo/lsf/lenovoid/userauth/p;

    invoke-static {p0, v1}, Lcom/lenovo/lsf/lenovoid/userauth/p;->b(Lcom/lenovo/lsf/lenovoid/userauth/p;Landroid/content/Context;)Landroid/content/Context;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
