.class public Lcom/zui/launcher/touch/SeascapePagedViewHandler;
.super Lcom/zui/launcher/touch/LandscapePagedViewHandler;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/touch/LandscapePagedViewHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustFloatingIconStartVelocity(Landroid/graphics/PointF;)V
    .locals 1

    iget p0, p1, Landroid/graphics/PointF;->x:F

    iget v0, p1, Landroid/graphics/PointF;->y:F

    neg-float p0, p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public getAdditionalInsetForTaskMenu(F)Landroid/graphics/PointF;
    .locals 1

    new-instance p0, Landroid/graphics/PointF;

    neg-float v0, p1

    invoke-direct {p0, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public getDegreesRotated()F
    .locals 0

    const/high16 p0, 0x43870000    # 270.0f

    return p0
.end method

.method public getDistanceToBottomOfRect(Lcom/zui/launcher/DeviceProfile;Landroid/graphics/Rect;)I
    .locals 0

    iget p0, p1, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    iget p1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public getRecentsRtlSetting(Landroid/content/res/Resources;)Z
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    return p0
.end method

.method public getRotation()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getSecondaryTranslationDirectionFactor()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getSplitAnimationTranslation(ILcom/zui/launcher/DeviceProfile;)I
    .locals 0

    return p1
.end method

.method public getSplitPositionOptions(Lcom/zui/launcher/DeviceProfile;)Ljava/util/List;
    .locals 2
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

    new-instance p0, Lcom/zui/launcher/util/SplitConfigurationOptions$SplitPositionOption;

    const p1, 0x7f0802a1

    const v0, 0x7f120632

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/zui/launcher/util/SplitConfigurationOptions$SplitPositionOption;-><init>(IIII)V

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSplitTranslationDirectionFactor(I)I
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const/4 p0, -0x1

    :cond_0
    return p0
.end method

.method public getTaskDragDisplacementFactor(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public getTaskMenuX(FLandroid/view/View;I)F
    .locals 0

    return p1
.end method

.method public getTaskMenuY(FLandroid/view/View;I)F
    .locals 0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p1, p0

    int-to-float p0, p3

    add-float/2addr p1, p0

    return p1
.end method

.method public getUpDirection(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public getUpDownSwipeDirection()Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;
    .locals 0

    sget-object p0, Lcom/zui/launcher/touch/SingleAxisSwipeDetector;->HORIZONTAL:Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;

    return-object p0
.end method

.method public isGoingUp(FZ)Z
    .locals 2

    const/4 p0, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_0
    cmpg-float p1, p1, v1

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    return p0
.end method

.method public setSplitIconParams(Landroid/view/View;Landroid/view/View;IIIZLcom/zui/launcher/DeviceProfile;Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;)V
    .locals 0

    invoke-super/range {p0 .. p8}, Lcom/zui/launcher/touch/LandscapePagedViewHandler;->setSplitIconParams(Landroid/view/View;Landroid/view/View;IIIZLcom/zui/launcher/DeviceProfile;Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout$LayoutParams;

    const p4, 0x800005

    const p5, 0x800003

    if-eqz p6, :cond_0

    move p7, p4

    goto :goto_0

    :cond_0
    move p7, p5

    :goto_0
    or-int/lit8 p7, p7, 0x30

    iput p7, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz p6, :cond_1

    goto :goto_1

    :cond_1
    move p4, p5

    :goto_1
    or-int/lit8 p4, p4, 0x30

    iput p4, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTaskMenuAroundTaskView(Landroid/widget/LinearLayout;F)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    iget p1, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    int-to-float p1, p1

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    return-void
.end method
