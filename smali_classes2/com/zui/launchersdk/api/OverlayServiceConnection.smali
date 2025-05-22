.class public Lcom/zui/launchersdk/api/OverlayServiceConnection;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:I

.field private c:Z


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launchersdk/api/OverlayServiceConnection;->a:Landroid/content/Context;

    iput p2, p0, Lcom/zui/launchersdk/api/OverlayServiceConnection;->b:I

    return-void
.end method


# virtual methods
.method public final bind()Z
    .locals 4

    const-string v0, "ZLauncherClient"

    iget-boolean v1, p0, Lcom/zui/launchersdk/api/OverlayServiceConnection;->c:Z

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/zui/launchersdk/api/OverlayServiceConnection;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/zui/launchersdk/api/OverlayServiceConnection;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/zui/launchersdk/api/ZLauncherClient;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    iget v3, p0, Lcom/zui/launchersdk/api/OverlayServiceConnection;->b:I

    invoke-virtual {v1, v2, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zui/launchersdk/api/OverlayServiceConnection;->c:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----- OverlayServiceConnection  bind ----------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/zui/launchersdk/api/OverlayServiceConnection;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Unable to connect to overlay service"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-boolean p0, p0, Lcom/zui/launchersdk/api/OverlayServiceConnection;->c:Z

    return p0
.end method

.method public final isBinded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launchersdk/api/OverlayServiceConnection;->c:Z

    return p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public final unbind()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- OverlayServiceConnection  unbind ----------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/launchersdk/api/OverlayServiceConnection;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZLauncherClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/zui/launchersdk/api/OverlayServiceConnection;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launchersdk/api/OverlayServiceConnection;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launchersdk/api/OverlayServiceConnection;->c:Z

    :cond_0
    return-void
.end method
