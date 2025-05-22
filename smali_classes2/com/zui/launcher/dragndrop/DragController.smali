.class public Lcom/zui/launcher/dragndrop/DragController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/dragndrop/DragDriver$EventListener;
.implements Lcom/zui/launcher/util/TouchController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/dragndrop/DragController$DragListener;
    }
.end annotation


# instance fields
.field a:Lcom/zui/launcher/Launcher;

.field private b:Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;

.field private c:Landroid/graphics/Rect;

.field private final d:[I

.field private e:Lcom/zui/launcher/dragndrop/DragDriver;

.field private f:Lcom/zui/launcher/dragndrop/DragOptions;

.field private g:I

.field private h:I

.field private i:Lcom/zui/launcher/DropTarget$DragObject;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/DropTarget;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/dragndrop/DragController$DragListener;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/os/IBinder;

.field private m:Landroid/view/View;

.field protected mIsInPreDrag:Z

.field private n:Lcom/zui/launcher/DropTarget;

.field o:[I

.field p:J

.field q:I

.field private r:[I

.field private s:Landroid/graphics/Rect;

.field private t:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->c:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/zui/launcher/dragndrop/DragController;->d:[I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zui/launcher/dragndrop/DragController;->e:Lcom/zui/launcher/dragndrop/DragDriver;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/zui/launcher/dragndrop/DragController;->j:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/zui/launcher/dragndrop/DragController;->k:Ljava/util/ArrayList;

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/zui/launcher/dragndrop/DragController;->o:[I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/zui/launcher/dragndrop/DragController;->p:J

    const/4 v1, 0x0

    iput v1, p0, Lcom/zui/launcher/dragndrop/DragController;->q:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->r:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->s:Landroid/graphics/Rect;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->t:Landroid/os/Handler;

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    new-instance v0, Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;

    invoke-direct {v0, p1}, Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;-><init>(Lcom/zui/launcher/Launcher;)V

    iput-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->b:Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/dragndrop/DragController;)Lcom/zui/launcher/DropTarget$DragObject;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    return-object p0
.end method

.method private b()V
    .locals 3

    iget-boolean v0, p0, Lcom/zui/launcher/dragndrop/DragController;->mIsInPreDrag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->f:Lcom/zui/launcher/dragndrop/DragOptions;

    iget-object v0, v0, Lcom/zui/launcher/dragndrop/DragOptions;->preDragCondition:Lcom/zui/launcher/dragndrop/DragOptions$PreDragCondition;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    invoke-interface {v0, v2, v1}, Lcom/zui/launcher/dragndrop/DragOptions$PreDragCondition;->onPreDragEnd(Lcom/zui/launcher/DropTarget$DragObject;Z)V

    :cond_0
    iput-boolean v1, p0, Lcom/zui/launcher/dragndrop/DragController;->mIsInPreDrag:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->f:Lcom/zui/launcher/dragndrop/DragOptions;

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragController;->k:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/dragndrop/DragController$DragListener;

    invoke-interface {v0}, Lcom/zui/launcher/dragndrop/DragController$DragListener;->onDragEnd()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->f:Lcom/zui/launcher/dragndrop/DragOptions;

    iget-object v0, v0, Lcom/zui/launcher/dragndrop/DragOptions;->preDragCondition:Lcom/zui/launcher/dragndrop/DragOptions$PreDragCondition;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/zui/launcher/dragndrop/DragOptions$PreDragCondition;->onPreDragEnd(Lcom/zui/launcher/DropTarget$DragObject;Z)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/dragndrop/DragController;->mIsInPreDrag:Z

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragController;->k:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/dragndrop/DragController$DragListener;

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/DragController;->f:Lcom/zui/launcher/dragndrop/DragOptions;

    invoke-interface {v1, v2, v3}, Lcom/zui/launcher/dragndrop/DragController$DragListener;->onDragStart(Lcom/zui/launcher/DropTarget$DragObject;Lcom/zui/launcher/dragndrop/DragOptions;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d(Lcom/zui/launcher/DropTarget;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->n:Lcom/zui/launcher/DropTarget;

    if-eqz p1, :cond_2

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    invoke-interface {v0, v1}, Lcom/zui/launcher/DropTarget;->onDragExit(Lcom/zui/launcher/DropTarget$DragObject;)V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    invoke-interface {p1, v0}, Lcom/zui/launcher/DropTarget;->onDragEnter(Lcom/zui/launcher/DropTarget$DragObject;)V

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    invoke-interface {p1, v0}, Lcom/zui/launcher/DropTarget;->onDragOver(Lcom/zui/launcher/DropTarget$DragObject;)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    invoke-interface {v0, v1}, Lcom/zui/launcher/DropTarget;->onDragExit(Lcom/zui/launcher/DropTarget$DragObject;)V

    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragController;->n:Lcom/zui/launcher/DropTarget;

    return-void
.end method

.method private e(Lcom/zui/launcher/DropTarget$DragObject;IIIIF)V
    .locals 6

    iget-object p3, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragSource:Lcom/zui/launcher/DragSource;

    instance-of v0, p3, Lcom/zui/launcher/Workspace;

    if-nez v0, :cond_0

    instance-of p3, p3, Lcom/zui/launcher/folder/Folder;

    if-eqz p3, :cond_1

    :cond_0
    iget-object p3, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    instance-of p3, p3, Lcom/zui/launcher/WorkspaceItemInfo;

    if-nez p3, :cond_2

    :cond_1
    iget-object p3, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragSource:Lcom/zui/launcher/DragSource;

    instance-of p3, p3, Lcom/zui/launcher/allapps/AllAppsContainerView;

    if-eqz p3, :cond_3

    iget-object p3, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    instance-of p3, p3, Lcom/zui/launcher/AppInfo;

    if-eqz p3, :cond_3

    :cond_2
    iget-object p3, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v0, p3}, Lcom/zui/launcher/dragndrop/DeleteInfo;->isDeleteEnabled(Landroid/content/Context;Lcom/zui/launcher/ItemInfo;)Z

    move-result p3

    if-eqz p3, :cond_3

    new-instance p3, Lcom/zui/launcher/dragndrop/DragDeleteIcon;

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    move-object v0, p3

    move v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/dragndrop/DragDeleteIcon;-><init>(Lcom/zui/launcher/Launcher;IIIF)V

    iput-object p3, p1, Lcom/zui/launcher/DropTarget$DragObject;->deleteView:Lcom/zui/launcher/dragndrop/DragDeleteView;

    :cond_3
    return-void
.end method

.method private f(Landroid/view/View;Z)V
    .locals 4

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    sget-object v1, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;J)V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/zui/launcher/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    iget-object v0, p0, Lcom/zui/launcher/DropTarget$DragObject;->dragSource:Lcom/zui/launcher/DragSource;

    invoke-interface {v0, p1, p0, p2}, Lcom/zui/launcher/DragSource;->onDropCompleted(Landroid/view/View;Lcom/zui/launcher/DropTarget$DragObject;Z)V

    return-void
.end method

.method private g(Lcom/zui/launcher/DropTarget;Ljava/lang/Runnable;)V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->d:[I

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    const/4 v2, 0x0

    aget v3, v0, v2

    iput v3, v1, Lcom/zui/launcher/DropTarget$DragObject;->x:I

    const/4 v3, 0x1

    aget v0, v0, v3

    iput v0, v1, Lcom/zui/launcher/DropTarget$DragObject;->y:I

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->n:Lcom/zui/launcher/DropTarget;

    if-eq p1, v0, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/zui/launcher/DropTarget;->onDragExit(Lcom/zui/launcher/DropTarget$DragObject;)V

    :cond_0
    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragController;->n:Lcom/zui/launcher/DropTarget;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    invoke-interface {p1, v0}, Lcom/zui/launcher/DropTarget;->onDragEnter(Lcom/zui/launcher/DropTarget$DragObject;)V

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    iput-boolean v3, v0, Lcom/zui/launcher/DropTarget$DragObject;->dragComplete:Z

    iget-boolean v1, p0, Lcom/zui/launcher/dragndrop/DragController;->mIsInPreDrag:Z

    if-eqz v1, :cond_5

    if-eqz v0, :cond_2

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    instance-of v0, v0, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-nez v0, :cond_5

    :cond_2
    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    invoke-interface {p1, p2}, Lcom/zui/launcher/DropTarget;->onDragExit(Lcom/zui/launcher/DropTarget$DragObject;)V

    :cond_3
    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    sget-object p2, Lcom/zui/launcher/LauncherState;->SPRING_LOADED:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p1, p2}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    sget-object p1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;J)V

    :cond_4
    return-void

    :cond_5
    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    invoke-interface {p1, v0}, Lcom/zui/launcher/DropTarget;->onDragExit(Lcom/zui/launcher/DropTarget$DragObject;)V

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    invoke-interface {p1, v0}, Lcom/zui/launcher/DropTarget;->acceptDrop(Lcom/zui/launcher/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_6
    iget-object p2, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->f:Lcom/zui/launcher/dragndrop/DragOptions;

    invoke-interface {p1, p2, v0}, Lcom/zui/launcher/DropTarget;->onDrop(Lcom/zui/launcher/DropTarget$DragObject;Lcom/zui/launcher/dragndrop/DragOptions;)V

    :goto_0
    move v2, v3

    :cond_7
    instance-of p2, p1, Landroid/view/View;

    if-eqz p2, :cond_8

    check-cast p1, Landroid/view/View;

    goto :goto_1

    :cond_8
    const/4 p1, 0x0

    :goto_1
    iget-object p2, p0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p2}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object p2

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    invoke-virtual {p2, v0, p1}, Lcom/zui/launcher/logging/UserEventDispatcher;->logDragNDrop(Lcom/zui/launcher/DropTarget$DragObject;Landroid/view/View;)V

    invoke-direct {p0, p1, v2}, Lcom/zui/launcher/dragndrop/DragController;->f(Landroid/view/View;Z)V

    return-void
.end method

.method private h()V
    .locals 4

    invoke-virtual {p0}, Lcom/zui/launcher/dragndrop/DragController;->isDragging()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iput-object v1, p0, Lcom/zui/launcher/dragndrop/DragController;->e:Lcom/zui/launcher/dragndrop/DragDriver;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    iget-object v3, v2, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    if-eqz v3, :cond_2

    iget-boolean v0, v2, Lcom/zui/launcher/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    if-nez v0, :cond_1

    invoke-virtual {v3}, Lcom/zui/launcher/dragndrop/DragView;->remove()V

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    :cond_0
    iput-object v1, v2, Lcom/zui/launcher/DropTarget$DragObject;->orginalView:Landroid/view/View;

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Lcom/zui/launcher/dragndrop/DragController;->mIsInPreDrag:Z

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/zui/launcher/DropTarget$DragObject;->orginalView:Landroid/view/View;

    const/4 v3, -0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/zui/launcher/dragndrop/DragController;->animateDragViewToOriginalPosition(Ljava/lang/Runnable;Landroid/view/View;I)V

    :goto_0
    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    iput-object v1, v2, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    goto :goto_1

    :cond_2
    iput-object v1, v2, Lcom/zui/launcher/DropTarget$DragObject;->orginalView:Landroid/view/View;

    :goto_1
    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v1}, Lcom/zui/launcher/dragndrop/DeleteInfo;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/dragndrop/DeleteInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    iget-object v2, v2, Lcom/zui/launcher/DropTarget$DragObject;->deleteView:Lcom/zui/launcher/dragndrop/DragDeleteView;

    invoke-virtual {v1, v2, v0}, Lcom/zui/launcher/dragndrop/DeleteInfo;->endDrag(Lcom/zui/launcher/dragndrop/DragDeleteView;Z)V

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/zui/launcher/dragndrop/DragController;->b()V

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/HotseatLayout;->resetDragSourceTag()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    if-eqz v0, :cond_5

    iput-object v1, v0, Lcom/zui/launcher/DropTarget$DragObject;->orginalView:Landroid/view/View;

    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragController;->b:Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;->releaseVelocityTracker()V

    return-void
.end method

.method private i(II[I)Lcom/zui/launcher/DropTarget;
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    iput p1, v0, Lcom/zui/launcher/DropTarget$DragObject;->x:I

    iput p2, v0, Lcom/zui/launcher/DropTarget$DragObject;->y:I

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->c:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragController;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    const/4 v4, 0x0

    if-ltz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/DropTarget;

    invoke-interface {v5}, Lcom/zui/launcher/DropTarget;->isDropEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v5, v0}, Lcom/zui/launcher/DropTarget;->getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_1

    aput p1, p3, v4

    aput p2, p3, v3

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p0

    move-object p1, v5

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p3}, Lcom/zui/launcher/views/BaseDragLayer;->mapCoordInSelfToDescendant(Landroid/view/View;[I)V

    return-object v5

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    aput p1, p3, v4

    aput p2, p3, v3

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p2}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/zui/launcher/views/BaseDragLayer;->mapCoordInSelfToDescendant(Landroid/view/View;[I)V

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    return-object p0
.end method

.method private j(FF)[I
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/DragController;->s:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->r:[I

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/DragController;->s:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v2

    int-to-float v3, v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    aput p1, v0, v1

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragController;->r:[I

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->s:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-int p2, p2

    aput p2, p1, v2

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragController;->r:[I

    aput v1, p1, v2

    aput v1, p1, v1

    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragController;->r:[I

    return-object p0
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    iget-object v0, v0, Lcom/zui/launcher/DropTarget$DragObject;->dragSource:Lcom/zui/launcher/DragSource;

    instance-of v0, v0, Lcom/zui/launcher/allapps/AllAppsContainerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    const v1, 0x7f0a020c

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/zui/launcher/AbstractFloatingView;->closeOpenContainer(Lcom/zui/launcher/views/ActivityContext;I)V

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    sget-object v1, Lcom/zui/launcher/LauncherState;->SPRING_LOADED:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    sget-object v0, Lcom/zui/launcher/LauncherState;->SPRING_LOADED:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;)V

    :cond_2
    return-void
.end method

.method private l(II)V
    .locals 10

    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    const-string v1, "b/133009122"

    if-eqz v0, :cond_0

    const-string v0, "handleMoveEvent 1"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    iget-object v0, v0, Lcom/zui/launcher/DropTarget$DragObject;->dragViewList:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    iget-object v3, v3, Lcom/zui/launcher/DropTarget$DragObject;->dragViewList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    iget-object v3, v3, Lcom/zui/launcher/DropTarget$DragObject;->dragViewList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/dragndrop/DragView;

    new-instance v4, Lcom/zui/launcher/dragndrop/DragController$c;

    invoke-direct {v4, p0, v3, p1, p2}, Lcom/zui/launcher/dragndrop/DragController$c;-><init>(Lcom/zui/launcher/dragndrop/DragController;Lcom/zui/launcher/dragndrop/DragView;II)V

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/DragController;->t:Landroid/os/Handler;

    mul-int/lit8 v5, v0, 0x14

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    iget-object v0, v0, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/zui/launcher/dragndrop/DragView;->move(II)V

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    iget-object v0, v0, Lcom/zui/launcher/DropTarget$DragObject;->deleteView:Lcom/zui/launcher/dragndrop/DragDeleteView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2}, Lcom/zui/launcher/dragndrop/DragDeleteView;->j(II)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/zui/launcher/dragndrop/DragController;->k()V

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/zui/launcher/DropTarget$DragObject;->deleteView:Lcom/zui/launcher/dragndrop/DragDeleteView;

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/dragndrop/DragController;->m(II)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/zui/launcher/dragndrop/DragController;->k()V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->d:[I

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/dragndrop/DragController;->i(II[I)Lcom/zui/launcher/DropTarget;

    move-result-object v3

    iget-object v4, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    aget v5, v0, v2

    iput v5, v4, Lcom/zui/launcher/DropTarget$DragObject;->x:I

    const/4 v5, 0x1

    aget v0, v0, v5

    iput v0, v4, Lcom/zui/launcher/DropTarget$DragObject;->y:I

    invoke-direct {p0, v3}, Lcom/zui/launcher/dragndrop/DragController;->d(Lcom/zui/launcher/DropTarget;)V

    iget v0, p0, Lcom/zui/launcher/dragndrop/DragController;->q:I

    int-to-double v3, v0

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->o:[I

    aget v6, v0, v2

    sub-int/2addr v6, p1

    int-to-double v6, v6

    aget v0, v0, v5

    sub-int/2addr v0, p2

    int-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    add-double/2addr v3, v6

    double-to-int v0, v3

    iput v0, p0, Lcom/zui/launcher/dragndrop/DragController;->q:I

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->o:[I

    aput p1, v0, v2

    aput p2, v0, v5

    sget-boolean p1, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz p1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "handleMoveEvent Conditions "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/zui/launcher/dragndrop/DragController;->mIsInPreDrag:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/zui/launcher/dragndrop/DragController;->mIsInPreDrag:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->f:Lcom/zui/launcher/dragndrop/DragOptions;

    iget-object v0, v0, Lcom/zui/launcher/dragndrop/DragOptions;->preDragCondition:Lcom/zui/launcher/dragndrop/DragOptions$PreDragCondition;

    if-eqz v0, :cond_5

    move v0, v5

    goto :goto_2

    :cond_5
    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/zui/launcher/dragndrop/DragController;->mIsInPreDrag:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/zui/launcher/dragndrop/DragController;->f:Lcom/zui/launcher/dragndrop/DragOptions;

    iget-object p2, p2, Lcom/zui/launcher/dragndrop/DragOptions;->preDragCondition:Lcom/zui/launcher/dragndrop/DragOptions$PreDragCondition;

    if-eqz p2, :cond_6

    iget v0, p0, Lcom/zui/launcher/dragndrop/DragController;->q:I

    int-to-double v3, v0

    invoke-interface {p2, v3, v4}, Lcom/zui/launcher/dragndrop/DragOptions$PreDragCondition;->shouldStartDrag(D)Z

    move-result p2

    if-eqz p2, :cond_6

    move v2, v5

    :cond_6
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-boolean p1, p0, Lcom/zui/launcher/dragndrop/DragController;->mIsInPreDrag:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragController;->f:Lcom/zui/launcher/dragndrop/DragOptions;

    iget-object p1, p1, Lcom/zui/launcher/dragndrop/DragOptions;->preDragCondition:Lcom/zui/launcher/dragndrop/DragOptions$PreDragCondition;

    if-eqz p1, :cond_9

    iget p2, p0, Lcom/zui/launcher/dragndrop/DragController;->q:I

    int-to-double v2, p2

    invoke-interface {p1, v2, v3}, Lcom/zui/launcher/dragndrop/DragOptions$PreDragCondition;->shouldStartDrag(D)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-boolean p1, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz p1, :cond_8

    const-string p1, "handleMoveEvent 2"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-direct {p0}, Lcom/zui/launcher/dragndrop/DragController;->c()V

    :cond_9
    return-void
.end method

.method private m(II)Z
    .locals 4

    iget v0, p0, Lcom/zui/launcher/dragndrop/DragController;->g:I

    sub-int/2addr p1, v0

    int-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget p0, p0, Lcom/zui/launcher/dragndrop/DragController;->h:I

    sub-int/2addr p2, p0

    int-to-double p0, p2

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-int p0, p0

    const/16 p1, 0x19

    if-le p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addDragListener(Lcom/zui/launcher/dragndrop/DragController$DragListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragController;->k:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDropTarget(Lcom/zui/launcher/DropTarget;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragController;->j:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addFirstFrameAnimationHelper(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragView;->p:Lcom/zui/launcher/FirstFrameAnimatorHelper;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/FirstFrameAnimatorHelper;->addTo(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public animateDragViewToOriginalPosition(Ljava/lang/Runnable;Landroid/view/View;I)V
    .locals 3

    new-instance v0, Lcom/zui/launcher/dragndrop/DragController$a;

    invoke-direct {v0, p0, p2, p1}, Lcom/zui/launcher/dragndrop/DragController$a;-><init>(Lcom/zui/launcher/dragndrop/DragController;Landroid/view/View;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    iget-object p1, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    iget v1, p0, Lcom/zui/launcher/dragndrop/DragController;->g:I

    iget v2, p0, Lcom/zui/launcher/dragndrop/DragController;->h:I

    invoke-virtual {p1, v1, v2, v0, p3}, Lcom/zui/launcher/dragndrop/DragView;->animateTo(IILjava/lang/Runnable;I)V

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    iget-object p1, p1, Lcom/zui/launcher/DropTarget$DragObject;->deleteView:Lcom/zui/launcher/dragndrop/DragDeleteView;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/zui/launcher/dragndrop/DragController;->g:I

    iget v1, p0, Lcom/zui/launcher/dragndrop/DragController;->h:I

    new-instance v2, Lcom/zui/launcher/dragndrop/DragController$b;

    invoke-direct {v2, p0, p2}, Lcom/zui/launcher/dragndrop/DragController$b;-><init>(Lcom/zui/launcher/dragndrop/DragController;Landroid/view/View;)V

    invoke-virtual {p1, v0, v1, v2, p3}, Lcom/zui/launcher/dragndrop/DragDeleteView;->animateTo(IILjava/lang/Runnable;I)V

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    iget-object p1, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    if-eqz p1, :cond_1

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->container:I

    int-to-long p1, p1

    const-wide/16 v0, -0x65

    cmp-long p1, p1, v0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    iget-object p0, p0, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/HotseatLayout;->itemToOriginalPosition(Lcom/zui/launcher/ItemInfo;)V

    :cond_1
    return-void
.end method

.method public cancelDrag()V
    .locals 3

    invoke-virtual {p0}, Lcom/zui/launcher/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/zui/launcher/DropTarget$DragObject;->cancelled:Z

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragController;->n:Lcom/zui/launcher/DropTarget;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Lcom/zui/launcher/DropTarget;->onDragExit(Lcom/zui/launcher/DropTarget$DragObject;)V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/zui/launcher/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    iput-boolean v1, v0, Lcom/zui/launcher/DropTarget$DragObject;->cancelled:Z

    iput-boolean v1, v0, Lcom/zui/launcher/DropTarget$DragObject;->dragComplete:Z

    iget-boolean v0, p0, Lcom/zui/launcher/dragndrop/DragController;->mIsInPreDrag:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/zui/launcher/dragndrop/DragController;->f(Landroid/view/View;Z)V

    :cond_1
    invoke-direct {p0}, Lcom/zui/launcher/dragndrop/DragController;->h()V

    return-void
.end method

.method public checkDeleteViewIcon()V
    .locals 2

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/DropTarget$DragObject;->deleteView:Lcom/zui/launcher/dragndrop/DragDeleteView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " checkDeleteViewIcon  deleteView -->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/dragndrop/DragDeleteView;->isContainerExits()V

    :cond_0
    return-void
.end method

.method public completeAccessibleDrag([I)V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->d:[I

    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v3, 0x1

    aget p1, p1, v3

    invoke-direct {p0, v2, p1, v0}, Lcom/zui/launcher/dragndrop/DragController;->i(II[I)Lcom/zui/launcher/DropTarget;

    move-result-object p1

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    aget v1, v0, v1

    iput v1, v2, Lcom/zui/launcher/DropTarget$DragObject;->x:I

    aget v0, v0, v3

    iput v0, v2, Lcom/zui/launcher/DropTarget$DragObject;->y:I

    invoke-direct {p0, p1}, Lcom/zui/launcher/dragndrop/DragController;->d(Lcom/zui/launcher/DropTarget;)V

    invoke-interface {p1}, Lcom/zui/launcher/DropTarget;->prepareAccessibilityDrop()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/dragndrop/DragController;->g(Lcom/zui/launcher/DropTarget;Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/zui/launcher/dragndrop/DragController;->h()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragController;->e:Lcom/zui/launcher/dragndrop/DragDriver;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragController;->m:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public doDragEnd()V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragController;->k:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/dragndrop/DragController$DragListener;

    invoke-interface {v0}, Lcom/zui/launcher/dragndrop/DragController$DragListener;->onDragEnd()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public forceTouchMove()V
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->d:[I

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragController;->o:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-direct {p0, v3, v1, v0}, Lcom/zui/launcher/dragndrop/DragController;->i(II[I)Lcom/zui/launcher/DropTarget;

    move-result-object v1

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    aget v2, v0, v2

    iput v2, v3, Lcom/zui/launcher/DropTarget$DragObject;->x:I

    aget v0, v0, v4

    iput v0, v3, Lcom/zui/launcher/DropTarget$DragObject;->y:I

    invoke-direct {p0, v1}, Lcom/zui/launcher/dragndrop/DragController;->d(Lcom/zui/launcher/DropTarget;)V

    return-void
.end method

.method public getDistanceDragged()F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/dragndrop/DragController;->q:I

    int-to-float p0, p0

    return p0
.end method

.method public getDragObject()Lcom/zui/launcher/DropTarget$DragObject;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    return-object p0
.end method

.method public getLastDropTarget()Lcom/zui/launcher/DropTarget;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragController;->n:Lcom/zui/launcher/DropTarget;

    return-object p0
.end method

.method public getLastGestureUpTime()J
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->e:Lcom/zui/launcher/dragndrop/DragDriver;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/zui/launcher/dragndrop/DragController;->p:J

    return-wide v0
.end method

.method public isDragCanceled()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    iget-boolean p0, p0, Lcom/zui/launcher/DropTarget$DragObject;->cancelled:Z

    return p0
.end method

.method public isDragCompleted()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    iget-boolean p0, p0, Lcom/zui/launcher/DropTarget$DragObject;->dragComplete:Z

    return p0
.end method

.method public isDragging()Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->e:Lcom/zui/launcher/dragndrop/DragDriver;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragController;->f:Lcom/zui/launcher/dragndrop/DragOptions;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/zui/launcher/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isInPreDrag()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/dragndrop/DragController;->mIsInPreDrag:Z

    return p0
.end method

.method public onAppsRemoved(Lcom/zui/launcher/util/ItemInfoMatcher;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    instance-of v1, v0, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0, v1}, Lcom/zui/launcher/util/ItemInfoMatcher;->matches(Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/dragndrop/DragController;->cancelDrag()V

    :cond_0
    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->f:Lcom/zui/launcher/dragndrop/DragOptions;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/zui/launcher/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->b:Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;->recordMotionEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/zui/launcher/dragndrop/DragController;->j(FF)[I

    move-result-object v2

    aget v3, v2, v1

    const/4 v4, 0x1

    aget v2, v2, v4

    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/zui/launcher/dragndrop/DragController;->p:J

    goto :goto_0

    :cond_2
    iput v3, p0, Lcom/zui/launcher/dragndrop/DragController;->g:I

    iput v2, p0, Lcom/zui/launcher/dragndrop/DragController;->h:I

    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragController;->e:Lcom/zui/launcher/dragndrop/DragDriver;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lcom/zui/launcher/dragndrop/DragDriver;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v1, v4

    :cond_3
    return v1
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_0

    const-string v0, "b/133009122"

    const-string v1, "onControllerTouchEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->e:Lcom/zui/launcher/dragndrop/DragDriver;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->f:Lcom/zui/launcher/dragndrop/DragOptions;

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lcom/zui/launcher/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->b:Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;->recordMotionEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/zui/launcher/dragndrop/DragController;->j(FF)[I

    move-result-object v2

    aget v1, v2, v1

    const/4 v3, 0x1

    aget v2, v2, v3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iput v1, p0, Lcom/zui/launcher/dragndrop/DragController;->g:I

    iput v2, p0, Lcom/zui/launcher/dragndrop/DragController;->h:I

    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragController;->e:Lcom/zui/launcher/dragndrop/DragDriver;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/dragndrop/DragDriver;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method public onDeferredEndDrag(Lcom/zui/launcher/dragndrop/DragView;)V
    .locals 2

    invoke-virtual {p1}, Lcom/zui/launcher/dragndrop/DragView;->remove()V

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    iget-boolean p1, p1, Lcom/zui/launcher/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/dragndrop/DragController;->b()V

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    sget-object v0, Lcom/zui/launcher/LauncherState;->SPRING_LOADED:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    sget-object p1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;J)V

    :cond_1
    return-void
.end method

.method public onDragEvent(JLandroid/view/DragEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->b:Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;->recordDragEvent(JLandroid/view/DragEvent;)V

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragController;->e:Lcom/zui/launcher/dragndrop/DragDriver;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p3}, Lcom/zui/launcher/dragndrop/DragDriver;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDragViewAnimationEnd()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragController;->e:Lcom/zui/launcher/dragndrop/DragDriver;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/dragndrop/DragDriver;->onDragViewAnimationEnd()V

    :cond_0
    return-void
.end method

.method public onDriverDragCancel()V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/dragndrop/DragController;->cancelDrag()V

    return-void
.end method

.method public onDriverDragEnd(FF)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->b:Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragController;->f:Lcom/zui/launcher/dragndrop/DragOptions;

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;->getFlingAnimation(Lcom/zui/launcher/DropTarget$DragObject;Lcom/zui/launcher/dragndrop/DragOptions;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragController;->b:Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;

    invoke-virtual {p1}, Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;->getDropTarget()Lcom/zui/launcher/DropTarget;

    move-result-object p1

    goto :goto_0

    :cond_0
    float-to-int p1, p1

    float-to-int p2, p2

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragController;->d:[I

    invoke-direct {p0, p1, p2, v1}, Lcom/zui/launcher/dragndrop/DragController;->i(II[I)Lcom/zui/launcher/DropTarget;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/dragndrop/DragController;->g(Lcom/zui/launcher/DropTarget;Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/zui/launcher/dragndrop/DragController;->h()V

    return-void
.end method

.method public onDriverDragExitWindow()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->n:Lcom/zui/launcher/DropTarget;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    invoke-interface {v0, v1}, Lcom/zui/launcher/DropTarget;->onDragExit(Lcom/zui/launcher/DropTarget$DragObject;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->n:Lcom/zui/launcher/DropTarget;

    :cond_0
    return-void
.end method

.method public onDriverDragMove(FF)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/dragndrop/DragController;->j(FF)[I

    move-result-object p1

    const/4 p2, 0x0

    aget p2, p1, p2

    const/4 v0, 0x1

    aget p1, p1, v0

    invoke-direct {p0, p2, p1}, Lcom/zui/launcher/dragndrop/DragController;->l(II)V

    return-void
.end method

.method public onEndDrag()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    iget-boolean v0, v0, Lcom/zui/launcher/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/dragndrop/DragController;->doDragEnd()V

    :cond_0
    return-void
.end method

.method public prepareAccessibleDrag(II)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/dragndrop/DragController;->g:I

    iput p2, p0, Lcom/zui/launcher/dragndrop/DragController;->h:I

    return-void
.end method

.method public removeDragListener(Lcom/zui/launcher/dragndrop/DragController$DragListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragController;->k:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeDropTarget(Lcom/zui/launcher/DropTarget;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragController;->j:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetLastGestureUpTime()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/zui/launcher/dragndrop/DragController;->p:J

    return-void
.end method

.method public setMoveTarget(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragController;->m:Landroid/view/View;

    return-void
.end method

.method public setWindowToken(Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragController;->l:Landroid/os/IBinder;

    return-void
.end method

.method public startDrag(Landroid/graphics/Bitmap;IILcom/zui/launcher/DragSource;Lcom/zui/launcher/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FFLcom/zui/launcher/dragndrop/DragOptions;)Lcom/zui/launcher/dragndrop/DragView;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p10

    iget-object v5, v0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    iget-object v6, v0, Lcom/zui/launcher/dragndrop/DragController;->l:Landroid/os/IBinder;

    invoke-static {v5, v6}, Lcom/zui/launcher/util/UiThreadHelper;->hideKeyboardAsync(Lcom/zui/launcher/views/ActivityContext;Landroid/os/IBinder;)V

    iget-object v5, v0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    const/4 v6, 0x0

    const/16 v7, 0x40

    invoke-static {v5, v6, v7}, Lcom/zui/launcher/AbstractFloatingView;->closeOpenViews(Lcom/zui/launcher/views/ActivityContext;ZI)V

    iput-object v4, v0, Lcom/zui/launcher/dragndrop/DragController;->f:Lcom/zui/launcher/dragndrop/DragOptions;

    iget-object v4, v4, Lcom/zui/launcher/dragndrop/DragOptions;->systemDndStartPoint:Landroid/graphics/Point;

    if-eqz v4, :cond_0

    iget v5, v4, Landroid/graphics/Point;->x:I

    iput v5, v0, Lcom/zui/launcher/dragndrop/DragController;->g:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    iput v4, v0, Lcom/zui/launcher/dragndrop/DragController;->h:I

    :cond_0
    iget v4, v0, Lcom/zui/launcher/dragndrop/DragController;->g:I

    sub-int v4, v4, p2

    iget v5, v0, Lcom/zui/launcher/dragndrop/DragController;->h:I

    sub-int v5, v5, p3

    if-nez v3, :cond_1

    move v15, v6

    goto :goto_0

    :cond_1
    iget v7, v3, Landroid/graphics/Rect;->left:I

    move v15, v7

    :goto_0
    if-nez v3, :cond_2

    move/from16 v16, v6

    goto :goto_1

    :cond_2
    iget v7, v3, Landroid/graphics/Rect;->top:I

    move/from16 v16, v7

    :goto_1
    const/4 v7, 0x0

    iput-object v7, v0, Lcom/zui/launcher/dragndrop/DragController;->n:Lcom/zui/launcher/DropTarget;

    new-instance v7, Lcom/zui/launcher/DropTarget$DragObject;

    invoke-direct {v7}, Lcom/zui/launcher/DropTarget$DragObject;-><init>()V

    iput-object v7, v0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    iget-object v7, v0, Lcom/zui/launcher/dragndrop/DragController;->f:Lcom/zui/launcher/dragndrop/DragOptions;

    iget-object v7, v7, Lcom/zui/launcher/dragndrop/DragOptions;->preDragCondition:Lcom/zui/launcher/dragndrop/DragOptions$PreDragCondition;

    const/4 v14, 0x1

    if-eqz v7, :cond_3

    const-wide/16 v8, 0x0

    invoke-interface {v7, v8, v9}, Lcom/zui/launcher/dragndrop/DragOptions$PreDragCondition;->shouldStartDrag(D)Z

    move-result v7

    if-nez v7, :cond_3

    move v7, v14

    goto :goto_2

    :cond_3
    move v7, v6

    :goto_2
    iput-boolean v7, v0, Lcom/zui/launcher/dragndrop/DragController;->mIsInPreDrag:Z

    iget-object v7, v0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-boolean v8, v0, Lcom/zui/launcher/dragndrop/DragController;->mIsInPreDrag:Z

    if-eqz v8, :cond_4

    const v8, 0x7f0705c7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    move/from16 v17, v7

    iget-object v13, v0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    new-instance v12, Lcom/zui/launcher/dragndrop/DragView;

    iget-object v8, v0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    move-object v7, v12

    move-object/from16 v9, p1

    move v10, v4

    move v11, v5

    move-object v6, v12

    move/from16 v12, p8

    move/from16 p10, v5

    move-object v5, v13

    move/from16 v13, p9

    move/from16 v18, v4

    move v4, v14

    move/from16 v14, v17

    invoke-direct/range {v7 .. v14}, Lcom/zui/launcher/dragndrop/DragView;-><init>(Lcom/zui/launcher/Launcher;Landroid/graphics/Bitmap;IIFFF)V

    iput-object v6, v5, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    invoke-virtual {v6, v1}, Lcom/zui/launcher/dragndrop/DragView;->setItemInfo(Lcom/zui/launcher/ItemInfo;)V

    iget-object v5, v0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/zui/launcher/DropTarget$DragObject;->dragComplete:Z

    iget-object v7, v0, Lcom/zui/launcher/dragndrop/DragController;->f:Lcom/zui/launcher/dragndrop/DragOptions;

    iget-boolean v7, v7, Lcom/zui/launcher/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz v7, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    iput v7, v5, Lcom/zui/launcher/DropTarget$DragObject;->xOffset:I

    iget-object v5, v0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    iput v7, v5, Lcom/zui/launcher/DropTarget$DragObject;->yOffset:I

    iget-object v5, v0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    iput-boolean v4, v5, Lcom/zui/launcher/DropTarget$DragObject;->accessibleDrag:Z

    goto :goto_4

    :cond_5
    iget v7, v0, Lcom/zui/launcher/dragndrop/DragController;->g:I

    add-int v8, p2, v15

    sub-int/2addr v7, v8

    iput v7, v5, Lcom/zui/launcher/DropTarget$DragObject;->xOffset:I

    iget v7, v0, Lcom/zui/launcher/dragndrop/DragController;->h:I

    add-int v8, p3, v16

    sub-int/2addr v7, v8

    iput v7, v5, Lcom/zui/launcher/DropTarget$DragObject;->yOffset:I

    invoke-static {v6}, Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;->createFor(Landroid/view/View;)Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;

    move-result-object v7

    iput-object v7, v5, Lcom/zui/launcher/DropTarget$DragObject;->stateAnnouncer:Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;

    iget-object v5, v0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    iget-object v7, v0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    iget-object v8, v0, Lcom/zui/launcher/dragndrop/DragController;->f:Lcom/zui/launcher/dragndrop/DragOptions;

    invoke-static {v5, v0, v7, v8}, Lcom/zui/launcher/dragndrop/DragDriver;->create(Landroid/content/Context;Lcom/zui/launcher/dragndrop/DragController;Lcom/zui/launcher/DropTarget$DragObject;Lcom/zui/launcher/dragndrop/DragOptions;)Lcom/zui/launcher/dragndrop/DragDriver;

    move-result-object v5

    iput-object v5, v0, Lcom/zui/launcher/dragndrop/DragController;->e:Lcom/zui/launcher/dragndrop/DragDriver;

    :goto_4
    iget-object v5, v0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    move-object/from16 v7, p4

    iput-object v7, v5, Lcom/zui/launcher/DropTarget$DragObject;->dragSource:Lcom/zui/launcher/DragSource;

    iput-object v1, v5, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    new-instance v7, Lcom/zui/launcher/ItemInfo;

    invoke-direct {v7}, Lcom/zui/launcher/ItemInfo;-><init>()V

    iput-object v7, v5, Lcom/zui/launcher/DropTarget$DragObject;->originalDragInfo:Lcom/zui/launcher/ItemInfo;

    iget-object v5, v0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    iget-object v5, v5, Lcom/zui/launcher/DropTarget$DragObject;->originalDragInfo:Lcom/zui/launcher/ItemInfo;

    invoke-virtual {v5, v1}, Lcom/zui/launcher/ItemInfo;->copyFrom(Lcom/zui/launcher/ItemInfo;)V

    if-eqz v2, :cond_6

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {v6, v1}, Lcom/zui/launcher/dragndrop/DragView;->setDragVisualizeOffset(Landroid/graphics/Point;)V

    :cond_6
    if-eqz v3, :cond_7

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v6, v1}, Lcom/zui/launcher/dragndrop/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    :cond_7
    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/LauncherAppState;->hasDualVibrator()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0xf

    invoke-virtual {v1, v2, v3, v4}, Lcom/zui/launcher/LauncherAppState;->startVibrationOrFail(IIZ)Z

    goto :goto_5

    :cond_8
    iget-object v1, v0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    :goto_5
    iget v1, v0, Lcom/zui/launcher/dragndrop/DragController;->g:I

    iget v2, v0, Lcom/zui/launcher/dragndrop/DragController;->h:I

    invoke-virtual {v6, v1, v2}, Lcom/zui/launcher/dragndrop/DragView;->show(II)V

    iget-object v1, v0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move/from16 p3, v2

    move/from16 p4, v3

    move/from16 p5, v18

    move/from16 p6, p10

    move/from16 p7, p8

    invoke-direct/range {p1 .. p7}, Lcom/zui/launcher/dragndrop/DragController;->e(Lcom/zui/launcher/DropTarget$DragObject;IIIIF)V

    iget-object v1, v0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    iget-object v1, v1, Lcom/zui/launcher/DropTarget$DragObject;->deleteView:Lcom/zui/launcher/dragndrop/DragDeleteView;

    if-eqz v1, :cond_9

    iget v2, v0, Lcom/zui/launcher/dragndrop/DragController;->g:I

    iget v3, v0, Lcom/zui/launcher/dragndrop/DragController;->h:I

    invoke-virtual {v1, v2, v3}, Lcom/zui/launcher/dragndrop/DragDeleteView;->show(II)V

    :cond_9
    const/4 v1, 0x0

    iput v1, v0, Lcom/zui/launcher/dragndrop/DragController;->q:I

    iget-boolean v1, v0, Lcom/zui/launcher/dragndrop/DragController;->mIsInPreDrag:Z

    if-nez v1, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/dragndrop/DragController;->c()V

    goto :goto_6

    :cond_a
    iget-object v1, v0, Lcom/zui/launcher/dragndrop/DragController;->f:Lcom/zui/launcher/dragndrop/DragOptions;

    iget-object v1, v1, Lcom/zui/launcher/dragndrop/DragOptions;->preDragCondition:Lcom/zui/launcher/dragndrop/DragOptions$PreDragCondition;

    if-eqz v1, :cond_b

    iget-object v2, v0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    invoke-interface {v1, v2}, Lcom/zui/launcher/dragndrop/DragOptions$PreDragCondition;->onPreDragStart(Lcom/zui/launcher/DropTarget$DragObject;)V

    :cond_b
    :goto_6
    iget-object v1, v0, Lcom/zui/launcher/dragndrop/DragController;->o:[I

    iget v2, v0, Lcom/zui/launcher/dragndrop/DragController;->g:I

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v3, v0, Lcom/zui/launcher/dragndrop/DragController;->h:I

    aput v3, v1, v4

    invoke-direct {v0, v2, v3}, Lcom/zui/launcher/dragndrop/DragController;->l(II)V

    iget-object v0, v0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/logging/UserEventDispatcher;->resetActionDurationMillis()V

    return-object v6
.end method

.method public startDrag(Ljava/util/List;Ljava/util/List;IILcom/zui/launcher/DragSource;Lcom/zui/launcher/XDockViewLayout;Landroid/graphics/Point;Landroid/graphics/Rect;FFLcom/zui/launcher/dragndrop/DragOptions;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/util/List<",
            "[I>;II",
            "Lcom/zui/launcher/DragSource;",
            "Lcom/zui/launcher/XDockViewLayout;",
            "Landroid/graphics/Point;",
            "Landroid/graphics/Rect;",
            "FF",
            "Lcom/zui/launcher/dragndrop/DragOptions;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move-object/from16 v3, p11

    iget-object v4, v0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    iget-object v5, v0, Lcom/zui/launcher/dragndrop/DragController;->l:Landroid/os/IBinder;

    invoke-static {v4, v5}, Lcom/zui/launcher/util/UiThreadHelper;->hideKeyboardAsync(Lcom/zui/launcher/views/ActivityContext;Landroid/os/IBinder;)V

    iget-object v4, v0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    const/4 v5, 0x0

    const/16 v6, 0x40

    invoke-static {v4, v5, v6}, Lcom/zui/launcher/AbstractFloatingView;->closeOpenViews(Lcom/zui/launcher/views/ActivityContext;ZI)V

    iput-object v3, v0, Lcom/zui/launcher/dragndrop/DragController;->f:Lcom/zui/launcher/dragndrop/DragOptions;

    iget-object v3, v3, Lcom/zui/launcher/dragndrop/DragOptions;->systemDndStartPoint:Landroid/graphics/Point;

    if-eqz v3, :cond_0

    iget v4, v3, Landroid/graphics/Point;->x:I

    iput v4, v0, Lcom/zui/launcher/dragndrop/DragController;->g:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    iput v3, v0, Lcom/zui/launcher/dragndrop/DragController;->h:I

    :cond_0
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/zui/launcher/dragndrop/DragController;->n:Lcom/zui/launcher/DropTarget;

    invoke-virtual/range {p6 .. p6}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v0, Lcom/zui/launcher/dragndrop/DragController;->f:Lcom/zui/launcher/dragndrop/DragOptions;

    iget-object v4, v4, Lcom/zui/launcher/dragndrop/DragOptions;->preDragCondition:Lcom/zui/launcher/dragndrop/DragOptions$PreDragCondition;

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    const-wide/16 v7, 0x0

    invoke-interface {v4, v7, v8}, Lcom/zui/launcher/dragndrop/DragOptions$PreDragCondition;->shouldStartDrag(D)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    iput-boolean v4, v0, Lcom/zui/launcher/dragndrop/DragController;->mIsInPreDrag:Z

    iget-object v4, v0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-boolean v7, v0, Lcom/zui/launcher/dragndrop/DragController;->mIsInPreDrag:Z

    if-eqz v7, :cond_2

    const v7, 0x7f0705c7

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    iget v7, v0, Lcom/zui/launcher/dragndrop/DragController;->g:I

    sub-int v19, v7, p3

    iget v7, v0, Lcom/zui/launcher/dragndrop/DragController;->h:I

    sub-int v20, v7, p4

    if-nez v2, :cond_3

    move v7, v5

    goto :goto_2

    :cond_3
    iget v7, v2, Landroid/graphics/Rect;->left:I

    :goto_2
    if-nez v2, :cond_4

    move v8, v5

    goto :goto_3

    :cond_4
    iget v8, v2, Landroid/graphics/Rect;->top:I

    :goto_3
    new-instance v9, Lcom/zui/launcher/DropTarget$DragObject;

    invoke-direct {v9}, Lcom/zui/launcher/DropTarget$DragObject;-><init>()V

    iput-object v9, v0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    iput-boolean v5, v9, Lcom/zui/launcher/DropTarget$DragObject;->dragComplete:Z

    iget v10, v0, Lcom/zui/launcher/dragndrop/DragController;->g:I

    add-int v7, p3, v7

    sub-int/2addr v10, v7

    iput v10, v9, Lcom/zui/launcher/DropTarget$DragObject;->xOffset:I

    iget v7, v0, Lcom/zui/launcher/dragndrop/DragController;->h:I

    add-int v8, p4, v8

    sub-int/2addr v7, v8

    iput v7, v9, Lcom/zui/launcher/DropTarget$DragObject;->yOffset:I

    move-object/from16 v7, p5

    iput-object v7, v9, Lcom/zui/launcher/DropTarget$DragObject;->dragSource:Lcom/zui/launcher/DragSource;

    check-cast v3, Lcom/zui/launcher/ItemInfo;

    iput-object v3, v9, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    new-instance v7, Lcom/zui/launcher/ItemInfo;

    invoke-direct {v7}, Lcom/zui/launcher/ItemInfo;-><init>()V

    iput-object v7, v9, Lcom/zui/launcher/DropTarget$DragObject;->originalDragInfo:Lcom/zui/launcher/ItemInfo;

    iget-object v7, v0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    iget-object v7, v7, Lcom/zui/launcher/DropTarget$DragObject;->originalDragInfo:Lcom/zui/launcher/ItemInfo;

    invoke-virtual {v7, v3}, Lcom/zui/launcher/ItemInfo;->copyFrom(Lcom/zui/launcher/ItemInfo;)V

    iget-object v3, v0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    iget-object v7, v0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    iget-object v8, v0, Lcom/zui/launcher/dragndrop/DragController;->f:Lcom/zui/launcher/dragndrop/DragOptions;

    invoke-static {v3, v0, v7, v8}, Lcom/zui/launcher/dragndrop/DragDriver;->create(Landroid/content/Context;Lcom/zui/launcher/dragndrop/DragController;Lcom/zui/launcher/DropTarget$DragObject;Lcom/zui/launcher/dragndrop/DragOptions;)Lcom/zui/launcher/dragndrop/DragDriver;

    move-result-object v3

    iput-object v3, v0, Lcom/zui/launcher/dragndrop/DragController;->e:Lcom/zui/launcher/dragndrop/DragDriver;

    iput v5, v0, Lcom/zui/launcher/dragndrop/DragController;->q:I

    move v3, v5

    :goto_4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_9

    move-object/from16 v15, p1

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Landroid/graphics/Bitmap;

    move-object/from16 v14, p6

    invoke-virtual {v14, v3}, Lcom/zui/launcher/XDockViewLayout;->getChildItemAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v7, v7, Lcom/zui/launcher/BubbleTextView;

    if-eqz v7, :cond_5

    new-instance v16, Lcom/zui/launcher/dragndrop/DragView;

    iget-object v8, v0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    move-object/from16 v7, v16

    move/from16 v10, v19

    move/from16 v11, v20

    move/from16 v12, p9

    move/from16 v13, p10

    move v14, v4

    invoke-direct/range {v7 .. v14}, Lcom/zui/launcher/dragndrop/DragView;-><init>(Lcom/zui/launcher/Launcher;Landroid/graphics/Bitmap;IIFFF)V

    goto :goto_5

    :cond_5
    new-instance v21, Lcom/zui/launcher/dragndrop/DragView;

    iget-object v8, v0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move-object/from16 v7, v21

    move/from16 v10, v19

    move/from16 v11, v20

    move/from16 v15, v16

    move/from16 v16, p9

    move/from16 v17, p10

    move/from16 v18, v4

    invoke-direct/range {v7 .. v18}, Lcom/zui/launcher/dragndrop/DragView;-><init>(Lcom/zui/launcher/Launcher;Landroid/graphics/Bitmap;IIIIIIFFF)V

    :goto_5
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/zui/launcher/ItemInfo;

    if-eqz v8, :cond_6

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zui/launcher/ItemInfo;

    invoke-virtual {v7, v8}, Lcom/zui/launcher/dragndrop/DragView;->setItemInfo(Lcom/zui/launcher/ItemInfo;)V

    :cond_6
    if-eqz v1, :cond_7

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {v7, v8}, Lcom/zui/launcher/dragndrop/DragView;->setDragVisualizeOffset(Landroid/graphics/Point;)V

    :cond_7
    if-eqz v2, :cond_8

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v7, v8}, Lcom/zui/launcher/dragndrop/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    :cond_8
    iget-object v8, v0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    iget-object v8, v8, Lcom/zui/launcher/DropTarget$DragObject;->dragViewList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    iget-object v1, v0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    iget-object v1, v1, Lcom/zui/launcher/DropTarget$DragObject;->dragViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v6

    :goto_6
    if-ltz v1, :cond_a

    iget-object v2, v0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    iget-object v2, v2, Lcom/zui/launcher/DropTarget$DragObject;->dragViewList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/dragndrop/DragView;

    move-object/from16 v3, p2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    iget v7, v0, Lcom/zui/launcher/dragndrop/DragController;->g:I

    iget v8, v0, Lcom/zui/launcher/dragndrop/DragController;->h:I

    aget v9, v4, v5

    aget v4, v4, v6

    invoke-virtual {v2, v7, v8, v9, v4}, Lcom/zui/launcher/dragndrop/DragView;->showWidthAnim(IIII)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_a
    iget-object v1, v0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    iget-boolean v1, v0, Lcom/zui/launcher/dragndrop/DragController;->mIsInPreDrag:Z

    if-nez v1, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/dragndrop/DragController;->c()V

    goto :goto_7

    :cond_b
    iget-object v1, v0, Lcom/zui/launcher/dragndrop/DragController;->f:Lcom/zui/launcher/dragndrop/DragOptions;

    iget-object v1, v1, Lcom/zui/launcher/dragndrop/DragOptions;->preDragCondition:Lcom/zui/launcher/dragndrop/DragOptions$PreDragCondition;

    if-eqz v1, :cond_c

    iget-object v2, v0, Lcom/zui/launcher/dragndrop/DragController;->i:Lcom/zui/launcher/DropTarget$DragObject;

    invoke-interface {v1, v2}, Lcom/zui/launcher/dragndrop/DragOptions$PreDragCondition;->onPreDragStart(Lcom/zui/launcher/DropTarget$DragObject;)V

    :cond_c
    :goto_7
    iget-object v1, v0, Lcom/zui/launcher/dragndrop/DragController;->o:[I

    iget v2, v0, Lcom/zui/launcher/dragndrop/DragController;->g:I

    aput v2, v1, v5

    iget v3, v0, Lcom/zui/launcher/dragndrop/DragController;->h:I

    aput v3, v1, v6

    invoke-direct {v0, v2, v3}, Lcom/zui/launcher/dragndrop/DragController;->l(II)V

    iget-object v0, v0, Lcom/zui/launcher/dragndrop/DragController;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/logging/UserEventDispatcher;->resetActionDurationMillis()V

    return-void
.end method
