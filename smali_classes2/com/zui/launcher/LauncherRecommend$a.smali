.class Lcom/zui/launcher/LauncherRecommend$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/zui/launcher/LauncherRecommend$a;->a:Lcom/zui/launcher/LauncherRecommend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/zui/launcher/LauncherRecommend$a;->a:Lcom/zui/launcher/LauncherRecommend;

    invoke-static {v0}, Lcom/zui/launcher/LauncherRecommend;->a(Lcom/zui/launcher/LauncherRecommend;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/zui/launcher/LauncherRecommend$a;->a:Lcom/zui/launcher/LauncherRecommend;

    invoke-static {v0}, Lcom/zui/launcher/LauncherRecommend;->a(Lcom/zui/launcher/LauncherRecommend;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/zui/launcher/LauncherRecommend$a;->a:Lcom/zui/launcher/LauncherRecommend;

    invoke-static {v0}, Lcom/zui/launcher/LauncherRecommend;->a(Lcom/zui/launcher/LauncherRecommend;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zui/launcher/LauncherRecommend$a;->a:Lcom/zui/launcher/LauncherRecommend;

    invoke-static {v0}, Lcom/zui/launcher/LauncherRecommend;->d(Lcom/zui/launcher/LauncherRecommend;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/zui/launcher/LauncherRecommend$a;->a:Lcom/zui/launcher/LauncherRecommend;

    invoke-static {v0}, Lcom/zui/launcher/LauncherRecommend;->d(Lcom/zui/launcher/LauncherRecommend;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/LauncherRecommend$e;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstallListTask.run() install and lock icon "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/zui/launcher/LauncherRecommend$e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zui/launcher/LauncherRecommend$a;->a:Lcom/zui/launcher/LauncherRecommend;

    invoke-static {v1}, Lcom/zui/launcher/LauncherRecommend;->a(Lcom/zui/launcher/LauncherRecommend;)Lcom/zui/launcher/Launcher;

    move-result-object v1

    iget-object v2, v0, Lcom/zui/launcher/LauncherRecommend$e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/zui/launcher/Launcher;->getRecommendItem(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/LauncherRecommend$a;->a:Lcom/zui/launcher/LauncherRecommend;

    invoke-static {v2}, Lcom/zui/launcher/LauncherRecommend;->a(Lcom/zui/launcher/LauncherRecommend;)Lcom/zui/launcher/Launcher;

    move-result-object v2

    iget-object v3, v0, Lcom/zui/launcher/LauncherRecommend$e;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/zui/launcher/Launcher;->getRecommendWidgets(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/launcher/LauncherRecommend$a;->a:Lcom/zui/launcher/LauncherRecommend;

    invoke-static {v3}, Lcom/zui/launcher/LauncherRecommend;->a(Lcom/zui/launcher/LauncherRecommend;)Lcom/zui/launcher/Launcher;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v6, :cond_4

    invoke-virtual {v6, v3}, Lcom/zui/launcher/ItemInfo;->setInstallLock(Z)V

    invoke-virtual {v6, v4}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    invoke-virtual {v6, v4}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    invoke-virtual {v6}, Lcom/zui/launcher/WorkspaceItemInfo;->d()V

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-nez v6, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v6, v3}, Lcom/zui/launcher/ItemInfo;->setInstallLock(Z)V

    invoke-virtual {v6, v4}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    invoke-virtual {v6, v4}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    invoke-virtual {v6}, Lcom/zui/launcher/LauncherAppWidgetInfo;->c()V

    goto :goto_2

    :cond_7
    iget-object v5, p0, Lcom/zui/launcher/LauncherRecommend$a;->a:Lcom/zui/launcher/LauncherRecommend;

    iget-object v6, v0, Lcom/zui/launcher/LauncherRecommend$e;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/zui/launcher/LauncherRecommend$e;->b:Ljava/lang/String;

    invoke-static {v5, v6, v0}, Lcom/zui/launcher/LauncherRecommend;->e(Lcom/zui/launcher/LauncherRecommend;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "success :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v1, :cond_8

    const-string v5, "catch silentInstall failed. reset download. kill download task."

    invoke-static {v5}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/zui/launcher/ItemInfo;->setInstallLock(Z)V

    invoke-virtual {v1, v4}, Lcom/zui/launcher/WorkspaceItemInfo;->setDownloadProgress(I)V

    invoke-virtual {v1, v3}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    invoke-virtual {v1, v3}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    invoke-virtual {v1}, Lcom/zui/launcher/WorkspaceItemInfo;->d()V

    iget-object v5, p0, Lcom/zui/launcher/LauncherRecommend$a;->a:Lcom/zui/launcher/LauncherRecommend;

    invoke-static {v5}, Lcom/zui/launcher/LauncherRecommend;->f(Lcom/zui/launcher/LauncherRecommend;)Landroid/os/Handler;

    move-result-object v5

    const v6, 0x30d41

    iget-object v7, v1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    iget-object v6, p0, Lcom/zui/launcher/LauncherRecommend$a;->a:Lcom/zui/launcher/LauncherRecommend;

    invoke-static {v6}, Lcom/zui/launcher/LauncherRecommend;->f(Lcom/zui/launcher/LauncherRecommend;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget v5, v1, Lcom/zui/launcher/ItemInfo;->subItemType:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_9

    iget-object v5, p0, Lcom/zui/launcher/LauncherRecommend$a;->a:Lcom/zui/launcher/LauncherRecommend;

    invoke-static {v5}, Lcom/zui/launcher/LauncherRecommend;->a(Lcom/zui/launcher/LauncherRecommend;)Lcom/zui/launcher/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->getDownloadHandler()Lcom/zui/launcher/DownloadSpan;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/zui/launcher/LauncherRecommend$a;->a:Lcom/zui/launcher/LauncherRecommend;

    invoke-static {v5}, Lcom/zui/launcher/LauncherRecommend;->a(Lcom/zui/launcher/LauncherRecommend;)Lcom/zui/launcher/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->getDownloadHandler()Lcom/zui/launcher/DownloadSpan;

    move-result-object v5

    iget-object v6, v1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Lcom/zui/launcher/DownloadSpan;->deleteTask(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    iget-object v5, p0, Lcom/zui/launcher/LauncherRecommend$a;->a:Lcom/zui/launcher/LauncherRecommend;

    invoke-virtual {v5, v1}, Lcom/zui/launcher/LauncherRecommend;->removeDownload(Lcom/zui/launcher/WorkspaceItemInfo;)V

    goto :goto_3

    :cond_a
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-nez v1, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {v1, v4}, Lcom/zui/launcher/ItemInfo;->setInstallLock(Z)V

    invoke-virtual {v1, v4}, Lcom/zui/launcher/ItemInfo;->setDownloadProgress(I)V

    invoke-virtual {v1, v3}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    invoke-virtual {v1, v3}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    invoke-virtual {v1}, Lcom/zui/launcher/LauncherAppWidgetInfo;->c()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "catch silentInstall failed. "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/zui/launcher/LauncherAppWidgetInfo;->label:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zui/launcher/LauncherRecommend$a;->a:Lcom/zui/launcher/LauncherRecommend;

    invoke-static {v2}, Lcom/zui/launcher/LauncherRecommend;->a(Lcom/zui/launcher/LauncherRecommend;)Lcom/zui/launcher/Launcher;

    move-result-object v2

    iget-object v5, p0, Lcom/zui/launcher/LauncherRecommend$a;->a:Lcom/zui/launcher/LauncherRecommend;

    invoke-static {v5}, Lcom/zui/launcher/LauncherRecommend;->a(Lcom/zui/launcher/LauncherRecommend;)Lcom/zui/launcher/Launcher;

    move-result-object v5

    const v6, 0x7f120405

    new-array v7, v3, [Ljava/lang/Object;

    iget-object v1, v1, Lcom/zui/launcher/LauncherAppWidgetInfo;->label:Ljava/lang/String;

    aput-object v1, v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :cond_c
    return-void

    :cond_d
    :goto_5
    iget-object v0, p0, Lcom/zui/launcher/LauncherRecommend$a;->a:Lcom/zui/launcher/LauncherRecommend;

    invoke-static {v0}, Lcom/zui/launcher/LauncherRecommend;->c(Lcom/zui/launcher/LauncherRecommend;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/LauncherRecommend$a;->a:Lcom/zui/launcher/LauncherRecommend;

    invoke-static {p0}, Lcom/zui/launcher/LauncherRecommend;->b(Lcom/zui/launcher/LauncherRecommend;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
