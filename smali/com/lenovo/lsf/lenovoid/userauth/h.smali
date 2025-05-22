.class final Lcom/lenovo/lsf/lenovoid/userauth/h;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/lenovo/lsf/lenovoid/OnAuthenListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/lsf/lenovoid/OnAuthenListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lsf/lenovoid/userauth/h;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/lenovo/lsf/lenovoid/userauth/h;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/lsf/lenovoid/userauth/h;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/lenovo/lsf/lenovoid/userauth/h;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/lenovo/lsf/lenovoid/userauth/h;->e:Lcom/lenovo/lsf/lenovoid/OnAuthenListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    :try_start_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "androidPackageName"

    :try_start_1
    iget-object v1, p0, Lcom/lenovo/lsf/lenovoid/userauth/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, "source"

    :try_start_2
    iget-object v1, p0, Lcom/lenovo/lsf/lenovoid/userauth/h;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/lsf/lenovoid/c/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "transfer_device"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v0, "transfer_token"

    :try_start_3
    iget-object v1, p0, Lcom/lenovo/lsf/lenovoid/userauth/h;->b:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v0, "transfer_name"

    :try_start_4
    iget-object v1, p0, Lcom/lenovo/lsf/lenovoid/userauth/h;->c:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/h;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v1, "com.lenovo.lsf.account"

    :try_start_5
    iget-object v2, p0, Lcom/lenovo/lsf/lenovoid/userauth/h;->d:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lenovo/lsf/lenovoid/userauth/h;->a:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    new-instance v7, Lcom/lenovo/lsf/lenovoid/userauth/f;

    invoke-direct {v7, p0}, Lcom/lenovo/lsf/lenovoid/userauth/f;-><init>(Lcom/lenovo/lsf/lenovoid/userauth/h;)V

    const/4 v8, 0x0

    move-object v5, v6

    invoke-virtual/range {v0 .. v8}, Landroid/accounts/AccountManager;->getAuthTokenByFeatures(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/lenovo/lsf/lenovoid/userauth/h;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/lenovo/lsf/lenovoid/userauth/g;

    invoke-direct {v2, p0}, Lcom/lenovo/lsf/lenovoid/userauth/g;-><init>(Lcom/lenovo/lsf/lenovoid/userauth/h;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SSOSingleUserAuth"

    invoke-static {v0, p0}, Lcom/lenovo/lsf/lenovoid/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
