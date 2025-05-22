.class public abstract Lcom/zui/launcher/dragndrop/BaseItemDragListener;
.super Lcom/zui/launcher/states/InternalStateHandler;
.source ""

# interfaces
.implements Landroid/view/View$OnDragListener;
.implements Lcom/zui/launcher/DragSource;
.implements Lcom/zui/launcher/dragndrop/DragOptions$PreDragCondition;


# static fields
.field public static final EXTRA_PIN_ITEM_DRAG_LISTENER:Ljava/lang/String; = "pin_item_drag_listener"


# instance fields
.field private final b:Landroid/graphics/Rect;

.field private final c:I

.field private final d:I

.field private final e:Ljava/lang/String;

.field private f:Lcom/zui/launcher/dragndrop/DragController;

.field private g:J

.field protected mLauncher:Lcom/zui/launcher/Launcher;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;II)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/states/InternalStateHandler;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->b:Landroid/graphics/Rect;

    iput p2, p0, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->c:I

    iput p3, p0, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->d:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract createDragHelper()Lcom/zui/launcher/widget/PendingItemDragHelper;
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.zui.launcher.drag_and_drop/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(Lcom/zui/launcher/Launcher;Z)Z
    .locals 2

    invoke-static {p1, p2}, Lcom/zui/launcher/AbstractFloatingView;->closeAllOpenViews(Lcom/zui/launcher/views/ActivityContext;Z)V

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v1, p2}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;Z)V

    :cond_0
    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getRotationHelper()Lcom/zui/launcher/states/RotationHelper;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/zui/launcher/states/RotationHelper;->setStateHandlerRequest(I)V

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->f:Lcom/zui/launcher/dragndrop/DragController;

    const/4 p0, 0x0

    return p0
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 2

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->mLauncher:Lcom/zui/launcher/Launcher;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->f:Lcom/zui/launcher/dragndrop/DragController;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->f:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {p1}, Lcom/zui/launcher/dragndrop/DragController;->isDragging()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->f:Lcom/zui/launcher/dragndrop/DragController;

    iget-wide v0, p0, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->g:J

    invoke-virtual {p1, v0, v1, p2}, Lcom/zui/launcher/dragndrop/DragController;->onDragEvent(JLandroid/view/DragEvent;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->onDragStart(Landroid/view/DragEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->postCleanup()V

    return v0

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->postCleanup()V

    return v0
.end method

.method protected onDragStart(Landroid/view/DragEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p0}, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->onDragStart(Landroid/view/DragEvent;Lcom/zui/launcher/dragndrop/DragOptions$PreDragCondition;)Z

    move-result p0

    return p0
.end method

.method protected onDragStart(Landroid/view/DragEvent;Lcom/zui/launcher/dragndrop/DragOptions$PreDragCondition;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v5, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v5, v0, p1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v7, Lcom/zui/launcher/dragndrop/DragOptions;

    invoke-direct {v7}, Lcom/zui/launcher/dragndrop/DragOptions;-><init>()V

    iput-object v5, v7, Lcom/zui/launcher/dragndrop/DragOptions;->systemDndStartPoint:Landroid/graphics/Point;

    iput-object p2, v7, Lcom/zui/launcher/dragndrop/DragOptions;->preDragCondition:Lcom/zui/launcher/dragndrop/DragOptions$PreDragCondition;

    invoke-virtual {p0}, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->createDragHelper()Lcom/zui/launcher/widget/PendingItemDragHelper;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->b:Landroid/graphics/Rect;

    invoke-direct {v2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v3, p0, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->c:I

    iget v4, p0, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->d:I

    move-object v6, p0

    invoke-virtual/range {v1 .. v7}, Lcom/zui/launcher/widget/PendingItemDragHelper;->startDrag(Landroid/graphics/Rect;IILandroid/graphics/Point;Lcom/zui/launcher/DragSource;Lcom/zui/launcher/dragndrop/DragOptions;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->g:J

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const-string p0, "BaseItemDragListener"

    const-string p1, "Someone started a dragAndDrop before us."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/zui/launcher/DropTarget$DragObject;Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->postCleanup()V

    return-void
.end method

.method public onPreDragEnd(Lcom/zui/launcher/DropTarget$DragObject;Z)V
    .locals 0

    if-eqz p2, :cond_1

    iget-object p0, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/zui/launcher/dragndrop/DragView;->setColor(I)V

    goto :goto_1

    :cond_0
    iget-object p0, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragViewList:Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    iget-object p0, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragViewList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/dragndrop/DragView;

    invoke-virtual {p1, p2}, Lcom/zui/launcher/dragndrop/DragView;->setColor(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onPreDragStart(Lcom/zui/launcher/DropTarget$DragObject;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    const v1, 0x7f060121

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/dragndrop/DragView;->setColor(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragViewList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object p1, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragViewList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/dragndrop/DragView;

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/zui/launcher/dragndrop/DragView;->setColor(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected postCleanup()V
    .locals 2

    invoke-virtual {p0}, Lcom/zui/launcher/states/InternalStateHandler;->clearReference()Z

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->mLauncher:Lcom/zui/launcher/Launcher;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v0, "pin_item_drag_listener"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/zui/launcher/dragndrop/l;

    invoke-direct {v1, p0}, Lcom/zui/launcher/dragndrop/l;-><init>(Lcom/zui/launcher/dragndrop/BaseItemDragListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeListener()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->mLauncher:Lcom/zui/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getRotationHelper()Lcom/zui/launcher/states/RotationHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/launcher/states/RotationHelper;->setStateHandlerRequest(I)V

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    :cond_0
    return-void
.end method

.method public shouldStartDrag(D)Z
    .locals 0

    sget-boolean p1, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz p1, :cond_0

    const-string p1, "b/133009122"

    const-string p2, "BIDL.shouldStartDrag"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/dragndrop/BaseItemDragListener;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isWorkspaceLocked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
