.class public Lcom/zui/launcher/DropTargetBar2;
.super Lcom/zui/launcher/DropTargetBar;
.source ""


# instance fields
.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/DropTargetBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/zui/launcher/DropTargetBar2;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/DropTargetBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/zui/launcher/DropTargetBar2;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/DropTargetBar2;->c:I

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/zui/launcher/DropTargetBar2;->b()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget-boolean v0, p0, Lcom/zui/launcher/DropTargetBar;->mIsVertical:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget-object v5, p0, Lcom/zui/launcher/DropTargetBar;->mDropTargets:[Lcom/zui/launcher/ButtonDropTarget;

    array-length v6, v5

    :goto_0
    if-ge v2, v6, :cond_4

    aget-object v7, v5, v2

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v8

    if-eq v8, v1, :cond_0

    invoke-virtual {v7, v3}, Lcom/zui/launcher/ButtonDropTarget;->setTextVisible(Z)V

    invoke-virtual {v7, v0, v4}, Landroid/widget/TextView;->measure(II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/DropTargetBar;->getVisibleButtonsCount()I

    move-result v0

    if-nez v0, :cond_2

    move v0, p1

    goto :goto_1

    :cond_2
    div-int v0, p1, v0

    :goto_1
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget-object v5, p0, Lcom/zui/launcher/DropTargetBar;->mDropTargets:[Lcom/zui/launcher/ButtonDropTarget;

    array-length v6, v5

    :goto_2
    if-ge v2, v6, :cond_4

    aget-object v7, v5, v2

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v8

    if-eq v8, v1, :cond_3

    invoke-virtual {v7, v3}, Lcom/zui/launcher/ButtonDropTarget;->setTextVisible(Z)V

    invoke-virtual {v7, v0, v4}, Landroid/widget/TextView;->measure(II)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 1

    const v0, 0x7f0a020c

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/DeleteDropTarget2;

    invoke-virtual {p0}, Lcom/zui/launcher/DeleteDropTarget2;->onWallpaperColorChanged()V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    iput-boolean v2, p0, Lcom/zui/launcher/DropTargetBar;->mIsVertical:Z

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget p1, p0, Lcom/zui/launcher/DropTargetBar2;->c:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v1}, Lcom/zui/launcher/DeviceProfile;->isSeascape()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v1}, Lcom/zui/launcher/DeviceProfile;->isSeascape()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/zui/launcher/DropTargetBar2;->c:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    div-int/2addr v1, v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0x31

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move v3, v4

    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/zui/launcher/DropTargetBar;->mDropTargets:[Lcom/zui/launcher/ButtonDropTarget;

    array-length p1, p0

    :goto_2
    if-ge v4, p1, :cond_3

    aget-object v0, p0, v4

    invoke-virtual {v0, v3}, Lcom/zui/launcher/ButtonDropTarget;->setToolTipLocation(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method
