.class Lcom/zui/launcher/LauncherRecommend$c;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/LauncherRecommend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/LauncherRecommend;


# direct methods
.method constructor <init>(Lcom/zui/launcher/LauncherRecommend;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/LauncherRecommend$c;->a:Lcom/zui/launcher/LauncherRecommend;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PERCENTAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "packagename"

    if-eqz v1, :cond_7

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/zui/launcher/LauncherRecommend$c;->a:Lcom/zui/launcher/LauncherRecommend;

    invoke-static {v1}, Lcom/zui/launcher/LauncherRecommend;->a(Lcom/zui/launcher/LauncherRecommend;)Lcom/zui/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zui/launcher/Launcher;->containsRecommendItem(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/LauncherRecommend$c;->a:Lcom/zui/launcher/LauncherRecommend;

    invoke-static {v1}, Lcom/zui/launcher/LauncherRecommend;->a(Lcom/zui/launcher/LauncherRecommend;)Lcom/zui/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zui/launcher/Launcher;->containsRecommendWidget(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_0
    const-string v1, "percentage"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_1

    move v1, v2

    :cond_1
    iget-object v3, p0, Lcom/zui/launcher/LauncherRecommend$c;->a:Lcom/zui/launcher/LauncherRecommend;

    invoke-static {v3}, Lcom/zui/launcher/LauncherRecommend;->a(Lcom/zui/launcher/LauncherRecommend;)Lcom/zui/launcher/Launcher;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/zui/launcher/Launcher;->getRecommendItem(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v3

    iget-object p0, p0, Lcom/zui/launcher/LauncherRecommend$c;->a:Lcom/zui/launcher/LauncherRecommend;

    invoke-static {p0}, Lcom/zui/launcher/LauncherRecommend;->a(Lcom/zui/launcher/LauncherRecommend;)Lcom/zui/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->getRecommendWidgets(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object p0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v3, v1}, Lcom/zui/launcher/WorkspaceItemInfo;->setDownloadProgress(I)V

    invoke-virtual {v3}, Lcom/zui/launcher/ItemInfo;->isDownloadPause()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "downloadUrl"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/zui/launcher/LauncherRecommend;->isDownloading(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    invoke-virtual {v3, v2}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    :cond_4
    invoke-virtual {v3}, Lcom/zui/launcher/WorkspaceItemInfo;->d()V

    goto :goto_0

    :cond_5
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    invoke-virtual {p1, v1}, Lcom/zui/launcher/ItemInfo;->setDownloadProgress(I)V

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppWidgetInfo;->c()V

    goto :goto_1

    :cond_6
    :goto_2
    return-void

    :cond_7
    const-string p1, "com.kukool.ACTION_SILIENT_INSTALL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "Recommend onReceive ACTION_SILIENT_INSTALL."

    invoke-static {p1}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    const-string p1, "KEY_ACTION_SILIENT_INSTALL_ABS_PATH"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recommend install packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/LauncherRecommend$c;->a:Lcom/zui/launcher/LauncherRecommend;

    invoke-static {p0, p2, p1}, Lcom/zui/launcher/LauncherRecommend;->i(Lcom/zui/launcher/LauncherRecommend;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    const-string p1, "com.kukool.ACTION_SILIENT_INSTALL_RESULT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, "com.zui.launcher.auto_install_result"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    const/4 p1, -0x1

    const-string v0, "returncode"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive ACTION_SILIENT_INSTALL_RESULT ."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/LauncherRecommend$c;->a:Lcom/zui/launcher/LauncherRecommend;

    invoke-static {v0}, Lcom/zui/launcher/LauncherRecommend;->c(Lcom/zui/launcher/LauncherRecommend;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/LauncherRecommend$c;->a:Lcom/zui/launcher/LauncherRecommend;

    invoke-static {v1}, Lcom/zui/launcher/LauncherRecommend;->c(Lcom/zui/launcher/LauncherRecommend;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/zui/launcher/LauncherRecommend$c;->a:Lcom/zui/launcher/LauncherRecommend;

    invoke-static {v0}, Lcom/zui/launcher/LauncherRecommend;->a(Lcom/zui/launcher/LauncherRecommend;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/zui/launcher/LauncherRecommend$c;->a:Lcom/zui/launcher/LauncherRecommend;

    invoke-static {p0}, Lcom/zui/launcher/LauncherRecommend;->a(Lcom/zui/launcher/LauncherRecommend;)Lcom/zui/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/Launcher;->onPackageInstallResult(ILjava/lang/String;)V

    :cond_a
    :goto_3
    return-void
.end method
