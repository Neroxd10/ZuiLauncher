.class Lcom/zui/launcher/networksdk/DownloadManager$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/networksdk/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/networksdk/DownloadManager;


# direct methods
.method constructor <init>(Lcom/zui/launcher/networksdk/DownloadManager;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/DownloadManager$b;->a:Lcom/zui/launcher/networksdk/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binding died of \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\', try reconnecting"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DownloadManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/zui/launcher/networksdk/DownloadManager$b;->a:Lcom/zui/launcher/networksdk/DownloadManager;

    invoke-static {p0}, Lcom/zui/launcher/networksdk/DownloadManager;->g(Lcom/zui/launcher/networksdk/DownloadManager;)V

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null binding of \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\', try reconnecting"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DownloadManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/zui/launcher/networksdk/DownloadManager$b;->a:Lcom/zui/launcher/networksdk/DownloadManager;

    invoke-static {p0}, Lcom/zui/launcher/networksdk/DownloadManager;->g(Lcom/zui/launcher/networksdk/DownloadManager;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p1, "DownloadManager"

    const-string v0, "Installer service connected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/launcher/networksdk/DownloadManager$b;->a:Lcom/zui/launcher/networksdk/DownloadManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zui/launcher/networksdk/DownloadManager;->b(Lcom/zui/launcher/networksdk/DownloadManager;I)I

    iget-object v0, p0, Lcom/zui/launcher/networksdk/DownloadManager$b;->a:Lcom/zui/launcher/networksdk/DownloadManager;

    invoke-static {v0}, Lcom/zui/launcher/networksdk/DownloadManager;->d(Lcom/zui/launcher/networksdk/DownloadManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/launcher/networksdk/DownloadManager$b;->a:Lcom/zui/launcher/networksdk/DownloadManager;

    invoke-static {v2}, Lcom/zui/launcher/networksdk/DownloadManager;->c(Lcom/zui/launcher/networksdk/DownloadManager;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/networksdk/DownloadManager$b;->a:Lcom/zui/launcher/networksdk/DownloadManager;

    invoke-static {v0}, Lcom/zui/launcher/networksdk/DownloadManager;->e(Lcom/zui/launcher/networksdk/DownloadManager;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/DownloadManager$b;->a:Lcom/zui/launcher/networksdk/DownloadManager;

    invoke-static {p2}, Lcom/android/settings/core/impl/ICoreService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/settings/core/impl/ICoreService;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zui/launcher/networksdk/DownloadManager;->h(Lcom/zui/launcher/networksdk/DownloadManager;Lcom/android/settings/core/impl/ICoreService;)Lcom/android/settings/core/impl/ICoreService;

    return-void

    :catch_0
    move-exception p2

    const-string v0, "Lost connection to installer service"

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/zui/launcher/networksdk/DownloadManager$b;->a:Lcom/zui/launcher/networksdk/DownloadManager;

    invoke-static {p1}, Lcom/zui/launcher/networksdk/DownloadManager;->f(Lcom/zui/launcher/networksdk/DownloadManager;)V

    iget-object p0, p0, Lcom/zui/launcher/networksdk/DownloadManager$b;->a:Lcom/zui/launcher/networksdk/DownloadManager;

    invoke-static {p0}, Lcom/zui/launcher/networksdk/DownloadManager;->g(Lcom/zui/launcher/networksdk/DownloadManager;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const-string p0, "DownloadManager"

    const-string p1, "Service disconnected"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
