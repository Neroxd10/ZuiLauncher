.class public Lcom/zui/launcher/states/SpringLoadedState;
.super Lcom/zui/launcher/LauncherState;
.source ""


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const/4 v0, 0x6

    const/16 v1, 0x96

    const/16 v2, 0x11f

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/zui/launcher/LauncherState;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method protected getDepthUnchecked(Landroid/content/Context;)F
    .locals 0

    const/high16 p0, 0x3f000000    # 0.5f

    return p0
.end method

.method public getHotseatScaleAndTranslation(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;
    .locals 1

    new-instance p0, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;-><init>(FFF)V

    return-object p0
.end method

.method public getWorkspaceScaleAndTranslation(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;
    .locals 1

    new-instance p0, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;-><init>(FFF)V

    return-object p0
.end method

.method public getWorkspaceScrimAlpha(Lcom/zui/launcher/Launcher;)F
    .locals 0

    const p0, 0x3e99999a    # 0.3f

    return p0
.end method

.method public onStateDisabled(Lcom/zui/launcher/Launcher;)V
    .locals 1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/zui/launcher/Utilities;->fullScreen(Landroid/view/Window;Z)V

    invoke-static {p1}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/dragndrop/DragController;->isDragging()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->showScrimView()V

    :cond_0
    sget-object p0, Lcom/zui/launcher/model/ItemInstallQueue;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/model/ItemInstallQueue;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/zui/launcher/model/ItemInstallQueue;->resumeModelPush(I)V

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getRotationHelper()Lcom/zui/launcher/states/RotationHelper;

    move-result-object p0

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->getOrientationFlag(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/states/RotationHelper;->setCurrentStateRequest(I)V

    return-void
.end method

.method public onStateEnabled(Lcom/zui/launcher/Launcher;)V
    .locals 1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/zui/launcher/Utilities;->fullScreen(Landroid/view/Window;Z)V

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->showPageIndicatorAtCurrentScroll()V

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->hideScrimView()V

    sget-object p0, Lcom/zui/launcher/model/ItemInstallQueue;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/model/ItemInstallQueue;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/zui/launcher/model/ItemInstallQueue;->pauseModelPush(I)V

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getRotationHelper()Lcom/zui/launcher/states/RotationHelper;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/zui/launcher/states/RotationHelper;->setCurrentStateRequest(I)V

    return-void
.end method
