.class public Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;
    }
.end annotation


# static fields
.field public static final CODE_ERROR_CANCEL:I = 0x2

.field public static final CODE_ERROR_CONNECT:I = 0x1

.field public static final CODE_ERROR_NONE:I = 0x4

.field public static final CODE_ERROR_SERVER:I = 0x3

.field public static final CODE_SUCCESS:I


# instance fields
.field a:Landroid/app/Activity;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "contact.cloud.lps.lenovo.com"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method a(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V
    .locals 2

    const-string v0, "LCPAccount"

    const-string v1, "loginRequired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$c;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$c;-><init>(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->a:Landroid/app/Activity;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->asyncGetST(Landroid/app/Activity;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$LsfOnAuthenListener;Z)V

    return-void
.end method

.method public accountGUI()V
    .locals 1

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->a:Landroid/app/Activity;

    const-string v0, "contact.cloud.lps.lenovo.com"

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->showAccountPage(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method b(Ljava/lang/Runnable;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V
    .locals 2

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->isUserLogin()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getCachedST(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xa

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->f(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getServerST(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v0, :cond_1

    :cond_3
    const/4 p1, 0x1

    const-string v0, "The lenovo ID is online but can\'t get st. Try later or sign out login again."

    invoke-virtual {p0, p1, v0, p2}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->e(ILjava/lang/String;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V

    :goto_1
    return-void
.end method

.method c(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V
    .locals 1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$h;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$h;-><init>(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public checkLoginAndAuthThenDo(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V
    .locals 1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$a;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$a;-><init>(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public checkLoginThenDo(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V
    .locals 1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$b;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$b;-><init>(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method d(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;ZLjava/lang/String;)V
    .locals 2

    const-string v0, "cancel"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    const/4 p2, 0x2

    invoke-virtual {p0, p2, v1, p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->e(ILjava/lang/String;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p3, p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->f(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getLastErrorString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x3

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p2

    :goto_0
    invoke-virtual {p0, p3, v1, p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->e(ILjava/lang/String;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V

    :goto_1
    return-void
.end method

.method e(ILjava/lang/String;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V
    .locals 1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$g;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$g;-><init>(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method f(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V
    .locals 1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$f;

    invoke-direct {v0, p0, p2, p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$f;-><init>(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method g(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->a:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method h(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V
    .locals 1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$d;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$d;-><init>(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V

    invoke-virtual {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->b(Ljava/lang/Runnable;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V

    return-void
.end method

.method i(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V
    .locals 1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$e;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$e;-><init>(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V

    invoke-virtual {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->b(Ljava/lang/Runnable;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V

    return-void
.end method

.method public isOnline()Z
    .locals 0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->isUserLogin()Z

    move-result p0

    return p0
.end method

.method public lpust()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getServerST(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public lpust(Z)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->b:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getST(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public userId()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getUserName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
