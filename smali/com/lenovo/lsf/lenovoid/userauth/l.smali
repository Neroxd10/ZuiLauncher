.class final Lcom/lenovo/lsf/lenovoid/userauth/l;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/os/Bundle;

.field final synthetic e:Lcom/lenovo/lsf/lenovoid/OnAuthenListener;


# direct methods
.method constructor <init>(ZLandroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/lenovo/lsf/lenovoid/OnAuthenListener;)V
    .locals 0

    iput-boolean p1, p0, Lcom/lenovo/lsf/lenovoid/userauth/l;->a:Z

    iput-object p2, p0, Lcom/lenovo/lsf/lenovoid/userauth/l;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/lenovo/lsf/lenovoid/userauth/l;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/lenovo/lsf/lenovoid/userauth/l;->d:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/lenovo/lsf/lenovoid/userauth/l;->e:Lcom/lenovo/lsf/lenovoid/OnAuthenListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, "com.lenovo.lsf.account"

    const/4 v1, 0x0

    :try_start_0
    iget-boolean v2, p0, Lcom/lenovo/lsf/lenovoid/userauth/l;->a:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/lsf/lenovoid/userauth/l;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/lenovo/lsf/lenovoid/userauth/l;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    invoke-static {v2, v0}, Lcom/lenovo/lsf/lenovoid/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v4, v2, v3, v1}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v4, v0, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/l;->d:Landroid/os/Bundle;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v2, "androidPackageName"

    :try_start_3
    iget-object v3, p0, Lcom/lenovo/lsf/lenovoid/userauth/l;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/l;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/lenovo/lsf/lenovoid/userauth/l;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/lenovo/lsf/lenovoid/userauth/l;->d:Landroid/os/Bundle;

    const-string v3, "androidApplicationName"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/l;->d:Landroid/os/Bundle;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const-string v2, "source"

    :try_start_4
    iget-object v3, p0, Lcom/lenovo/lsf/lenovoid/userauth/l;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/lsf/lenovoid/c/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/l;->d:Landroid/os/Bundle;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const-string v2, "get_st_no_from_catche"

    :try_start_5
    iget-boolean v3, p0, Lcom/lenovo/lsf/lenovoid/userauth/l;->a:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/l;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/l;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    const-string v3, "com.lenovo.lsf.account"

    :try_start_6
    iget-object v4, p0, Lcom/lenovo/lsf/lenovoid/userauth/l;->c:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/l;->b:Landroid/content/Context;

    move-object v6, v0

    check-cast v6, Landroid/app/Activity;

    iget-object v7, p0, Lcom/lenovo/lsf/lenovoid/userauth/l;->d:Landroid/os/Bundle;

    iget-object v8, p0, Lcom/lenovo/lsf/lenovoid/userauth/l;->d:Landroid/os/Bundle;

    new-instance v9, Lcom/lenovo/lsf/lenovoid/userauth/i;

    invoke-direct {v9, p0}, Lcom/lenovo/lsf/lenovoid/userauth/i;-><init>(Lcom/lenovo/lsf/lenovoid/userauth/l;)V

    :goto_0
    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/accounts/AccountManager;->getAuthTokenByFeatures(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/l;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    const-string v3, "com.lenovo.lsf.account"

    :try_start_7
    iget-object v4, p0, Lcom/lenovo/lsf/lenovoid/userauth/l;->c:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/lenovo/lsf/lenovoid/userauth/l;->d:Landroid/os/Bundle;

    iget-object v8, p0, Lcom/lenovo/lsf/lenovoid/userauth/l;->d:Landroid/os/Bundle;

    new-instance v9, Lcom/lenovo/lsf/lenovoid/userauth/j;

    invoke-direct {v9, p0}, Lcom/lenovo/lsf/lenovoid/userauth/j;-><init>(Lcom/lenovo/lsf/lenovoid/userauth/l;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v2, p0, Lcom/lenovo/lsf/lenovoid/userauth/l;->b:Landroid/content/Context;

    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/app/Activity;

    new-instance v1, Lcom/lenovo/lsf/lenovoid/userauth/k;

    invoke-direct {v1, p0}, Lcom/lenovo/lsf/lenovoid/userauth/k;-><init>(Lcom/lenovo/lsf/lenovoid/userauth/l;)V

    invoke-virtual {v2, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/userauth/l;->e:Lcom/lenovo/lsf/lenovoid/OnAuthenListener;

    const-string v2, "USS-0x1000"

    invoke-interface {p0, v1, v2}, Lcom/lenovo/lsf/lenovoid/OnAuthenListener;->onFinished(ZLjava/lang/String;)V

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SSOSingleUserAuth"

    invoke-static {v0, p0}, Lcom/lenovo/lsf/lenovoid/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
