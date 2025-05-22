.class public Lcom/zui/launcher/compat/UserManagerCompatVP;
.super Lcom/zui/launcher/compat/UserManagerCompatVNMr1;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/compat/UserManagerCompatVNMr1;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public requestQuietModeEnabled(ZLandroid/os/UserHandle;)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/zui/launcher/compat/UserManagerCompatVNMr1;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1, p2}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method
