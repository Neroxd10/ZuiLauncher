.class public Lcom/zui/launcher/DeleteDropTarget;
.super Lcom/zui/launcher/ButtonDropTarget;
.source ""


# instance fields
.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/DeleteDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/DeleteDropTarget;->l:I

    return-void
.end method

.method private d(Lcom/zui/launcher/ItemInfo;)Z
    .locals 0

    iget p0, p1, Lcom/zui/launcher/ItemInfo;->id:I

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setControlTypeBasedOnDragSource(Lcom/zui/launcher/ItemInfo;)V
    .locals 1

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->id:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    const/16 p1, 0xe

    :goto_0
    iput p1, p0, Lcom/zui/launcher/DeleteDropTarget;->l:I

    return-void
.end method

.method private setTextBasedOnDragSource(Lcom/zui/launcher/ItemInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/ButtonDropTarget;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/zui/launcher/DeleteDropTarget;->d(Lcom/zui/launcher/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f1205d1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x1040000

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/ButtonDropTarget;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public static supportsDrop(Landroid/content/Context;Lcom/zui/launcher/ItemInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    instance-of p0, p1, Lcom/zui/launcher/AppInfo;

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public completeDrop(Lcom/zui/launcher/DropTarget$DragObject;)V
    .locals 4

    iget-object p1, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    invoke-direct {p0, p1}, Lcom/zui/launcher/DeleteDropTarget;->d(Lcom/zui/launcher/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/ButtonDropTarget;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/zui/launcher/DeleteDropTarget;->onAccessibilityDrop(Landroid/view/View;Lcom/zui/launcher/ItemInfo;)V

    iget-object p1, p0, Lcom/zui/launcher/ButtonDropTarget;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object p1

    new-instance v1, Lcom/zui/launcher/q;

    invoke-direct {v1, p0, p1, v0}, Lcom/zui/launcher/q;-><init>(Lcom/zui/launcher/DeleteDropTarget;Lcom/zui/launcher/model/ModelWriter;I)V

    iget-object p0, p0, Lcom/zui/launcher/ButtonDropTarget;->mLauncher:Lcom/zui/launcher/Launcher;

    const v0, 0x7f120411

    const v2, 0x7f1206ad

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/zui/launcher/f3;

    invoke-direct {v3, p1}, Lcom/zui/launcher/f3;-><init>(Lcom/zui/launcher/model/ModelWriter;)V

    invoke-static {p0, v0, v2, v3, v1}, Lcom/zui/launcher/views/Snackbar;->show(Lcom/zui/launcher/Launcher;IILjava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public synthetic e(Lcom/zui/launcher/model/ModelWriter;I)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/zui/launcher/model/ModelWriter;->abortDelete(I)V

    iget-object p0, p0, Lcom/zui/launcher/ButtonDropTarget;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object p0

    const/4 p1, 0x0

    const/16 p2, 0x14

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/logging/UserEventDispatcher;->logActionOnControl(II)V

    return-void
.end method

.method public getAccessibilityAction()I
    .locals 0

    const p0, 0x7f0a0062

    return p0
.end method

.method public getDropTargetForLogging()Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/zui/launcher/logging/LoggerUtils;->newTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object v0

    iget p0, p0, Lcom/zui/launcher/DeleteDropTarget;->l:I

    iput p0, v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->controlType:I

    return-object v0
.end method

.method public onAccessibilityDrop(Landroid/view/View;Lcom/zui/launcher/ItemInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/ButtonDropTarget;->mLauncher:Lcom/zui/launcher/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/zui/launcher/Launcher;->removeItem(Landroid/view/View;Lcom/zui/launcher/ItemInfo;Z)Z

    iget-object p1, p0, Lcom/zui/launcher/ButtonDropTarget;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/Workspace;->stripEmptyScreens()V

    iget-object p1, p0, Lcom/zui/launcher/ButtonDropTarget;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f120411

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onDragStart(Lcom/zui/launcher/DropTarget$DragObject;Lcom/zui/launcher/dragndrop/DragOptions;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/zui/launcher/ButtonDropTarget;->onDragStart(Lcom/zui/launcher/DropTarget$DragObject;Lcom/zui/launcher/dragndrop/DragOptions;)V

    iget-object p2, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    invoke-direct {p0, p2}, Lcom/zui/launcher/DeleteDropTarget;->setTextBasedOnDragSource(Lcom/zui/launcher/ItemInfo;)V

    iget-object p1, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    invoke-direct {p0, p1}, Lcom/zui/launcher/DeleteDropTarget;->setControlTypeBasedOnDragSource(Lcom/zui/launcher/ItemInfo;)V

    return-void
.end method

.method public onDrop(Lcom/zui/launcher/DropTarget$DragObject;Lcom/zui/launcher/dragndrop/DragOptions;)V
    .locals 1

    iget-object v0, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    invoke-direct {p0, v0}, Lcom/zui/launcher/DeleteDropTarget;->d(Lcom/zui/launcher/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/ButtonDropTarget;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/model/ModelWriter;->prepareToUndoDelete()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/zui/launcher/ButtonDropTarget;->onDrop(Lcom/zui/launcher/DropTarget$DragObject;Lcom/zui/launcher/dragndrop/DragOptions;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/zui/launcher/ButtonDropTarget;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060121

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/ButtonDropTarget;->mHoverColor:I

    const v0, 0x7f080283

    invoke-virtual {p0, v0}, Lcom/zui/launcher/ButtonDropTarget;->setDrawable(I)V

    return-void
.end method

.method public supportsAccessibilityDrop(Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z
    .locals 1

    instance-of p0, p1, Lcom/zui/launcher/WorkspaceItemInfo;

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    iget p0, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    if-ltz p0, :cond_0

    move p2, v0

    :cond_0
    return p2

    :cond_1
    instance-of p0, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-nez p0, :cond_2

    instance-of p0, p1, Lcom/zui/launcher/FolderInfo;

    if-nez p0, :cond_2

    instance-of p0, p1, Lcom/zui/launcher/LenovoWidgetViewInfo;

    if-eqz p0, :cond_3

    :cond_2
    move p2, v0

    :cond_3
    return p2
.end method

.method protected supportsDrop(Lcom/zui/launcher/ItemInfo;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/zui/launcher/DeleteDropTarget;->supportsDrop(Landroid/content/Context;Lcom/zui/launcher/ItemInfo;)Z

    move-result p0

    return p0
.end method
