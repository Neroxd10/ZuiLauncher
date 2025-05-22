.class public Lcom/zui/launcher/AppStoreUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ACTION_CREATE_ICON:Ljava/lang/String; = "com.zui.launcher.action.CREATE_DUMMYICON"

.field public static final ACTION_DOWNLOADTASK_CHANGED:Ljava/lang/String; = "com.zui.launcher.action.DOWNLOADTASK_CHANGED"

.field public static final ACTION_GO_STORE:Ljava/lang/String; = "com.lenovo.leos.appstore.action.LOCAL_MANAGE_CONTAINER"

.field public static final ACTION_PROGRESS_REPORT:Ljava/lang/String; = "com.zui.launcher.action.PROGRESS_REPORT"

.field public static final ACTION_REQUEST_TASK:Ljava/lang/String; = "com.zui.launcher.action.TASK_REQUEST"

.field public static final ACTION_TASKSYNC_RESULT:Ljava/lang/String; = "com.zui.launcher.action.TASKSYNC"

.field public static final ACTION_TASK_DELETE:Ljava/lang/String; = "com.zui.launcher.action.DUMMYICON_DELETE"

.field public static final ACTION_TASK_DOWNLOADFAIL:Ljava/lang/String; = "com.zui.launcher.action.DOWNLOAD_FAILED"

.field public static final ACTION_TASK_INSTALLFAIL:Ljava/lang/String; = "com.zui.launcher.action.INSTALL_FAILED"

.field public static final ACTION_TASK_INSTALLING:Ljava/lang/String; = "com.zui.launcher.action.DUMMY_INSTALL"

.field public static final ACTION_TASK_REQUEST_RESULT:Ljava/lang/String; = "com.zui.launcher.action.TASK_STATE_RESULT"

.field public static final ACTION_UITASK_CHANGED:Ljava/lang/String; = "com.zui.launcher.action.UITASK_CHANGED"

.field public static final ACTION_UITASK_DELETE:Ljava/lang/String; = "com.zui.launcher.action.UITASK_DELETED"

.field public static final KEY_DOWNLOAD_TASK_STATE:Ljava/lang/String; = "task_state"

.field public static final KEY_ICON:Ljava/lang/String; = "dummy_icon"

.field public static final KEY_LABEL:Ljava/lang/String; = "dummy_label"

.field public static final KEY_PACKAGELIST:Ljava/lang/String; = "package_list"

.field public static final KEY_PACKAGENAME:Ljava/lang/String; = "packageName"

.field public static final KEY_PROGRESS:Ljava/lang/String; = "percentage"

.field public static final KEY_STATEMAP:Ljava/lang/String; = "state_map"

.field public static final KEY_TASKSYNC_STATE:Ljava/lang/String; = "state"

.field public static final KEY_VERSIONCODE:Ljava/lang/String; = "versionCode"

.field public static final PERMISSION:Ljava/lang/String; = "com.zui.launcher.permission.REPORT_UITASK"

.field public static final PKG_APPSTORE:Ljava/lang/String; = "com.lenovo.leos.appstore"

.field public static final SEP:Ljava/lang/String; = "#"

.field public static final TAG:Ljava/lang/String; = "AppStoreHelper"

.field public static final TASKSTATE_APPSTORE_VALUE_DELETE:I = 0x3

.field public static final TASKSTATE_APPSTORE_VALUE_DOWNLOAD:I = 0x1

.field public static final TASKSTATE_APPSTORE_VALUE_EXCEPTION:I = 0x5

.field public static final TASKSTATE_APPSTORE_VALUE_PAUSE:I = 0x0

.field public static final TASKSTATE_APPSTORE_VALUE_READY:I = 0x4

.field public static final TASKSTATE_APPSTORE_VALUE_START:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final LLog(Ljava/lang/String;)V
    .locals 2

    const-string v0, "AppStoreHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static containInfo(Landroid/content/Context;Lcom/zui/launcher/WorkspaceItemInfo;)Z
    .locals 2

    iget-object v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/zui/launcher/AppStoreHelperProvider;->loadData(Landroid/content/Context;Ljava/lang/String;)Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->id:I

    int-to-long v0, p1

    invoke-virtual {p0}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->getViewID()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getAppInStoreList(Landroid/content/Context;Ljava/lang/String;)Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;
    .locals 1

    invoke-static {p0, p1}, Lcom/zui/launcher/AppStoreHelperProvider;->loadData(Landroid/content/Context;Ljava/lang/String;)Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.zui.launcher.action.CREATE_DUMMYICON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.zui.launcher.action.DOWNLOADTASK_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.zui.launcher.action.PROGRESS_REPORT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.zui.launcher.action.DUMMYICON_DELETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.zui.launcher.action.DUMMY_INSTALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.zui.launcher.action.DOWNLOAD_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.zui.launcher.action.INSTALL_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.zui.launcher.action.TASKSYNC"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.zui.launcher.action.TASK_STATE_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPackageFilter()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getProgress(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/zui/launcher/AppStoreUtil;->getAppInStoreList(Landroid/content/Context;Ljava/lang/String;)Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->getDownloadProgress()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static isAppDownloadingOrInstalling(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/zui/launcher/AppStoreUtil;->getAppInStoreList(Landroid/content/Context;Ljava/lang/String;)Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "find info :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppStoreHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->isInstalling()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->isDownloading()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method public static isInAppStoreList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/zui/launcher/AppStoreUtil;->getAppInStoreList(Landroid/content/Context;Ljava/lang/String;)Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static showInstallToast(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 1

    invoke-static {p0, p1}, Lcom/zui/launcher/AppStoreUtil;->containInfo(Landroid/content/Context;Lcom/zui/launcher/WorkspaceItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    const v0, 0x7f1200b5

    invoke-static {p0, p1, v0}, Lcom/zui/launcher/AppStoreUtil;->showToast(Lcom/zui/launcher/Launcher;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static showToast(Lcom/zui/launcher/Launcher;Ljava/lang/String;I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->getRecommendItem(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object p1, v2, v0

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
