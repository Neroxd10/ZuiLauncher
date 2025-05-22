.class public Lcom/zui/launcher/touch/ItemClickHandler;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Landroid/view/View$OnClickListener;

.field private static final a:Ljava/lang/String; = "ItemClickHandler"

.field static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zui/launcher/touch/ItemClickHandler;->getInstance(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zui/launcher/touch/ItemClickHandler;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/view/View;Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/Launcher;)V
    .locals 9

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120323

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f120324

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v1, 0x7f120348

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x0

    new-instance v6, Lcom/zui/launcher/touch/ItemClickHandler$d;

    invoke-direct {v6, p2, p0, p1}, Lcom/zui/launcher/touch/ItemClickHandler$d;-><init>(Lcom/zui/launcher/Launcher;Landroid/view/View;Lcom/zui/launcher/WorkspaceItemInfo;)V

    new-instance v8, Lcom/zui/launcher/touch/ItemClickHandler$e;

    invoke-direct {v8}, Lcom/zui/launcher/touch/ItemClickHandler$e;-><init>()V

    move-object v2, p2

    invoke-static/range {v2 .. v8}, Lcom/zui/launcher/Utilities;->showDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static b(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/Launcher;)V
    .locals 5

    iget v0, p0, Lcom/zui/launcher/ItemInfo;->subItemType:I

    invoke-static {v0}, Lcom/zui/launcher/IconCreateFactory;->isStarAppIcon(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p0}, Lcom/zui/launcher/IconCreateFactory;->onStarAppIconClicked(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/WorkspaceItemInfo;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDownloadHandler()Lcom/zui/launcher/DownloadSpan;

    move-result-object v0

    invoke-static {p0}, Lcom/zui/launcher/DownloadSpan;->dumpInfoDownloadState(Lcom/zui/launcher/WorkspaceItemInfo;)V

    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfo;->isInstalling()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, p0}, Lcom/zui/launcher/AppStoreUtil;->showInstallToast(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/WorkspaceItemInfo;)V

    return-void

    :cond_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfo;->isReadyDownload()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfo;->isStartDownload()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/DownloadSpan;->pauseTask(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0, v2}, Lcom/zui/launcher/Launcher;->pauseRecommendInfos(Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/zui/launcher/Launcher;->setRecommendInfosReady(Ljava/lang/String;Z)V

    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0, v3}, Lcom/zui/launcher/Launcher;->pauseRecommendInfos(Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfo;->isStartDownload()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/zui/launcher/AppStoreUtil;->isInAppStoreList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherModel;->getRecommendInfos()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getLauncherDownLoadDialog()Lcom/zui/launcher/LauncherDownLoadDialog;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sRecommendInfos.size --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  mCheckStatus --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Lcom/zui/launcher/LauncherDownLoadDialog;->getCheckStatus(Lcom/zui/launcher/Launcher;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Launcher"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->isWifi(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->isMobileConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f12031c

    :goto_1
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, p0, v0}, Lcom/zui/launcher/LauncherDownLoadDialog;->handleThreeDialog(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f12031a

    goto :goto_1

    :cond_7
    const p0, 0x7f12032c

    invoke-static {p1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfo;->isDownloadPause()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/zui/launcher/AppStoreUtil;->isInAppStoreList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getAppStoreReceiver()Lcom/zui/launcher/AppStoreReceiver;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Lcom/zui/launcher/AppStoreReceiver;->handlePauseApp(Lcom/zui/launcher/Launcher;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    iget-object v1, p0, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/zui/launcher/DownloadSpan;->checknetwokAndresumeTask(Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/zui/launcher/AppStoreUtil;->isInAppStoreList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getAppStoreReceiver()Lcom/zui/launcher/AppStoreReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/AppStoreReceiver;->sendTaskPauseMessage(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    iget-object v1, p0, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/DownloadSpan;->pauseTask(Ljava/lang/String;)V

    :goto_3
    iget-object p0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/Launcher;->pauseRecommendInfos(Ljava/lang/String;)V

    :cond_c
    :goto_4
    return-void
.end method

.method private static c(Lcom/zui/launcher/Launcher;Ljava/lang/Runnable;)V
    .locals 11

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120321

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f1200e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v1, 0x7f1200e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v1, 0x7f12031f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v6, Lcom/zui/launcher/touch/ItemClickHandler$a;

    invoke-direct {v6, p1, p0}, Lcom/zui/launcher/touch/ItemClickHandler$a;-><init>(Ljava/lang/Runnable;Lcom/zui/launcher/Launcher;)V

    new-instance v8, Lcom/zui/launcher/touch/ItemClickHandler$b;

    invoke-direct {v8}, Lcom/zui/launcher/touch/ItemClickHandler$b;-><init>()V

    new-instance v10, Lcom/zui/launcher/touch/ItemClickHandler$c;

    invoke-direct {v10}, Lcom/zui/launcher/touch/ItemClickHandler$c;-><init>()V

    const/4 v3, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v10}, Lcom/zui/launcher/Utilities;->showStartRunningAppDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private static d(Lcom/zui/launcher/Launcher;)Z
    .locals 1

    const-string v0, "itemClickStartDefaultApp"

    invoke-static {p0, v0}, Lcom/zui/launcher/util/SettingsValue;->isShowStartRunningDialog(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic e(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p1, p0}, Lcom/zui/launcher/touch/ItemClickHandler;->i(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Landroid/view/View;Lcom/zui/launcher/Launcher;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/zui/launcher/touch/ItemClickHandler;->n(Landroid/view/View;Lcom/zui/launcher/Launcher;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lcom/zui/launcher/Launcher;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/Workspace;->removeAbandonedPromise(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static final getInstance(Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/zui/launcher/touch/g;

    invoke-direct {v0, p0}, Lcom/zui/launcher/touch/g;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic h(Landroid/app/ActivityTaskManager$RootTaskInfo;Lcom/zui/launcher/Launcher;)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->taskId:I

    invoke-virtual {p1}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->moveStackToDisplayPositionAt(IIZ)V

    iget-object p0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskIds:[I

    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget v1, p0, v0

    invoke-static {v1}, Lcom/zui/quickstep/TaskSystemShortcut;->setTaskWindowModeToFullscreen(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static i(Landroid/view/View;Ljava/lang/String;)V
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--------ItemClickHandler  onClick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LauncherClick"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    const-string v2, "b/132900132"

    if-eqz v0, :cond_1

    const-string v0, "onClick 1"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_3

    sget-boolean p0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz p0, :cond_2

    const-string p0, "onClick 2"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/launcher/Workspace;->isFinishedSwitchingState()Z

    move-result v3

    if-nez v3, :cond_5

    sget-boolean p0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz p0, :cond_4

    const-string p0, "onClick 3"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v4, :cond_9

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/zui/launcher/popup/PopupContainerWithArrow;

    if-nez v1, :cond_6

    invoke-virtual {v0, p0}, Lcom/zui/launcher/Launcher;->clickWorkspaceItemInEditViewMode(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_6
    check-cast v3, Lcom/zui/launcher/WorkspaceItemInfo;

    iget v1, v3, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    iget p1, v3, Lcom/zui/launcher/ItemInfo;->subItemType:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    invoke-static {v3, v0}, Lcom/zui/launcher/touch/ItemClickHandler;->b(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/Launcher;)V

    goto/16 :goto_1

    :cond_7
    const/16 v1, 0x9

    if-ne p1, v1, :cond_f

    invoke-static {p0, v3, v0}, Lcom/zui/launcher/touch/ItemClickHandler;->a(Landroid/view/View;Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/Launcher;)V

    goto/16 :goto_1

    :cond_8
    invoke-static {p0, v3, v0, p1}, Lcom/zui/launcher/touch/ItemClickHandler;->onClickAppShortcut(Landroid/view/View;Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/Launcher;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;

    if-eqz p0, :cond_f

    invoke-static {v0}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/popup/PopupContainerWithArrow;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-static {v0}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/popup/PopupContainerWithArrow;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    goto :goto_1

    :cond_9
    instance-of v4, v3, Lcom/zui/launcher/FolderInfo;

    if-eqz v4, :cond_a

    instance-of p1, p0, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz p1, :cond_f

    invoke-static {p0}, Lcom/zui/launcher/touch/ItemClickHandler;->onClickFolderIcon(Landroid/view/View;)V

    goto :goto_1

    :cond_a
    instance-of v4, v3, Lcom/zui/launcher/AppInfo;

    if-eqz v4, :cond_e

    sget-boolean v4, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v4, :cond_b

    const-string v4, "onClick 4"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    check-cast v3, Lcom/zui/launcher/AppInfo;

    if-nez p1, :cond_c

    sget-object p1, Lcom/zui/launcher/model/AppLaunchTracker;->CONTAINER_ALL_APPS:Ljava/lang/String;

    :cond_c
    invoke-static {p0, v3, v0, p1}, Lcom/zui/launcher/touch/ItemClickHandler;->m(Landroid/view/View;Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/Launcher;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/zui/launcher/AppInfo;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_f

    iget-object p0, v3, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz p0, :cond_d

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_d
    invoke-virtual {v3}, Lcom/zui/launcher/AppInfo;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v3}, Lcom/zui/launcher/AppInfo;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "zui.launcher.key"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p0, p1}, Lcom/zui/launcher/Utilities;->saveUsageStat(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-static {}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->getInstance()Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;

    move-result-object p0

    invoke-virtual {p0, v0, v3}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->updateGameAppInfo(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/AppInfo;)V

    goto :goto_1

    :cond_e
    instance-of p1, v3, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-eqz p1, :cond_f

    instance-of p1, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;

    if-eqz p1, :cond_f

    check-cast p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;

    invoke-static {p0, v0}, Lcom/zui/launcher/touch/ItemClickHandler;->k(Lcom/zui/launcher/widget/PendingAppWidgetHostView;Lcom/zui/launcher/Launcher;)V

    :cond_f
    :goto_1
    return-void
.end method

.method private static j(Landroid/view/View;Lcom/zui/launcher/Launcher;Ljava/lang/String;Z)V
    .locals 3

    if-eqz p3, :cond_0

    invoke-static {p0, p1, p2}, Lcom/zui/launcher/touch/ItemClickHandler;->n(Landroid/view/View;Lcom/zui/launcher/Launcher;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Lcom/zui/launcher/ItemInfo;

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/zui/launcher/ItemInfo;

    iget-object p3, p3, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120036

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120035

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120037

    new-instance v2, Lcom/zui/launcher/touch/f;

    invoke-direct {v2, p0, p1, p2}, Lcom/zui/launcher/touch/f;-><init>(Landroid/view/View;Lcom/zui/launcher/Launcher;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f120034

    new-instance v1, Lcom/zui/launcher/touch/e;

    invoke-direct {v1, p1, p2, p3}, Lcom/zui/launcher/touch/e;-><init>(Lcom/zui/launcher/Launcher;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private static k(Lcom/zui/launcher/widget/PendingAppWidgetHostView;Lcom/zui/launcher/Launcher;)V
    .locals 4

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const p0, 0x7f1205ea

    invoke-static {p1, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/LauncherAppWidgetInfo;

    invoke-virtual {p0}, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->isReadyForClickSetup()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    new-instance p0, Lcom/zui/launcher/widget/WidgetManagerHelper;

    invoke-direct {p0, p1}, Lcom/zui/launcher/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v2, v0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Lcom/zui/launcher/widget/WidgetManagerHelper;->findProvider(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/zui/launcher/widget/WidgetAddFlowHandler;

    invoke-direct {v1, p0}, Lcom/zui/launcher/widget/WidgetAddFlowHandler;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    invoke-virtual {v0, v3}, Lcom/zui/launcher/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0x10

    invoke-virtual {v0, p0}, Lcom/zui/launcher/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    iget p0, v0, Lcom/zui/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    const/16 v2, 0xc

    invoke-virtual {v1, p1, p0, v0, v2}, Lcom/zui/launcher/widget/WidgetAddFlowHandler;->startBindFlow(Lcom/zui/launcher/Launcher;ILcom/zui/launcher/ItemInfo;I)V

    goto :goto_0

    :cond_3
    const/16 p0, 0xd

    invoke-virtual {v1, p1, v0, p0}, Lcom/zui/launcher/widget/WidgetAddFlowHandler;->startConfigActivity(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/LauncherAppWidgetInfo;I)Z

    goto :goto_0

    :cond_4
    iget-object v2, v0, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v0, v0, Lcom/zui/launcher/LauncherAppWidgetInfo;->installProgress:I

    if-ltz v0, :cond_5

    move v1, v3

    :cond_5
    invoke-static {p0, p1, v2, v1}, Lcom/zui/launcher/touch/ItemClickHandler;->j(Landroid/view/View;Lcom/zui/launcher/Launcher;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method private static l(Lcom/zui/launcher/Launcher;Landroid/view/View;Lcom/zui/launcher/ItemInfo;)Landroid/view/View;
    .locals 1

    iget p1, p2, Lcom/zui/launcher/ItemInfo;->container:I

    if-lez p1, :cond_0

    invoke-static {p1}, Lcom/zui/launcher/LauncherModel;->getItemInfoById(I)Lcom/zui/launcher/ItemInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p2, p1, Lcom/zui/launcher/ItemInfo;->container:I

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {p0, p2, v0}, Lcom/zui/launcher/Launcher;->getCellLayout(II)Lcom/zui/launcher/CellLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p2, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {p0, p2, p1}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static m(Landroid/view/View;Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/Launcher;Ljava/lang/String;)V
    .locals 5
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_0

    const-string v0, "b/132900132"

    const-string v1, "startAppShortcutOrInfoActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    instance-of v0, p1, Lcom/zui/launcher/PromiseAppInfo;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/zui/launcher/PromiseAppInfo;

    invoke-virtual {v0, p2}, Lcom/zui/launcher/PromiseAppInfo;->getMarketIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_b

    instance-of v1, p1, Lcom/zui/launcher/WorkspaceItemInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/zui/launcher/WorkspaceItemInfo;

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Lcom/zui/launcher/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v1

    :cond_2
    const/4 v1, 0x1

    if-eqz p0, :cond_4

    invoke-virtual {p2}, Lcom/zui/launcher/Launcher;->getAppTransitionManager()Lcom/zui/launcher/LauncherAppTransitionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/launcher/LauncherAppTransitionManager;->supportsAdaptiveIconAnimation()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {p2, p0, p1}, Lcom/zui/launcher/touch/ItemClickHandler;->l(Lcom/zui/launcher/Launcher;Landroid/view/View;Lcom/zui/launcher/ItemInfo;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/ItemInfo;

    invoke-static {p2, v3, v4, v1}, Lcom/zui/launcher/views/FloatingIconView;->fetchIcon(Lcom/zui/launcher/Launcher;Landroid/view/View;Lcom/zui/launcher/ItemInfo;Z)Lcom/zui/launcher/views/FloatingIconView$h;

    goto :goto_1

    :cond_3
    invoke-static {p2, p0, p1, v1}, Lcom/zui/launcher/views/FloatingIconView;->fetchIcon(Lcom/zui/launcher/Launcher;Landroid/view/View;Lcom/zui/launcher/ItemInfo;Z)Lcom/zui/launcher/views/FloatingIconView$h;

    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :cond_5
    iget-object v3, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {p2, v2, v3}, Lcom/zui/launcher/BluePoint;->removePackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/zui/launcher/ShortcutAndWidgetContainer;

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v2, p0}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    if-eqz v2, :cond_7

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p0, v2, v3, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_7
    :goto_2
    invoke-static {p2}, Lcom/android/systemui/shared/system/QuickStepContract;->isExternalMode(Landroid/content/Context;)Z

    move-result v2

    invoke-static {}, Lcom/zui/quickstep/util/DisplayManagerWrapper;->getInstance()Lcom/zui/quickstep/util/DisplayManagerWrapper;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/zui/quickstep/util/DisplayManagerWrapper;->findStackInfoOnHDMIDevice(Lcom/zui/launcher/ItemInfo;)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v3

    if-eqz v2, :cond_9

    if-eqz v3, :cond_9

    invoke-static {p2}, Lcom/zui/launcher/touch/ItemClickHandler;->d(Lcom/zui/launcher/Launcher;)Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, Lcom/zui/launcher/touch/h;

    invoke-direct {p0, v3, p2}, Lcom/zui/launcher/touch/h;-><init>(Landroid/app/ActivityTaskManager$RootTaskInfo;Lcom/zui/launcher/Launcher;)V

    invoke-static {p2, p0}, Lcom/zui/launcher/touch/ItemClickHandler;->c(Lcom/zui/launcher/Launcher;Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_8
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p0

    iget p1, v3, Landroid/app/ActivityTaskManager$RootTaskInfo;->taskId:I

    invoke-virtual {p2}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result p2

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->moveStackToDisplayPositionAt(IIZ)V

    goto :goto_3

    :cond_9
    if-eqz v3, :cond_a

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p0

    iget p1, v3, Landroid/app/ActivityTaskManager$RootTaskInfo;->taskId:I

    invoke-virtual {p2}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Display;->getDisplayId()I

    move-result p3

    invoke-virtual {p0, p1, p3, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->moveStackToDisplayPositionAt(IIZ)V

    new-instance p0, Landroid/content/Intent;

    const-string p1, "zui.display.port.to.disconnect.launcher"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "android.system.task.ExtCast"

    invoke-virtual {p2, p0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    invoke-virtual {p2, p0, v0, p1, p3}, Lcom/zui/launcher/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)Z

    :goto_3
    return-void

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Input must have a valid intent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static n(Landroid/view/View;Lcom/zui/launcher/Launcher;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ItemInfo;

    sget-boolean v1, Lcom/zui/launcher/Utilities;->ATLEAST_Q:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/zui/launcher/pm/InstallSessionHelper;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v1, p1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/pm/InstallSessionHelper;

    iget-object v3, v0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v3, p2}, Lcom/zui/launcher/pm/InstallSessionHelper;->getActiveSessionInfo(Landroid/os/UserHandle;Ljava/lang/String;)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const-class v3, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/LauncherApps;

    :try_start_0
    invoke-virtual {p1, p0}, Lcom/zui/launcher/BaseDraggingActivity;->getActivityLaunchOptionsAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v1, v2, v4}, Landroid/content/pm/LauncherApps;->startPackageInstallerSessionDetailsActivity(Landroid/content/pm/PackageInstaller$SessionInfo;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-object v3, Lcom/zui/launcher/touch/ItemClickHandler;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to launch market intent for package="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v1, Lcom/zui/launcher/util/PackageManagerHelper;

    invoke-direct {v1, p1}, Lcom/zui/launcher/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Lcom/zui/launcher/util/PackageManagerHelper;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p0, p2, v0, v2}, Lcom/zui/launcher/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)Z

    return-void
.end method

.method public static onClickAppShortcut(Landroid/view/View;Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/Launcher;Ljava/lang/String;)V
    .locals 4
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfoWithIcon;->isDisabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--------ItemClickHandler  onClickAppShortcut: shortcut.isDisabled()  tag: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LauncherClick"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit8 v0, v0, 0x3f

    and-int/lit8 v0, v0, -0x5

    and-int/lit8 v0, v0, -0x9

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    iget-object p0, p1, Lcom/zui/launcher/WorkspaceItemInfo;->disabledMessage:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 p3, 0x0

    if-nez p0, :cond_2

    iget-object p0, p1, Lcom/zui/launcher/WorkspaceItemInfo;->disabledMessage:Ljava/lang/CharSequence;

    invoke-static {p2, p0, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    iget p0, p1, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit8 p1, p0, 0x1

    if-eqz p1, :cond_3

    const p0, 0x7f1205e9

    :goto_1
    invoke-static {p2, p0, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_3
    and-int/lit8 p1, p0, 0x10

    if-nez p1, :cond_4

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_5

    :cond_4
    const p0, 0x7f120623

    goto :goto_1

    :cond_5
    :goto_2
    return-void

    :cond_6
    :goto_3
    instance-of v0, p0, Lcom/zui/launcher/BubbleTextView;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/zui/launcher/WorkspaceItemInfo;->hasPromiseIconUi()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_7
    iget-object v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Lcom/zui/launcher/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result p1

    invoke-static {p0, p2, v0, p1}, Lcom/zui/launcher/touch/ItemClickHandler;->j(Landroid/view/View;Lcom/zui/launcher/Launcher;Ljava/lang/String;Z)V

    return-void

    :cond_8
    iget v0, p1, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-nez v0, :cond_a

    invoke-virtual {p1}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_9
    invoke-virtual {p1}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "zui.launcher.key"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v1, v0, v2}, Lcom/zui/launcher/Utilities;->saveUsageStat(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-static {}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->getInstance()Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->updateGameProviderInfo(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/WorkspaceItemInfo;)V

    :cond_a
    invoke-static {p0, p1, p2, p3}, Lcom/zui/launcher/touch/ItemClickHandler;->m(Landroid/view/View;Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/Launcher;Ljava/lang/String;)V

    return-void
.end method

.method public static onClickFolderIcon(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    check-cast p0, Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p0}, Lcom/zui/launcher/folder/FolderIcon;->getFolder()Lcom/zui/launcher/folder/Folder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/AbstractFloatingView;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->getFolderState()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/PagedView;->isPageInTransition()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->playFolderAnimExtraInPro()V

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->openFolderAlphaHandle()V

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->animateOpen()V

    :cond_0
    return-void
.end method
