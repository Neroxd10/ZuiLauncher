.class Lcom/lenovo/lsf/lenovoid/userauth/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/lenovo/lsf/lenovoid/userauth/b;


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/lenovoid/userauth/b;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lsf/lenovoid/userauth/a;->c:Lcom/lenovo/lsf/lenovoid/userauth/b;

    iput-object p2, p0, Lcom/lenovo/lsf/lenovoid/userauth/a;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/lenovo/lsf/lenovoid/userauth/a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/a;->a:Ljava/lang/String;

    const-string v1, "USS-0120"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/userauth/a;->c:Lcom/lenovo/lsf/lenovoid/userauth/b;

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/lsf/lenovoid/userauth/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/lsf/lenovoid/userauth/b;->d:Lcom/lenovo/lsf/lenovoid/OnAuthenListener;

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/userauth/b;->e:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, p0}, Lcom/lenovo/lsf/lenovoid/userauth/e;->c(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/lenovoid/OnAuthenListener;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/a;->c:Lcom/lenovo/lsf/lenovoid/userauth/b;

    iget-object v0, v0, Lcom/lenovo/lsf/lenovoid/userauth/b;->d:Lcom/lenovo/lsf/lenovoid/OnAuthenListener;

    iget-boolean v1, p0, Lcom/lenovo/lsf/lenovoid/userauth/a;->b:Z

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/userauth/a;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/lenovo/lsf/lenovoid/OnAuthenListener;->onFinished(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method
