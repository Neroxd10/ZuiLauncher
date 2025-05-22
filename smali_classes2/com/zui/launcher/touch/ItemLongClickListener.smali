.class public Lcom/zui/launcher/touch/ItemLongClickListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static INSTANCE_ALL_APPS:Landroid/view/View$OnLongClickListener;

.field public static INSTANCE_WORKSPACE:Landroid/view/View$OnLongClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/zui/launcher/touch/i;->a:Lcom/zui/launcher/touch/i;

    sput-object v0, Lcom/zui/launcher/touch/ItemLongClickListener;->INSTANCE_WORKSPACE:Landroid/view/View$OnLongClickListener;

    sget-object v0, Lcom/zui/launcher/touch/j;->a:Lcom/zui/launcher/touch/j;

    sput-object v0, Lcom/zui/launcher/touch/ItemLongClickListener;->INSTANCE_ALL_APPS:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lcom/zui/launcher/touch/ItemLongClickListener;->d(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lcom/zui/launcher/touch/ItemLongClickListener;->c(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static beginDrag(Landroid/view/View;Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/dragndrop/DragOptions;)V
    .locals 2

    iget v0, p2, Lcom/zui/launcher/ItemInfo;->container:I

    if-ltz v0, :cond_1

    invoke-static {p1}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zui/launcher/folder/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0, p3}, Lcom/zui/launcher/folder/Folder;->startDrag(Landroid/view/View;Lcom/zui/launcher/dragndrop/DragOptions;)Z

    return-void

    :cond_1
    :goto_0
    new-instance v0, Lcom/zui/launcher/CellLayout$CellInfo;

    invoke-direct {v0, p0, p2}, Lcom/zui/launcher/CellLayout$CellInfo;-><init>(Landroid/view/View;Lcom/zui/launcher/ItemInfo;)V

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0, v0, p3}, Lcom/zui/launcher/Workspace;->startDrag(Lcom/zui/launcher/CellLayout$CellInfo;Lcom/zui/launcher/dragndrop/DragOptions;)V

    return-void
.end method

.method private static c(Landroid/view/View;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/touch/ItemLongClickListener;->canStartDrag(Lcom/zui/launcher/Launcher;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    sget-object v1, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/Workspace;->isSwitchingState()Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object v1

    new-instance v3, Lcom/zui/launcher/touch/ItemLongClickListener$a;

    invoke-direct {v3, p0, v1}, Lcom/zui/launcher/touch/ItemLongClickListener$a;-><init>(Landroid/view/View;Lcom/zui/launcher/dragndrop/DragController;)V

    invoke-virtual {v1, v3}, Lcom/zui/launcher/dragndrop/DragController;->addDragListener(Lcom/zui/launcher/dragndrop/DragController$DragListener;)V

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v1

    new-instance v3, Lcom/zui/launcher/dragndrop/DragOptions;

    invoke-direct {v3}, Lcom/zui/launcher/dragndrop/DragOptions;-><init>()V

    iget v4, v1, Lcom/zui/launcher/DeviceProfile;->allAppsIconSizePx:I

    int-to-float v4, v4

    iget v1, v1, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    int-to-float v1, v1

    div-float/2addr v4, v1

    iput v4, v3, Lcom/zui/launcher/dragndrop/DragOptions;->intrinsicIconScaleFactor:F

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getAppsView()Lcom/zui/launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v1, p0, v0, v3}, Lcom/zui/launcher/Workspace;->beginDragShared(Landroid/view/View;Lcom/zui/launcher/DragSource;Lcom/zui/launcher/dragndrop/DragOptions;)V

    return v2
.end method

.method public static canStartDrag(Lcom/zui/launcher/Launcher;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/dragndrop/DragController;->isDragging()Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static d(Landroid/view/View;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/Utilities;->isLayoutLocked(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->showLayoutLockedToast()V

    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/PagedView;->isPageInTransition()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-static {v0}, Lcom/zui/launcher/touch/ItemLongClickListener;->canStartDrag(Lcom/zui/launcher/Launcher;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    return v3

    :cond_2
    sget-object v1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/zui/launcher/ItemInfo;

    if-nez v1, :cond_4

    return v3

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/ItemInfo;

    iget v1, v1, Lcom/zui/launcher/ItemInfo;->container:I

    if-gez v1, :cond_5

    invoke-static {v0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object v1

    if-eqz v1, :cond_5

    return v3

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Launcher;->setWaitingForResult(Lcom/zui/launcher/util/PendingRequestArgs;)V

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/ItemInfo;

    new-instance v3, Lcom/zui/launcher/dragndrop/DragOptions;

    invoke-direct {v3}, Lcom/zui/launcher/dragndrop/DragOptions;-><init>()V

    invoke-static {p0, v0, v1, v3}, Lcom/zui/launcher/touch/ItemLongClickListener;->beginDrag(Landroid/view/View;Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/dragndrop/DragOptions;)V

    return v2
.end method
