.class public Lcom/zui/launcher/util/DownloadController;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDummyAppDownloadingOrInstalling(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/Launcher;)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDummyAppDownloadingOrInstalling, info.packageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Download"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-static {p1, v0}, Lcom/zui/launcher/AppStoreUtil;->isInAppStoreList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "download from AppStore."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/zui/launcher/AppStoreUtil;->isAppDownloadingOrInstalling(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    invoke-static {}, Lcom/zui/launcher/networksdk/DownloadManager;->getInstance()Lcom/zui/launcher/networksdk/DownloadManager;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/networksdk/DownloadManager;->getDownloadTask(Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTask;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p0, "download from ZuiLauncher."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/download/DownloadTask;->isAppDownloadingOrInstalling()Z

    move-result p0

    return p0

    :cond_2
    const-string p1, "error case, we cannot find download source."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfo;->isStartDownload()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfo;->isDownloadPause()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfo;->isInstalling()Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    const/4 v2, 0x1

    :cond_5
    return v2
.end method
