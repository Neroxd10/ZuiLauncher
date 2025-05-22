.class public Lcom/zui/launcher/dragndrop/DeleteInfo;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final LOGTAG:Ljava/lang/String; = "Launcher.DeleteView"

.field private static c:Lcom/zui/launcher/dragndrop/DeleteInfo;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/dragndrop/DeleteInfo;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    check-cast p1, Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->hasWhiteBg()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0805c1

    goto :goto_0

    :cond_0
    const p1, 0x7f0805c2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DeleteInfo;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private b(Lcom/zui/launcher/Launcher;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDownloadHandler()Lcom/zui/launcher/DownloadSpan;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/zui/launcher/DownloadSpan;->checkFileAndDownLoadDao(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private c(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;)V
    .locals 1

    iget p0, p2, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v0, -0x64

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    iget p1, p2, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Workspace;->getScreenWithId(I)Lcom/zui/launcher/CellLayout;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    iget p1, p2, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget p2, p2, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object p0

    instance-of p1, p0, Lcom/zui/launcher/globalsearch/ScrollTextViewObserverListener;

    if-eqz p1, :cond_3

    move-object p1, p0

    check-cast p1, Lcom/zui/launcher/globalsearch/ScrollTextViewObserverListener;

    const-string p2, "GlobalSearch.HotWordDownLoad"

    const-string v0, "remove ObserverManager in "

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, p1}, Lcom/zui/launcher/globalsearch/ScrollTextViewObserverListener;->isRegister(Lcom/zui/launcher/globalsearch/ScrollTextViewObserverListener;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/zui/launcher/globalsearch/ObserverManager;->getInstance()Lcom/zui/launcher/globalsearch/ObserverManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/zui/launcher/globalsearch/ObserverManager;->remove(Lcom/zui/launcher/globalsearch/ScrollTextViewObserverListener;)V

    :cond_3
    instance-of p1, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;

    if-eqz p1, :cond_4

    check-cast p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;

    invoke-virtual {p0}, Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;->removeDelayTask()V

    :cond_4
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zui/launcher/dragndrop/DeleteInfo;
    .locals 1

    sget-object v0, Lcom/zui/launcher/dragndrop/DeleteInfo;->c:Lcom/zui/launcher/dragndrop/DeleteInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/dragndrop/DeleteInfo;

    invoke-direct {v0, p0}, Lcom/zui/launcher/dragndrop/DeleteInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zui/launcher/dragndrop/DeleteInfo;->c:Lcom/zui/launcher/dragndrop/DeleteInfo;

    :cond_0
    sget-object p0, Lcom/zui/launcher/dragndrop/DeleteInfo;->c:Lcom/zui/launcher/dragndrop/DeleteInfo;

    return-object p0
.end method

.method public static getUninstallTarget(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/ComponentName;
    .locals 3

    instance-of v0, p1, Lcom/zui/launcher/AppInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/zui/launcher/AppInfo;

    iget-object v0, p1, Lcom/zui/launcher/AppInfo;->intent:Landroid/content/Intent;

    :goto_0
    iget-object p1, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/zui/launcher/WorkspaceItemInfo;

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    goto :goto_0

    :cond_1
    move-object p1, v1

    move-object v0, p1

    :goto_1
    if-eqz v0, :cond_2

    const-class v2, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/LauncherApps;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public static isDeleteEnabled(Landroid/content/Context;Lcom/zui/launcher/ItemInfo;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static printDeleteInfo(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->isDebugApp()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Launcher.DeleteView"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static removeWorkspaceOrFolderItem(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, Lcom/zui/launcher/Launcher;->removeItem(Landroid/view/View;Lcom/zui/launcher/ItemInfo;Z)Z

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/Workspace;->stripEmptyScreens()V

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p1

    const p2, 0x7f120411

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static startUninstallActivity(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;)Z
    .locals 4

    invoke-static {p0, p1}, Lcom/zui/launcher/dragndrop/DeleteInfo;->getUninstallTarget(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const p1, 0x7f1206b3

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "package"

    invoke-static {v3, v2, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10800000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    iget-object p1, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    const-string v1, "android.intent.extra.USER"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    :goto_0
    return v1
.end method


# virtual methods
.method a(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;)Landroid/view/View;
    .locals 3

    const/4 p0, 0x0

    if-eqz p2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current view ==== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/dragndrop/DeleteInfo;->printDeleteInfo(Ljava/lang/String;)V

    iget v0, p2, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p1

    iget v0, p2, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {p1, v0}, Lcom/zui/launcher/Workspace;->getScreenWithId(I)Lcom/zui/launcher/CellLayout;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/16 v1, -0x65

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/zui/launcher/LauncherModel;->getItemInfoById(I)Lcom/zui/launcher/ItemInfo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current parentInfo ==== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/dragndrop/DeleteInfo;->printDeleteInfo(Ljava/lang/String;)V

    instance-of v0, v0, Lcom/zui/launcher/FolderInfo;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p1

    iget v0, p2, Lcom/zui/launcher/ItemInfo;->container:I

    invoke-virtual {p1, v0}, Lcom/zui/launcher/Workspace;->getHomescreenIconByItemId(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    instance-of v0, p1, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz v0, :cond_2

    const-string v0, "fold item, found foldericon!"

    invoke-static {v0}, Lcom/zui/launcher/dragndrop/DeleteInfo;->printDeleteInfo(Ljava/lang/String;)V

    check-cast p1, Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p1}, Lcom/zui/launcher/folder/FolderIcon;->getFolder()Lcom/zui/launcher/folder/Folder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/folder/Folder;->getContent()Lcom/zui/launcher/folder/FolderPagedView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/zui/launcher/folder/FolderPagedView;->getChildByItemInfo(Lcom/zui/launcher/ItemInfo;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/CellLayout;

    goto :goto_0

    :cond_2
    move-object p1, p0

    :goto_0
    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "current parent ==== "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/dragndrop/DeleteInfo;->printDeleteInfo(Ljava/lang/String;)V

    iget p0, p2, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget p2, p2, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {p1, p0, p2}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method public endDrag(Lcom/zui/launcher/dragndrop/DragDeleteView;Z)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endDrag isDeferred ==== "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/dragndrop/DeleteInfo;->printDeleteInfo(Ljava/lang/String;)V

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/dragndrop/DragDeleteView;->remove()V

    :cond_0
    return-void
.end method

.method public getCurrentDeleteInApps(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getAppsView()Lcom/zui/launcher/allapps/AllAppsContainerView;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public getWidgetBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DeleteInfo;->b:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public removeDownloadingView(Lcom/zui/launcher/ItemInfo;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/zui/launcher/LauncherModel;->mDownloadingApps:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeDownloadingView  packageName -->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " contains -->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/dragndrop/DeleteInfo;->printDeleteInfo(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    sget-object p1, Lcom/zui/launcher/LauncherModel;->mDownloadingApps:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeDownloadingView exception -->"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/dragndrop/DeleteInfo;->printDeleteInfo(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public removeItemByInfo(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/zui/launcher/dragndrop/DeleteInfo;->removeItemByInfo(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;Z)V

    return-void
.end method

.method public removeItemByInfo(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeItemByInfo---- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/dragndrop/DeleteInfo;->printDeleteInfo(Ljava/lang/String;)V

    iget v0, p2, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_0

    instance-of p3, p2, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/dragndrop/DeleteInfo;->removeView(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;)Landroid/view/View;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/zui/launcher/model/ModelWriter;->deleteItemFromDatabase(Lcom/zui/launcher/ItemInfo;)V

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/model/ModelWriter;->removeGameProvider(Landroid/content/Context;Lcom/zui/launcher/ItemInfo;)V

    goto :goto_2

    :cond_0
    invoke-static {p1, p2}, Lcom/zui/launcher/dragndrop/DeleteInfo;->startUninstallActivity(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;)Z

    goto :goto_2

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/dragndrop/DeleteInfo;->removeView(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;)Landroid/view/View;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/zui/launcher/dragndrop/DeleteInfo;->removeWorkspaceOrFolderItem(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->timeViewFlagChanged()V

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x7

    if-eq v0, v2, :cond_6

    const/16 v2, 0x9

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    const/16 v2, 0x8

    if-ne v0, v2, :cond_7

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/dragndrop/DeleteInfo;->removeView(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;)Landroid/view/View;

    move-object v0, p2

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/Launcher;->removeRecommandShortcut(Lcom/zui/launcher/WorkspaceItemInfo;)V

    iget v2, v0, Lcom/zui/launcher/ItemInfo;->subItemType:I

    invoke-static {v2}, Lcom/zui/launcher/IconCreateFactory;->isStarAppIcon(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->deleteDownloadTask(Lcom/zui/launcher/Launcher;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget v2, v0, Lcom/zui/launcher/ItemInfo;->subItemType:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_5

    invoke-virtual {p1, v0}, Lcom/zui/launcher/Launcher;->removeDownloadTask(Lcom/zui/launcher/ItemInfo;)V

    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/zui/launcher/model/ModelWriter;->deleteItemFromDatabase(Lcom/zui/launcher/ItemInfo;)V

    xor-int/lit8 p2, p3, 0x1

    invoke-static {p1, v0, p2}, Lcom/zui/launcher/AppStoreHelperProvider;->deleteItem(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/WorkspaceItemInfo;Z)V

    iget-object p2, v0, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-static {p2}, Lcom/zui/launcher/LauncherModel;->removeDownloadingApp(Ljava/lang/String;)V

    iget-object p2, v0, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/dragndrop/DeleteInfo;->b(Lcom/zui/launcher/Launcher;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/dragndrop/DeleteInfo;->c(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;)V

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/dragndrop/DeleteInfo;->removeView(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;)Landroid/view/View;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/zui/launcher/model/ModelWriter;->deleteItemFromDatabase(Lcom/zui/launcher/ItemInfo;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public removeOldRecommendInfos(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;)V
    .locals 2

    iget v0, p2, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/16 v1, 0x8

    iput v1, p2, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/zui/launcher/dragndrop/DeleteInfo;->removeItemByInfo(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;Z)V

    iput v0, p2, Lcom/zui/launcher/ItemInfo;->itemType:I

    return-void
.end method

.method public removeView(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;)Landroid/view/View;
    .locals 4

    iget v0, p2, Lcom/zui/launcher/ItemInfo;->container:I

    const/4 v1, 0x0

    const/16 v2, -0x64

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeView, screenId---- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/dragndrop/DeleteInfo;->printDeleteInfo(Ljava/lang/String;)V

    iget v2, p2, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v0, v2}, Lcom/zui/launcher/Workspace;->getScreenWithId(I)Lcom/zui/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p2, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v2, p2, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/zui/launcher/dragndrop/DeleteInfo;->removeDownloadingView(Lcom/zui/launcher/ItemInfo;)V

    move-object p0, v1

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/16 p0, -0x65

    if-ne v0, p0, :cond_2

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object v1

    iget p0, p2, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget p2, p2, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {v1, p0, p2}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/zui/launcher/LauncherModel;->getItemInfoById(I)Lcom/zui/launcher/ItemInfo;

    move-result-object p0

    instance-of v0, p0, Lcom/zui/launcher/FolderInfo;

    if-eqz v0, :cond_3

    instance-of v0, p2, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/zui/launcher/FolderInfo;

    check-cast p2, Lcom/zui/launcher/WorkspaceItemInfo;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/zui/launcher/FolderInfo;->remove(Lcom/zui/launcher/WorkspaceItemInfo;Z)V

    invoke-virtual {p0}, Lcom/zui/launcher/FolderInfo;->getCount()I

    move-result p0

    const/4 p2, 0x1

    if-gt p0, p2, :cond_3

    const p0, 0x7ffff

    invoke-static {p1, p2, p0}, Lcom/zui/launcher/AbstractFloatingView;->closeOpenViews(Lcom/zui/launcher/views/ActivityContext;ZI)V

    :cond_3
    move-object p0, v1

    :goto_0
    if-eqz v1, :cond_4

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->cancelLongPress()V

    invoke-virtual {v1, p0}, Lcom/zui/launcher/CellLayout;->removeView(Landroid/view/View;)V

    instance-of p2, v1, Lcom/zui/launcher/HotseatLayout;

    if-eqz p2, :cond_4

    check-cast v1, Lcom/zui/launcher/HotseatLayout;

    invoke-virtual {v1}, Lcom/zui/launcher/HotseatLayout;->reorderAllIcons()V

    :cond_4
    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/Workspace;->stripEmptyScreens()V

    :cond_5
    return-object p0
.end method

.method public resetWidgetBg(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    check-cast p1, Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->hasWhiteBg()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0805c1

    goto :goto_0

    :cond_0
    const p1, 0x7f0805c2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DeleteInfo;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method
