.class Lcom/lenovo/lsf/lenovoid/userauth/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/lenovo/lsf/lenovoid/userauth/l;


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/lenovoid/userauth/l;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lsf/lenovoid/userauth/k;->a:Lcom/lenovo/lsf/lenovoid/userauth/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/userauth/k;->a:Lcom/lenovo/lsf/lenovoid/userauth/l;

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/userauth/l;->e:Lcom/lenovo/lsf/lenovoid/OnAuthenListener;

    const/4 v0, 0x0

    const-string v1, "USS-0x1000"

    invoke-interface {p0, v0, v1}, Lcom/lenovo/lsf/lenovoid/OnAuthenListener;->onFinished(ZLjava/lang/String;)V

    return-void
.end method
