.class public Lcom/zui/launcher/DropTargetBar;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/zui/launcher/dragndrop/DragController$DragListener;
.implements Lcom/zui/launcher/Insettable;


# static fields
.field protected static final DEFAULT_DRAG_FADE_DURATION:I = 0xaf

.field protected static final DEFAULT_INTERPOLATOR:Landroid/animation/TimeInterpolator;


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private b:Landroid/view/ViewPropertyAnimator;

.field protected mDeferOnDragEnd:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field protected mDropTargets:[Lcom/zui/launcher/ButtonDropTarget;

.field protected mIsVertical:Z

.field protected mVisible:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/zui/launcher/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/zui/launcher/DropTargetBar;->DEFAULT_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/zui/launcher/t;

    invoke-direct {p1, p0}, Lcom/zui/launcher/t;-><init>(Lcom/zui/launcher/DropTargetBar;)V

    iput-object p1, p0, Lcom/zui/launcher/DropTargetBar;->a:Ljava/lang/Runnable;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/DropTargetBar;->mVisible:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/DropTargetBar;->mIsVertical:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/zui/launcher/t;

    invoke-direct {p1, p0}, Lcom/zui/launcher/t;-><init>(Lcom/zui/launcher/DropTargetBar;)V

    iput-object p1, p0, Lcom/zui/launcher/DropTargetBar;->a:Ljava/lang/Runnable;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/DropTargetBar;->mVisible:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/DropTargetBar;->mIsVertical:Z

    return-void
.end method


# virtual methods
.method public synthetic a()V
    .locals 0

    invoke-static {p0}, Lcom/zui/launcher/anim/AlphaUpdateListener;->updateVisibility(Landroid/view/View;)V

    return-void
.end method

.method public animateToVisibility(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/launcher/DropTargetBar;->mVisible:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/zui/launcher/DropTargetBar;->mVisible:Z

    iget-object p1, p0, Lcom/zui/launcher/DropTargetBar;->b:Landroid/view/ViewPropertyAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/DropTargetBar;->b:Landroid/view/ViewPropertyAnimator;

    :cond_0
    iget-boolean p1, p0, Lcom/zui/launcher/DropTargetBar;->mVisible:Z

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/zui/launcher/DropTargetBar;->DEFAULT_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xaf

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/DropTargetBar;->a:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/DropTargetBar;->b:Landroid/view/ViewPropertyAnimator;

    :cond_2
    return-void
.end method

.method protected deferOnDragEnd()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/DropTargetBar;->mDeferOnDragEnd:Z

    return-void
.end method

.method public getDropTargets()[Lcom/zui/launcher/ButtonDropTarget;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/DropTargetBar;->mDropTargets:[Lcom/zui/launcher/ButtonDropTarget;

    return-object p0
.end method

.method protected getVisibleButtonsCount()I
    .locals 5

    iget-object p0, p0, Lcom/zui/launcher/DropTargetBar;->mDropTargets:[Lcom/zui/launcher/ButtonDropTarget;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public onDragEnd()V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/launcher/DropTargetBar;->mDeferOnDragEnd:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/zui/launcher/DropTargetBar;->animateToVisibility(Z)V

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/zui/launcher/DropTargetBar;->mDeferOnDragEnd:Z

    :goto_0
    return-void
.end method

.method public onDragStart(Lcom/zui/launcher/DropTarget$DragObject;Lcom/zui/launcher/dragndrop/DragOptions;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/DropTargetBar;->animateToVisibility(Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    new-array v0, v0, [Lcom/zui/launcher/ButtonDropTarget;

    iput-object v0, p0, Lcom/zui/launcher/DropTargetBar;->mDropTargets:[Lcom/zui/launcher/ButtonDropTarget;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/DropTargetBar;->mDropTargets:[Lcom/zui/launcher/ButtonDropTarget;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/ButtonDropTarget;

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/zui/launcher/DropTargetBar;->mDropTargets:[Lcom/zui/launcher/ButtonDropTarget;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/zui/launcher/ButtonDropTarget;->setDropTargetBar(Lcom/zui/launcher/DropTargetBar;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    iget-boolean p1, p0, Lcom/zui/launcher/DropTargetBar;->mIsVertical:Z

    const/16 p3, 0x8

    const/4 p5, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0702c3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object p0, p0, Lcom/zui/launcher/DropTargetBar;->mDropTargets:[Lcom/zui/launcher/ButtonDropTarget;

    array-length p2, p0

    move v0, p1

    move p4, p5

    :goto_0
    if-ge p4, p2, :cond_4

    aget-object v1, p0, p4

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eq v2, p3, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1, p5, v0, v3, v2}, Landroid/widget/TextView;->layout(IIII)V

    add-int v0, v2, p1

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/DropTargetBar;->getVisibleButtonsCount()I

    move-result p1

    sub-int/2addr p4, p2

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    div-int/2addr p4, p1

    :goto_1
    div-int/lit8 p1, p4, 0x2

    iget-object p0, p0, Lcom/zui/launcher/DropTargetBar;->mDropTargets:[Lcom/zui/launcher/ButtonDropTarget;

    array-length p2, p0

    move v0, p5

    :goto_2
    if-ge v0, p2, :cond_4

    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eq v2, p3, :cond_3

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v3, p1, v2

    add-int/2addr v2, p1

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1, v3, p5, v2, v4}, Landroid/widget/TextView;->layout(IIII)V

    add-int/2addr p1, p4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget-boolean v0, p0, Lcom/zui/launcher/DropTargetBar;->mIsVertical:Z

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/zui/launcher/DropTargetBar;->mDropTargets:[Lcom/zui/launcher/ButtonDropTarget;

    array-length v5, v2

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_7

    aget-object v7, v2, v6

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v8

    if-eq v8, v3, :cond_0

    invoke-virtual {v7, v4}, Lcom/zui/launcher/ButtonDropTarget;->setTextVisible(Z)V

    invoke-virtual {v7, v0, v1}, Landroid/widget/TextView;->measure(II)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

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
    iget-object v5, p0, Lcom/zui/launcher/DropTargetBar;->mDropTargets:[Lcom/zui/launcher/ButtonDropTarget;

    array-length v6, v5

    const/4 v7, 0x1

    move v8, v4

    move v9, v7

    :goto_2
    if-ge v8, v6, :cond_5

    aget-object v10, v5, v8

    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v11

    if-eq v11, v3, :cond_4

    if-eqz v9, :cond_3

    invoke-virtual {v10, v0}, Lcom/zui/launcher/ButtonDropTarget;->isTextTruncated(I)Z

    move-result v9

    if-nez v9, :cond_3

    move v9, v7

    goto :goto_3

    :cond_3
    move v9, v4

    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/zui/launcher/DropTargetBar;->mDropTargets:[Lcom/zui/launcher/ButtonDropTarget;

    array-length v5, v2

    :goto_4
    if-ge v4, v5, :cond_7

    aget-object v6, v2, v4

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-eq v7, v3, :cond_6

    invoke-virtual {v6, v9}, Lcom/zui/launcher/ButtonDropTarget;->setTextVisible(Z)V

    invoke-virtual {v6, v0, v1}, Landroid/widget/TextView;->measure(II)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 8

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

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz p1, :cond_2

    iget p1, v1, Lcom/zui/launcher/DeviceProfile;->dropTargetBarSizePx:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget p1, v1, Lcom/zui/launcher/DeviceProfile;->availableHeightPx:I

    iget v5, v1, Lcom/zui/launcher/DeviceProfile;->edgeMarginPx:I

    mul-int/2addr v5, v4

    sub-int/2addr p1, v5

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

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    move v3, v4

    goto :goto_2

    :cond_2
    iget-boolean p1, v1, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    if-eqz p1, :cond_3

    iget p1, v1, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    iget v5, v1, Lcom/zui/launcher/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v6, v5, 0x2

    sub-int/2addr p1, v6

    iget-object v6, v1, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v6, v6, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    iget v7, v1, Lcom/zui/launcher/DeviceProfile;->cellWidthPx:I

    mul-int/2addr v7, v6

    sub-int/2addr p1, v7

    add-int/2addr v6, v3

    mul-int/2addr v6, v4

    div-int/2addr p1, v6

    add-int/2addr p1, v5

    goto :goto_1

    :cond_3
    iget p1, v1, Lcom/zui/launcher/DeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    iget-object v3, v1, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget-object v3, v3, Lcom/zui/launcher/InvariantDeviceProfile;->defaultWidgetPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v3

    :goto_1
    iget v3, v1, Lcom/zui/launcher/DeviceProfile;->availableWidthPx:I

    mul-int/2addr p1, v4

    sub-int/2addr v3, p1

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v3, v1, Lcom/zui/launcher/DeviceProfile;->edgeMarginPx:I

    add-int/2addr p1, v3

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget p1, v1, Lcom/zui/launcher/DeviceProfile;->dropTargetBarSizePx:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p1, 0x31

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move v3, v2

    :goto_2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/zui/launcher/DropTargetBar;->mDropTargets:[Lcom/zui/launcher/ButtonDropTarget;

    array-length p1, p0

    :goto_3
    if-ge v2, p1, :cond_4

    aget-object v0, p0, v2

    invoke-virtual {v0, v3}, Lcom/zui/launcher/ButtonDropTarget;->setToolTipLocation(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public setup(Lcom/zui/launcher/dragndrop/DragController;)V
    .locals 3

    invoke-virtual {p1, p0}, Lcom/zui/launcher/dragndrop/DragController;->addDragListener(Lcom/zui/launcher/dragndrop/DragController$DragListener;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/DropTargetBar;->mDropTargets:[Lcom/zui/launcher/ButtonDropTarget;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/zui/launcher/dragndrop/DragController;->addDragListener(Lcom/zui/launcher/dragndrop/DragController$DragListener;)V

    iget-object v1, p0, Lcom/zui/launcher/DropTargetBar;->mDropTargets:[Lcom/zui/launcher/ButtonDropTarget;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/zui/launcher/dragndrop/DragController;->addDropTarget(Lcom/zui/launcher/DropTarget;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
