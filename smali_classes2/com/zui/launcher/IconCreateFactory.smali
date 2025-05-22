.class public Lcom/zui/launcher/IconCreateFactory;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/Launcher;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/zui/launcher/IconCreateFactory;->g(Lcom/zui/launcher/Launcher;Ljava/lang/String;)V

    return-void
.end method

.method public static addToWorkspace(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    invoke-static {p0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "IconCreateFactory"

    const-string p1, "addToWorkspace context error"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-direct {v1}, Lcom/zui/launcher/WorkspaceItemInfo;-><init>()V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "downloadUrl"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iput-object v2, v1, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    iput-object p1, v1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-static {p0}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/zui/launcher/WorkspaceItemInfo;->setIcon(Landroid/graphics/Bitmap;)V

    iput-object p2, v1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    const/16 p0, -0x64

    iput p0, v1, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 p0, 0x8

    iput p0, v1, Lcom/zui/launcher/ItemInfo;->itemType:I

    iput p5, v1, Lcom/zui/launcher/ItemInfo;->subItemType:I

    const/4 p0, -0x1

    invoke-virtual {v1, p0}, Lcom/zui/launcher/WorkspaceItemInfo;->setDownloadProgress(I)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Lcom/zui/launcher/ItemInfo;->setReadyDownload(Z)V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    iput-object p0, v1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v0, v1, p1, p3}, Lcom/zui/launcher/IconCreateFactory;->f(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/util/IntArray;Lcom/zui/launcher/WorkspaceItemInfo;[I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/zui/launcher/IconCreateFactory;->c(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/util/IntArray;Lcom/zui/launcher/WorkspaceItemInfo;[I)V

    return-void
.end method

.method private static c(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/util/IntArray;Lcom/zui/launcher/WorkspaceItemInfo;[I)V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addToWorkspace begin : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IconCreateFactory"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p2, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v2, -0x64

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->bindAddScreens(Lcom/zui/launcher/util/IntArray;)V

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/zui/launcher/IconCreateFactory;->d(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/Workspace;Lcom/zui/launcher/WorkspaceItemInfo;)V

    invoke-virtual {p0, p2}, Lcom/zui/launcher/Launcher;->addInRecommendMap(Lcom/zui/launcher/WorkspaceItemInfo;)V

    iget v0, p2, Lcom/zui/launcher/ItemInfo;->container:I

    const/4 v3, 0x0

    if-lez v0, :cond_1

    invoke-static {v0}, Lcom/zui/launcher/LauncherModel;->getItemInfoById(I)Lcom/zui/launcher/ItemInfo;

    move-result-object p0

    instance-of p1, p0, Lcom/zui/launcher/FolderInfo;

    if-eqz p1, :cond_3

    check-cast p0, Lcom/zui/launcher/FolderInfo;

    invoke-virtual {p0, p2, v3}, Lcom/zui/launcher/FolderInfo;->add(Lcom/zui/launcher/WorkspaceItemInfo;Z)V

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    invoke-virtual {p0, p2}, Lcom/zui/launcher/Launcher;->Y0(Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4, p2, p1, v3}, Lcom/zui/launcher/Launcher;->J0(Landroid/view/View;Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/Workspace;Z)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cell occupied status is : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_3

    iget v5, p2, Lcom/zui/launcher/ItemInfo;->container:I

    iget v6, p2, Lcom/zui/launcher/ItemInfo;->screenId:I

    aget v7, p3, v3

    const/4 p0, 0x1

    aget v8, p3, p0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Lcom/zui/launcher/Workspace;->addInScreen(Landroid/view/View;IIIIII)V

    invoke-virtual {p1}, Lcom/zui/launcher/PagedView;->requestLayout()V

    iget p0, p2, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {p1, p0}, Lcom/zui/launcher/Workspace;->getPageIndexForScreenId(I)I

    move-result p0

    invoke-virtual {p1}, Lcom/zui/launcher/PagedView;->updatePageScroll()V

    invoke-virtual {p1, p0}, Lcom/zui/launcher/PagedView;->snapToPage(I)Z

    goto :goto_0

    :cond_2
    const/16 p1, -0x65

    if-ne v0, p1, :cond_3

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lcom/zui/launcher/Hotseat;->addCellAndShortcut(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/Launcher;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private static d(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/Workspace;Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 8

    invoke-virtual {p1}, Lcom/zui/launcher/Workspace;->getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_1

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v6, v6, Lcom/zui/launcher/BubbleTextView;

    if-eqz v6, :cond_0

    instance-of v6, v7, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v6, :cond_0

    check-cast v7, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v6, p2, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v7, v6}, Lcom/zui/launcher/IconCreateFactory;->e(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static dumpInfoDownloadState(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpInfoDownloadState, info installing : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfo;->isInstalling()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IconCreateFactory"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpInfoDownloadState, info ready download : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfo;->isReadyDownload()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpInfoDownloadState, info start download : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfo;->isStartDownload()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpInfoDownloadState, info pause download : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfo;->isDownloadPause()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static e(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfoWithIcon;->isRecommend()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleOneAppWhenDelete delete : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "IconCreateFactory"

    invoke-static {v0, p2}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/zui/launcher/IconCreateFactory;->g(Lcom/zui/launcher/Launcher;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static f(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/IconCreateFactory$a;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/zui/launcher/IconCreateFactory$a;-><init>(Lcom/zui/launcher/Launcher;Ljava/lang/String;Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;)V

    sget-object p0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static g(Lcom/zui/launcher/Launcher;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->getRecommendItem(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v4, v3, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p0}, Lcom/zui/launcher/dragndrop/DeleteInfo;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/dragndrop/DeleteInfo;

    move-result-object v4

    invoke-virtual {v4, p0, v3}, Lcom/zui/launcher/dragndrop/DeleteInfo;->removeOldRecommendInfos(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static h(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    invoke-static {p0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p0

    const-string v0, "IconCreateFactory"

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIconStatus context error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDownloadPercent, packageName= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  pauseIcon=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/Launcher;->pauseRecommendInfos(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public static isNormalRecommandAppIcon(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isStarAppIcon(I)Z
    .locals 1

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static onStarAppIconClicked(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 3

    invoke-static {p1}, Lcom/zui/launcher/IconCreateFactory;->dumpInfoDownloadState(Lcom/zui/launcher/WorkspaceItemInfo;)V

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->isReadyDownload()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->isStartDownload()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->getInstance()Lcom/zui/launcher/leftscreen/StarAppsDownload;

    move-result-object v0

    iget-object v1, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->pause(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/zui/launcher/Launcher;->pauseRecommendInfos(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    const-string v2, "downloadUrl"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->getInstance()Lcom/zui/launcher/leftscreen/StarAppsDownload;

    move-result-object v2

    invoke-virtual {v2, p0, p1, v0}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->download(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->isStartDownload()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->isDownloadPause()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->getInstance()Lcom/zui/launcher/leftscreen/StarAppsDownload;

    move-result-object v0

    iget-object v2, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0, v2}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->resume(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget-object p1, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/zui/launcher/Launcher;->pauseRecommendInfos(Ljava/lang/String;Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static updateDownloadPercent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 6

    invoke-static {p0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p0

    const-string v0, "IconCreateFactory"

    if-nez p0, :cond_0

    const-string v1, "updateDownloadPercent context error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDownloadPercent, packageName= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  percent=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->getRecommendItem(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zui/launcher/WorkspaceItemInfo;->setDownloadProgress(I)V

    invoke-virtual {v4, v1}, Lcom/zui/launcher/ItemInfo;->setReadyDownload(Z)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    invoke-virtual {v4, v1}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    invoke-virtual {v4}, Lcom/zui/launcher/WorkspaceItemInfo;->d()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->getRecommendWidgets(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result p1

    :goto_1
    if-ge v1, p1, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/LauncherAppWidgetInfo;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/zui/launcher/ItemInfo;->setDownloadProgress(I)V

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppWidgetInfo;->c()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static updateIconInstalling(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-static {p0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p0

    const-string v0, "IconCreateFactory"

    if-nez p0, :cond_0

    const-string v1, "updateIconInstalling context error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIconInstalling, packageName= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->getRecommendItem(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/WorkspaceItemInfo;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/zui/launcher/ItemInfo;->setInstallLock(Z)V

    invoke-virtual {v2, v0}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    invoke-virtual {v2, v0}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/zui/launcher/WorkspaceItemInfo;->setDownloadProgress(I)V

    invoke-virtual {v2}, Lcom/zui/launcher/WorkspaceItemInfo;->d()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static updateIconPause(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/zui/launcher/IconCreateFactory;->h(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
