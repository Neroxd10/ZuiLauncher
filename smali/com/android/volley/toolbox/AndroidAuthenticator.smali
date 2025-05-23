.class public Lcom/android/volley/toolbox/AndroidAuthenticator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/volley/toolbox/Authenticator;


# instance fields
.field private final a:Landroid/accounts/AccountManager;

.field private final b:Landroid/accounts/Account;

.field private final c:Ljava/lang/String;

.field private final d:Z


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->a:Landroid/accounts/AccountManager;

    iput-object p2, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->b:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/volley/toolbox/AndroidAuthenticator;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/volley/toolbox/AndroidAuthenticator;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 0

    iget-object p0, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->b:Landroid/accounts/Account;

    return-object p0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->a:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->b:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->d:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->isDone()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "intent"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "authtoken"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    new-instance v0, Lcom/android/volley/AuthFailureError;

    invoke-direct {v0, p0}, Lcom/android/volley/AuthFailureError;-><init>(Landroid/content/Intent;)V

    throw v0

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    new-instance v0, Lcom/android/volley/AuthFailureError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got null auth token for type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->c:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/volley/AuthFailureError;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/android/volley/AuthFailureError;

    const-string v1, "Error while retrieving auth token"

    invoke-direct {v0, v1, p0}, Lcom/android/volley/AuthFailureError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public invalidateAuthToken(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->a:Landroid/accounts/AccountManager;

    iget-object p0, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->b:Landroid/accounts/Account;

    iget-object p0, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
