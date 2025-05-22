.class final Lcom/lenovo/lsf/lenovoid/userauth/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/lsf/lenovoid/OnAuthenListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/lenovo/lsf/lenovoid/OnAuthenListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/lenovo/lsf/lenovoid/OnAuthenListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lsf/lenovoid/userauth/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/lenovo/lsf/lenovoid/userauth/c;->b:Lcom/lenovo/lsf/lenovoid/OnAuthenListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ZLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/c;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/userauth/c;->b:Lcom/lenovo/lsf/lenovoid/OnAuthenListener;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/lenovo/lsf/lenovoid/userauth/d;

    invoke-direct {v1, p0, p1, p2}, Lcom/lenovo/lsf/lenovoid/userauth/d;-><init>(Lcom/lenovo/lsf/lenovoid/OnAuthenListener;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/lenovo/lsf/lenovoid/OnAuthenListener;->onFinished(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method
