.class final Lcom/lenovo/lsf/lenovoid/userauth/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/lenovo/lsf/lenovoid/OnAuthenListener;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/lenovoid/OnAuthenListener;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lsf/lenovoid/userauth/d;->a:Lcom/lenovo/lsf/lenovoid/OnAuthenListener;

    iput-boolean p2, p0, Lcom/lenovo/lsf/lenovoid/userauth/d;->b:Z

    iput-object p3, p0, Lcom/lenovo/lsf/lenovoid/userauth/d;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/d;->a:Lcom/lenovo/lsf/lenovoid/OnAuthenListener;

    iget-boolean v1, p0, Lcom/lenovo/lsf/lenovoid/userauth/d;->b:Z

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/userauth/d;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/lenovo/lsf/lenovoid/OnAuthenListener;->onFinished(ZLjava/lang/String;)V

    return-void
.end method
