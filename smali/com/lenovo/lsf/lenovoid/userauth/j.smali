.class Lcom/lenovo/lsf/lenovoid/userauth/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# instance fields
.field final synthetic a:Lcom/lenovo/lsf/lenovoid/userauth/l;


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/lenovoid/userauth/l;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lsf/lenovoid/userauth/j;->a:Lcom/lenovo/lsf/lenovoid/userauth/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 2

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/userauth/j;->a:Lcom/lenovo/lsf/lenovoid/userauth/l;

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/l;->e:Lcom/lenovo/lsf/lenovoid/OnAuthenListener;

    iget-object v1, p0, Lcom/lenovo/lsf/lenovoid/userauth/l;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/userauth/l;->b:Landroid/content/Context;

    invoke-static {p1, v0, v1, p0}, Lcom/lenovo/lsf/lenovoid/userauth/e;->b(Landroid/accounts/AccountManagerFuture;Lcom/lenovo/lsf/lenovoid/OnAuthenListener;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
