.class public Lcom/zui/launcher/DeleteDropTarget2;
.super Lcom/zui/launcher/ButtonDropTarget;
.source ""


# instance fields
.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/DeleteDropTarget2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/DeleteDropTarget2;->l:I

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

.method private e()V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/ButtonDropTarget;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/DeviceProfile;->isSeascape()Z

    move-result v1

    const v2, 0x7f0702e3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0702e4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f0702e2

    const v5, 0x7f0702e5

    if-eqz v1, :cond_0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0, v3, v1, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_0
    const/4 v1, 0x0

    const v2, 0x7f0702e8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private g()V
    .locals 3

    const v0, 0x7f080284

    invoke-virtual {p0, v0}, Lcom/zui/launcher/DeleteDropTarget2;->setDrawable(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zui/launcher/Launcher;->isBlackWallpaper:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/DeleteDropTarget2;->setTextColor(I)V

    iput v0, p0, Lcom/zui/launcher/ButtonDropTarget;->mHoverColor:I

    iget-object p0, p0, Lcom/zui/launcher/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0

    :cond_0
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/zui/launcher/DeleteDropTarget2;->setTextColor(I)V

    iput v0, p0, Lcom/zui/launcher/ButtonDropTarget;->mHoverColor:I

    iget-object v0, p0, Lcom/zui/launcher/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0601b2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_0
    return-void
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
    iput p1, p0, Lcom/zui/launcher/DeleteDropTarget2;->l:I

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

    invoke-direct {p0, p1}, Lcom/zui/launcher/DeleteDropTarget2;->d(Lcom/zui/launcher/ItemInfo;)Z

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

    invoke-direct {p0, p1}, Lcom/zui/launcher/DeleteDropTarget2;->d(Lcom/zui/launcher/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/ButtonDropTarget;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/zui/launcher/DeleteDropTarget2;->onAccessibilityDrop(Landroid/view/View;Lcom/zui/launcher/ItemInfo;)V

    iget-object p1, p0, Lcom/zui/launcher/ButtonDropTarget;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object p1

    new-instance v1, Lcom/zui/launcher/s;

    invoke-direct {v1, p0, p1, v0}, Lcom/zui/launcher/s;-><init>(Lcom/zui/launcher/DeleteDropTarget2;Lcom/zui/launcher/model/ModelWriter;I)V

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

.method public enterDraggingMode()V
    .locals 3

    invoke-super {p0}, Lcom/zui/launcher/ButtonDropTarget;->enterDraggingMode()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setPressed(Z)V

    iget-object v0, p0, Lcom/zui/launcher/ButtonDropTarget;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/ButtonDropTarget;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isSeascape()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080249

    goto :goto_0

    :cond_0
    const v0, 0x7f08024a

    goto :goto_0

    :cond_1
    const v0, 0x7f080248

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget p0, p0, Lcom/zui/launcher/ButtonDropTarget;->mHoverColor:I

    const/high16 v2, -0x1000000

    if-ne p0, v2, :cond_2

    const p0, 0x7f060120

    goto :goto_1

    :cond_2
    const p0, 0x7f06011f

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_3
    return-void
.end method

.method public exitDraggingMode()V
    .locals 1

    invoke-super {p0}, Lcom/zui/launcher/ButtonDropTarget;->exitDraggingMode()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setPressed(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public synthetic f(Lcom/zui/launcher/model/ModelWriter;I)V
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

    iget p0, p0, Lcom/zui/launcher/DeleteDropTarget2;->l:I

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

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/zui/launcher/DeleteDropTarget2;->e()V

    invoke-direct {p0}, Lcom/zui/launcher/DeleteDropTarget2;->g()V

    return-void
.end method

.method public final onDragEnter(Lcom/zui/launcher/DropTarget$DragObject;)V
    .locals 0

    iget-object p1, p1, Lcom/zui/launcher/DropTarget$DragObject;->stateAnnouncer:Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/DeleteDropTarget2;->enterDraggingMode()V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public final onDragExit(Lcom/zui/launcher/DropTarget$DragObject;)V
    .locals 1

    iget-boolean v0, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragComplete:Z

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/launcher/dragndrop/DragView;->setColor(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/DeleteDropTarget2;->exitDraggingMode()V

    :cond_1
    return-void
.end method

.method public onDragStart(Lcom/zui/launcher/DropTarget$DragObject;Lcom/zui/launcher/dragndrop/DragOptions;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/zui/launcher/ButtonDropTarget;->onDragStart(Lcom/zui/launcher/DropTarget$DragObject;Lcom/zui/launcher/dragndrop/DragOptions;)V

    iget-object p2, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    invoke-direct {p0, p2}, Lcom/zui/launcher/DeleteDropTarget2;->setTextBasedOnDragSource(Lcom/zui/launcher/ItemInfo;)V

    iget-object p1, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    invoke-direct {p0, p1}, Lcom/zui/launcher/DeleteDropTarget2;->setControlTypeBasedOnDragSource(Lcom/zui/launcher/ItemInfo;)V

    return-void
.end method

.method public onDrop(Lcom/zui/launcher/DropTarget$DragObject;Lcom/zui/launcher/dragndrop/DragOptions;)V
    .locals 1

    iget-object v0, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    invoke-direct {p0, v0}, Lcom/zui/launcher/DeleteDropTarget2;->d(Lcom/zui/launcher/ItemInfo;)Z

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
    .locals 0

    invoke-super {p0}, Lcom/zui/launcher/ButtonDropTarget;->onFinishInflate()V

    invoke-direct {p0}, Lcom/zui/launcher/DeleteDropTarget2;->e()V

    invoke-direct {p0}, Lcom/zui/launcher/DeleteDropTarget2;->g()V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/DeleteDropTarget2;->g()V

    return-void
.end method

.method public setDrawable(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/zui/launcher/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/ButtonDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setTextVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/ButtonDropTarget;->mText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-boolean v1, p0, Lcom/zui/launcher/ButtonDropTarget;->mTextVisible:Z

    if-ne v1, p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iput-boolean p1, p0, Lcom/zui/launcher/ButtonDropTarget;->mTextVisible:Z

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zui/launcher/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public startDragging()V
    .locals 1

    invoke-super {p0}, Lcom/zui/launcher/ButtonDropTarget;->startDragging()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setPressed(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

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

    invoke-static {p0, p1}, Lcom/zui/launcher/DeleteDropTarget2;->supportsDrop(Landroid/content/Context;Lcom/zui/launcher/ItemInfo;)Z

    move-result p0

    return p0
.end method
