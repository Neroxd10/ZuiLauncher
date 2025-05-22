.class final Lcom/lenovo/lsf/lenovoid/userauth/b;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lcom/lenovo/lsf/lenovoid/OnAuthenListener;

.field final synthetic e:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLcom/lenovo/lsf/lenovoid/OnAuthenListener;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lsf/lenovoid/userauth/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/lenovo/lsf/lenovoid/userauth/b;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/lenovo/lsf/lenovoid/userauth/b;->c:Z

    iput-object p4, p0, Lcom/lenovo/lsf/lenovoid/userauth/b;->d:Lcom/lenovo/lsf/lenovoid/OnAuthenListener;

    iput-object p5, p0, Lcom/lenovo/lsf/lenovoid/userauth/b;->e:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/lsf/lenovoid/b/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/lsf/lenovoid/userauth/b;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/lenovo/lsf/lenovoid/userauth/b;->c:Z

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/lenovo/lsf/lenovoid/userauth/e;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/lenovo/lsf/lenovoid/OnAuthenListener;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "USS-0x0305"

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "USS-0x1000"

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "USS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/lenovo/lsf/lenovoid/userauth/b;->a:Landroid/content/Context;

    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_2

    :try_start_0
    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lcom/lenovo/lsf/lenovoid/userauth/a;

    invoke-direct {v3, p0, v0, v1}, Lcom/lenovo/lsf/lenovoid/userauth/a;-><init>(Lcom/lenovo/lsf/lenovoid/userauth/b;Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NormalSingleUserAuth"

    invoke-static {v0, p0}, Lcom/lenovo/lsf/lenovoid/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/userauth/b;->d:Lcom/lenovo/lsf/lenovoid/OnAuthenListener;

    invoke-interface {p0, v1, v0}, Lcom/lenovo/lsf/lenovoid/OnAuthenListener;->onFinished(ZLjava/lang/String;)V

    :goto_1
    return-void
.end method
