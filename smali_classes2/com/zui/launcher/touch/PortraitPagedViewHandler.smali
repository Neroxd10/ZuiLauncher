.class public Lcom/zui/launcher/touch/PortraitPagedViewHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/touch/PagedOrientationHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustFloatingIconStartVelocity(Landroid/graphics/PointF;)V
    .locals 0

    return-void
.end method

.method public getAdditionalInsetForTaskMenu(F)Landroid/graphics/PointF;
    .locals 0

    new-instance p0, Landroid/graphics/PointF;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public getCenterForPage(Landroid/view/View;Landroid/graphics/Rect;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p0, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v0

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p0, p1

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public getChildBounds(Landroid/view/View;IIZ)Lcom/zui/launcher/touch/PagedOrientationHandler$ChildBounds;
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    add-int v0, p2, p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v2, v1, 0x2

    sub-int/2addr p3, v2

    if-eqz p4, :cond_0

    add-int p4, p3, v1

    invoke-virtual {p1, p2, p3, v0, p4}, Landroid/view/View;->layout(IIII)V

    :cond_0
    new-instance p1, Lcom/zui/launcher/touch/PagedOrientationHandler$ChildBounds;

    invoke-direct {p1, p0, v1, v0, p3}, Lcom/zui/launcher/touch/PagedOrientationHandler$ChildBounds;-><init>(IIII)V

    return-object p1
.end method

.method public getChildStart(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    return p0
.end method

.method public getChildStartWithTranslation(Landroid/view/View;)F
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    add-float/2addr p0, p1

    return p0
.end method

.method public getClearAllSidePadding(Landroid/view/View;Z)I
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    neg-int p0, p0

    :goto_0
    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public getDegreesRotated()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDistanceToBottomOfRect(Lcom/zui/launcher/DeviceProfile;Landroid/graphics/Rect;)I
    .locals 0

    iget p0, p1, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public getEnd(Landroid/graphics/RectF;)F
    .locals 0

    iget p0, p1, Landroid/graphics/RectF;->right:F

    return p0
.end method

.method public getMeasuredSize(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    return p0
.end method

.method public getPrimaryDirection(Landroid/view/MotionEvent;I)F
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p0

    return p0
.end method

.method public getPrimaryScale(Landroid/view/View;)F
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p0

    return p0
.end method

.method public getPrimaryScroll(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result p0

    return p0
.end method

.method public getPrimarySize(Landroid/graphics/RectF;)F
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p0

    return p0
.end method

.method public getPrimarySize(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0
.end method

.method public getPrimaryTranslationDirectionFactor()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getPrimaryValue(FF)F
    .locals 0

    return p1
.end method

.method public getPrimaryValue(II)I
    .locals 0

    return p1
.end method

.method public getPrimaryValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    return-object p1
.end method

.method public getPrimaryVelocity(Landroid/view/VelocityTracker;I)F
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result p0

    return p0
.end method

.method public getPrimaryViewTranslate()Landroid/util/FloatProperty;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/zui/launcher/LauncherAnimUtils;->VIEW_TRANSLATE_X:Landroid/util/FloatProperty;

    return-object p0
.end method

.method public getRecentsRtlSetting(Landroid/content/res/Resources;)Z
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getRotation()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getScrollOffsetEnd(Landroid/view/View;Landroid/graphics/Rect;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    sub-int/2addr p0, p1

    iget p1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public getScrollOffsetStart(Landroid/view/View;Landroid/graphics/Rect;)I
    .locals 0

    iget p0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public getSecondaryDimension(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method public getSecondaryTranslationDirectionFactor()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getSecondaryValue(FF)F
    .locals 0

    return p2
.end method

.method public getSecondaryValue(II)I
    .locals 0

    return p2
.end method

.method public getSecondaryValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    return-object p2
.end method

.method public getSecondaryViewTranslate()Landroid/util/FloatProperty;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/zui/launcher/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    return-object p0
.end method

.method public getSplitAnimationTranslation(ILcom/zui/launcher/DeviceProfile;)I
    .locals 0

    iget-boolean p0, p2, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    if-eqz p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getSplitPositionOptions(Lcom/zui/launcher/DeviceProfile;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/DeviceProfile;",
            ")",
            "Ljava/util/List<",
            "Lcom/zui/launcher/util/SplitConfigurationOptions$SplitPositionOption;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-boolean v1, p1, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    const v2, 0x7f120631

    const v3, 0x7f120632

    const v4, 0x7f0802a1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    if-eqz v1, :cond_0

    new-instance p1, Lcom/zui/launcher/util/SplitConfigurationOptions$SplitPositionOption;

    invoke-direct {p1, v4, v3, v0, v5}, Lcom/zui/launcher/util/SplitConfigurationOptions$SplitPositionOption;-><init>(IIII)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/zui/launcher/util/SplitConfigurationOptions$SplitPositionOption;

    invoke-direct {p1, v4, v2, v5, v5}, Lcom/zui/launcher/util/SplitConfigurationOptions$SplitPositionOption;-><init>(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/zui/launcher/DeviceProfile;->isSeascape()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Lcom/zui/launcher/util/SplitConfigurationOptions$SplitPositionOption;

    invoke-direct {p1, v4, v3, v0, v5}, Lcom/zui/launcher/util/SplitConfigurationOptions$SplitPositionOption;-><init>(IIII)V

    :goto_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-boolean p1, p1, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    if-eqz p1, :cond_2

    new-instance p1, Lcom/zui/launcher/util/SplitConfigurationOptions$SplitPositionOption;

    invoke-direct {p1, v4, v2, v5, v5}, Lcom/zui/launcher/util/SplitConfigurationOptions$SplitPositionOption;-><init>(IIII)V

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/zui/launcher/util/SplitConfigurationOptions$SplitPositionOption;

    const v0, 0x7f120633

    invoke-direct {p1, v4, v0, v5, v5}, Lcom/zui/launcher/util/SplitConfigurationOptions$SplitPositionOption;-><init>(IIII)V

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method public getSplitSelectTaskOffset(Landroid/util/FloatProperty;Landroid/util/FloatProperty;Lcom/zui/launcher/DeviceProfile;)Landroid/util/FloatProperty;
    .locals 0

    iget-boolean p0, p3, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method public getSplitTaskViewDismissDirection(Lcom/zui/launcher/util/SplitConfigurationOptions$SplitPositionOption;Lcom/zui/launcher/DeviceProfile;)I
    .locals 1

    iget p0, p1, Lcom/zui/launcher/util/SplitConfigurationOptions$SplitPositionOption;->mStagePosition:I

    const/4 v0, 0x1

    if-nez p0, :cond_1

    iget-boolean p0, p2, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    if-ne p0, v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid split stage position: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/zui/launcher/util/SplitConfigurationOptions$SplitPositionOption;->mStagePosition:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSplitTranslationDirectionFactor(I)I
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const/4 p0, -0x1

    :cond_0
    return p0
.end method

.method public getStart(Landroid/graphics/RectF;)F
    .locals 0

    iget p0, p1, Landroid/graphics/RectF;->left:F

    return p0
.end method

.method public getTaskDragDisplacementFactor(Z)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getTaskMenuWidth(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    return p0
.end method

.method public getTaskMenuX(FLandroid/view/View;I)F
    .locals 0

    int-to-float p0, p3

    add-float/2addr p1, p0

    return p1
.end method

.method public getTaskMenuY(FLandroid/view/View;I)F
    .locals 0

    return p1
.end method

.method public getUpDirection(Z)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getUpDownSwipeDirection()Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;
    .locals 0

    sget-object p0, Lcom/zui/launcher/touch/SingleAxisSwipeDetector;->VERTICAL:Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;

    return-object p0
.end method

.method public isGoingUp(FZ)Z
    .locals 0

    const/4 p0, 0x0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLayoutNaturalToLauncher()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public measureGroupedTaskViewThumbnailBounds(Landroid/view/View;Landroid/view/View;IILcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;Lcom/zui/launcher/DeviceProfile;)V
    .locals 2

    iget p0, p6, Lcom/zui/launcher/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    sub-int v0, p4, p0

    iget-boolean v1, p5, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;->appsStackedVertically:Z

    if-eqz v1, :cond_0

    iget v1, p5, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;->dividerHeightPercent:F

    int-to-float p4, p4

    mul-float/2addr v1, p4

    float-to-int p4, v1

    goto :goto_0

    :cond_0
    iget p4, p5, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;->dividerWidthPercent:F

    int-to-float v1, p3

    mul-float/2addr p4, v1

    float-to-int p4, p4

    :goto_0
    iget-boolean v1, p5, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;->appsStackedVertically:Z

    if-eqz v1, :cond_1

    iget p5, p5, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;->topTaskPercent:F

    goto :goto_1

    :cond_1
    iget p5, p5, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;->leftTaskPercent:F

    :goto_1
    iget-boolean p6, p6, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    if-eqz p6, :cond_2

    int-to-float p6, p3

    mul-float/2addr p6, p5

    float-to-int p5, p6

    sub-int/2addr p3, p5

    sub-int/2addr p3, p4

    add-int/2addr p4, p5

    int-to-float p4, p4

    invoke-virtual {p2, p4}, Landroid/view/View;->setTranslationX(F)V

    int-to-float p0, p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationY(F)V

    move p0, p3

    move p3, p5

    move p4, v0

    goto :goto_2

    :cond_2
    int-to-float p6, v0

    mul-float/2addr p6, p5

    float-to-int p5, p6

    sub-int/2addr v0, p5

    sub-int/2addr v0, p4

    add-int/2addr p0, p5

    add-int/2addr p0, p4

    int-to-float p0, p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationY(F)V

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationX(F)V

    move p0, p3

    move p4, v0

    move v0, p5

    :goto_2
    const/high16 p5, 0x40000000    # 2.0f

    invoke-static {p3, p5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    invoke-static {v0, p5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p6

    invoke-virtual {p1, p3, p6}, Landroid/view/View;->measure(II)V

    invoke-static {p0, p5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-static {p4, p5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p2, p0, p1}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public set(Ljava/lang/Object;Lcom/zui/launcher/touch/PagedOrientationHandler$Float2DAction;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/zui/launcher/touch/PagedOrientationHandler$Float2DAction<",
            "TT;>;F)V"
        }
    .end annotation

    const/4 p0, 0x0

    invoke-interface {p2, p1, p3, p0}, Lcom/zui/launcher/touch/PagedOrientationHandler$Float2DAction;->call(Ljava/lang/Object;FF)V

    return-void
.end method

.method public set(Ljava/lang/Object;Lcom/zui/launcher/touch/PagedOrientationHandler$Int2DAction;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/zui/launcher/touch/PagedOrientationHandler$Int2DAction<",
            "TT;>;I)V"
        }
    .end annotation

    const/4 p0, 0x0

    invoke-interface {p2, p1, p3, p0}, Lcom/zui/launcher/touch/PagedOrientationHandler$Int2DAction;->call(Ljava/lang/Object;II)V

    return-void
.end method

.method public set(Ljava/lang/Object;Lcom/zui/launcher/touch/PagedOrientationHandler$Int2DAction;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/zui/launcher/touch/PagedOrientationHandler$Int2DAction<",
            "TT;>;II)V"
        }
    .end annotation

    invoke-interface {p2, p1, p3, p4}, Lcom/zui/launcher/touch/PagedOrientationHandler$Int2DAction;->call(Ljava/lang/Object;II)V

    return-void
.end method

.method public setLayoutParamsForTaskMenuOptionItem(Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout;Lcom/zui/launcher/DeviceProfile;)V
    .locals 1

    iget-boolean p0, p3, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-boolean p0, p3, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 p0, 0x3f800000    # 1.0f

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const p0, 0x7f0a03b7

    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/zui/launcher/Utilities;->setStartMarginForView(Landroid/view/View;I)V

    const p0, 0x7f0a01d4

    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/zui/launcher/Utilities;->setStartMarginForView(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 p0, -0x1

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :goto_0
    const/4 p0, -0x2

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    return-void
.end method

.method public setMaxScroll(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    return-void
.end method

.method public setSecondary(Ljava/lang/Object;Lcom/zui/launcher/touch/PagedOrientationHandler$Float2DAction;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/zui/launcher/touch/PagedOrientationHandler$Float2DAction<",
            "TT;>;F)V"
        }
    .end annotation

    const/4 p0, 0x0

    invoke-interface {p2, p1, p0, p3}, Lcom/zui/launcher/touch/PagedOrientationHandler$Float2DAction;->call(Ljava/lang/Object;FF)V

    return-void
.end method

.method public setSplitIconParams(Landroid/view/View;Landroid/view/View;IIIZLcom/zui/launcher/DeviceProfile;Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    iget-boolean p5, p8, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;->appsStackedVertically:Z

    if-eqz p5, :cond_0

    iget-object p5, p8, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result p5

    goto :goto_0

    :cond_0
    iget-object p5, p8, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result p5

    :goto_0
    iget-boolean p6, p7, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    const/4 p7, 0x0

    if-eqz p6, :cond_1

    const p6, 0x800033

    iput p6, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p8

    sub-int p8, p4, p8

    int-to-float p8, p8

    invoke-virtual {p1, p8}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, p7}, Landroid/view/View;->setTranslationY(F)V

    iput p6, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    add-int/2addr p4, p5

    int-to-float p4, p4

    goto :goto_1

    :cond_1
    const/16 p4, 0x31

    iput p4, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    neg-int p5, p5

    int-to-float p5, p5

    const/high16 p6, 0x40000000    # 2.0f

    div-float/2addr p5, p6

    invoke-virtual {p1, p5}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, p7}, Landroid/view/View;->setTranslationY(F)V

    iput p4, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p4, p6

    :goto_1
    invoke-virtual {p2, p4}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p2, p7}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTaskMenuAroundTaskView(Landroid/widget/LinearLayout;F)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    iget p1, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float p1, p1

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget p1, p0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float p1, p1

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    return-void
.end method

.method public setTaskOptionsMenuLayoutOrientation(Lcom/zui/launcher/DeviceProfile;Landroid/widget/LinearLayout;)V
    .locals 0

    iget-boolean p0, p1, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    if-eqz p0, :cond_0

    iget-boolean p0, p1, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method
