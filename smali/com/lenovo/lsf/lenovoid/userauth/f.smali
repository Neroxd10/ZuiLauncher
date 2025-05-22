.class Lcom/lenovo/lsf/lenovoid/userauth/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# instance fields
.field final synthetic a:Lcom/lenovo/lsf/lenovoid/userauth/h;


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/lenovoid/userauth/h;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lsf/lenovoid/userauth/f;->a:Lcom/lenovo/lsf/lenovoid/userauth/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 3

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/userauth/f;->a:Lcom/lenovo/lsf/lenovoid/userauth/h;

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/h;->e:Lcom/lenovo/lsf/lenovoid/OnAuthenListener;

    iget-object v1, p0, Lcom/lenovo/lsf/lenovoid/userauth/h;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/userauth/h;->a:Landroid/content/Context;

    const-string p0, "SSOSingleUserAuth"

    const-string v1, "[sdk parseTransferResult] "

    invoke-static {p0, v1}, Lcom/lenovo/lsf/lenovoid/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string v1, "errorCode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "authtoken"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0, p0, v1}, Lcom/lenovo/lsf/lenovoid/OnAuthenListener;->onFinished(ZLjava/lang/String;)V

    :cond_2
    return-void
.end method
