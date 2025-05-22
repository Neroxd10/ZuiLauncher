.class public Lcom/zui/launcher/ShortcutAndWidgetContainer;
.super Landroid/view/ViewGroup;
.source ""


# instance fields
.field private final a:[I

.field private final b:I

.field private final c:Landroid/app/WallpaperManager;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Lcom/zui/launcher/views/ActivityContext;

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->a:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->i:Z

    iput-boolean v0, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->j:Z

    invoke-static {p1}, Lcom/zui/launcher/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/views/ActivityContext;

    iput-object v0, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->h:Lcom/zui/launcher/views/ActivityContext;

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->c:Landroid/app/WallpaperManager;

    iput p2, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->b:I

    return-void
.end method

.method private a(Lcom/zui/launcher/CellLayout$LayoutParams;I)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/HotseatLayout;

    invoke-virtual {v0, p0, p1, p2}, Lcom/zui/launcher/HotseatLayout;->getHotseatChildLeft(Lcom/zui/launcher/ShortcutAndWidgetContainer;Lcom/zui/launcher/CellLayout$LayoutParams;I)I

    move-result p0

    return p0
.end method

.method private b(Lcom/zui/launcher/CellLayout$LayoutParams;I)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/HotseatLayout;

    invoke-virtual {v0, p0, p1, p2}, Lcom/zui/launcher/HotseatLayout;->getHotseatChildTop(Lcom/zui/launcher/ShortcutAndWidgetContainer;Lcom/zui/launcher/CellLayout$LayoutParams;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->cancelLongPress()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCellContentHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->h:Lcom/zui/launcher/views/ActivityContext;

    invoke-interface {v1}, Lcom/zui/launcher/views/ActivityContext;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v1

    iget p0, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->b:I

    invoke-virtual {v1, p0}, Lcom/zui/launcher/DeviceProfile;->getCellHeight(I)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getCellContentPaddingTop()I
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    const/4 p0, 0x0

    return p0
.end method

.method public getCellCountX()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->f:I

    return p0
.end method

.method public getCellCountY()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->g:I

    return p0
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget v4, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    if-gt v4, p1, :cond_0

    iget v5, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_0

    iget v4, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    if-gt v4, p2, :cond_0

    iget v3, v3, Lcom/zui/launcher/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v3

    if-ge p2, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCountH()I
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->isExchangeXY()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->getCellCountY()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->getCellCountX()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getCountV()I
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->isExchangeXY()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->getCellCountX()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->getCellCountY()I

    move-result p0

    :goto_0
    return p0
.end method

.method public invertLayoutHorizontally()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isExchangeXY()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->j:Z

    return p0
.end method

.method public measureChild(Landroid/view/View;)V
    .locals 12

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget-object v1, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->h:Lcom/zui/launcher/views/ActivityContext;

    invoke-interface {v1}, Lcom/zui/launcher/views/ActivityContext;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v8

    instance-of v10, p1, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    if-eqz v10, :cond_0

    :goto_0
    iget v2, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->d:I

    iget v3, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->e:I

    invoke-virtual {p0}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v4

    invoke-virtual {p0}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->getCountH()I

    move-result v5

    iget-object v1, v8, Lcom/zui/launcher/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v6, v1, Landroid/graphics/PointF;->x:F

    iget v7, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->isExchangeXY()Z

    move-result v8

    invoke-virtual {p0}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->getCountV()I

    move-result v9

    move-object v1, v0

    invoke-virtual/range {v1 .. v9}, Lcom/zui/launcher/CellLayout$LayoutParams;->setup(IIZIFFZI)V

    goto/16 :goto_8

    :cond_0
    instance-of v1, p1, Lcom/zui/launcher/LeosWidgetInterface;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    instance-of v1, p1, Lcom/zui/launcher/DummyAppWidgetView;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->d:I

    iget v3, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->e:I

    invoke-virtual {p0}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v4

    invoke-virtual {p0}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->getCountH()I

    move-result v5

    invoke-virtual {p0}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->isExchangeXY()Z

    move-result v6

    invoke-virtual {p0}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->getCountV()I

    move-result v7

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lcom/zui/launcher/CellLayout$LayoutParams;->setup(IIZIZI)V

    invoke-virtual {v8}, Lcom/zui/launcher/DeviceProfile;->isLayoutHorizontal()Z

    move-result v1

    iget v2, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->b:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->a(Lcom/zui/launcher/CellLayout$LayoutParams;I)I

    move-result v5

    iput v5, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->x:I

    invoke-direct {p0, v0, v2}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->b(Lcom/zui/launcher/CellLayout$LayoutParams;I)I

    move-result v2

    iput v2, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->y:I

    invoke-virtual {v8}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, v8, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    if-eqz v2, :cond_4

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    move v2, v4

    :goto_1
    invoke-virtual {p0}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->getCellContentHeight()I

    move-result v5

    const/4 v6, 0x0

    iget v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    sub-int/2addr v7, v5

    int-to-float v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->b:I

    if-nez v6, :cond_5

    iget v6, v8, Lcom/zui/launcher/DeviceProfile;->workspaceCellPaddingXPx:I

    goto :goto_2

    :cond_5
    iget v6, v8, Lcom/zui/launcher/DeviceProfile;->edgeMarginPx:I

    int-to-float v6, v6

    div-float/2addr v6, v7

    float-to-int v6, v6

    :goto_2
    iget v9, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->b:I

    if-nez v9, :cond_7

    if-eqz v1, :cond_6

    iget v7, v8, Lcom/zui/launcher/DeviceProfile;->landCellPaddingEndPx:I

    goto :goto_3

    :cond_6
    iget v7, v8, Lcom/zui/launcher/DeviceProfile;->workspaceCellPaddingXPx:I

    goto :goto_3

    :cond_7
    iget v9, v8, Lcom/zui/launcher/DeviceProfile;->edgeMarginPx:I

    int-to-float v9, v9

    div-float/2addr v9, v7

    float-to-int v7, v9

    :goto_3
    iget v9, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->b:I

    const/4 v11, 0x2

    if-ne v9, v11, :cond_8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070384

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f070380

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    goto :goto_4

    :cond_8
    if-ne v9, v3, :cond_9

    invoke-virtual {v8}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v9

    if-eqz v9, :cond_9

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v7, v8, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    sub-int/2addr v6, v7

    div-int/2addr v6, v11

    move v7, v6

    :cond_9
    :goto_4
    iget v9, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->b:I

    if-ne v9, v3, :cond_a

    invoke-virtual {v8}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p1, v6, v4, v7, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_8

    :cond_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/launcher/BluePoint;->isBluePointEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v8}, Lcom/zui/launcher/DeviceProfile;->isLayoutHorizontal()Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    :goto_5
    invoke-virtual {v8}, Lcom/zui/launcher/DeviceProfile;->isLayoutHorizontal()Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    :goto_6
    if-eqz v2, :cond_d

    move v6, v4

    :cond_d
    if-eqz v1, :cond_e

    move v5, v4

    :cond_e
    if-eqz v2, :cond_12

    goto :goto_7

    :cond_f
    if-eqz v2, :cond_10

    move v6, v4

    :cond_10
    if-eqz v1, :cond_11

    move v5, v4

    :cond_11
    if-eqz v2, :cond_12

    :goto_7
    move v7, v4

    :cond_12
    invoke-virtual {p1, v6, v5, v7, v4}, Landroid/view/View;->setPadding(IIII)V

    :goto_8
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    if-eqz v10, :cond_13

    invoke-virtual {p0}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->isExchangeXY()Z

    move-result p0

    if-eqz p0, :cond_13

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_9

    :cond_13
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    :goto_9
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_4

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p5

    const/16 v0, 0x8

    if-eq p5, v0, :cond_3

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Lcom/zui/launcher/CellLayout$LayoutParams;

    instance-of v0, p4, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    move-object v2, p4

    check-cast v2, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    iget-object v3, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->h:Lcom/zui/launcher/views/ActivityContext;

    invoke-interface {v3}, Lcom/zui/launcher/views/ActivityContext;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v3

    iget-object v3, v3, Lcom/zui/launcher/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-virtual {v2, v5}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->setScaleToFit(F)V

    iget v5, p5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float v6, v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    sub-float/2addr v6, v5

    neg-float v4, v6

    div-float/2addr v4, v1

    iget v5, p5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    int-to-float v6, v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    sub-float/2addr v6, v5

    neg-float v3, v6

    div-float/2addr v3, v1

    invoke-virtual {v2, v4, v3}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->setTranslationForCentering(FF)V

    goto :goto_1

    :cond_0
    instance-of v2, p4, Lcom/zui/launcher/LeosWidgetInterface;

    if-eqz v2, :cond_1

    move-object v2, p4

    check-cast v2, Lcom/zui/launcher/LeosWidgetInterface;

    iget-object v3, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->h:Lcom/zui/launcher/views/ActivityContext;

    invoke-interface {v3}, Lcom/zui/launcher/views/ActivityContext;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v3

    iget-object v3, v3, Lcom/zui/launcher/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-interface {v2, v5}, Lcom/zui/launcher/LeosWidgetInterface;->setScaleToFit(F)V

    iget v5, p5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float v6, v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    sub-float/2addr v6, v5

    neg-float v4, v6

    div-float/2addr v4, v1

    iget v5, p5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    int-to-float v6, v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    sub-float/2addr v6, v5

    neg-float v3, v6

    div-float/2addr v3, v1

    invoke-interface {v2, v4, v3}, Lcom/zui/launcher/LeosWidgetInterface;->setTranslationForCentering(FF)V

    :cond_1
    :goto_1
    iget v1, p5, Lcom/zui/launcher/CellLayout$LayoutParams;->x:I

    iget v2, p5, Lcom/zui/launcher/CellLayout$LayoutParams;->y:I

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->isExchangeXY()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p4}, Landroid/view/View;->getPivotX()F

    move-result v0

    invoke-virtual {p4}, Landroid/view/View;->getPivotY()F

    move-result v3

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, v0, v4

    invoke-virtual {p4, v4}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, v3, v4

    invoke-virtual {p4, v4}, Landroid/view/View;->setPivotY(F)V

    const/high16 v4, -0x3d4c0000    # -90.0f

    invoke-virtual {p4, v4}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    iget v5, p5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {p4, v4}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p4, v0}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p4, v3}, Landroid/view/View;->setPivotY(F)V

    iget v0, p5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    add-int/2addr v0, v1

    iget v3, p5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_2

    :cond_2
    iget v0, p5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    add-int/2addr v0, v1

    iget v3, p5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :goto_2
    add-int/2addr v3, v2

    invoke-virtual {p4, v1, v2, v0, v3}, Landroid/view/View;->layout(IIII)V

    iget-boolean p4, p5, Lcom/zui/launcher/CellLayout$LayoutParams;->dropped:Z

    if-eqz p4, :cond_3

    iput-boolean p2, p5, Lcom/zui/launcher/CellLayout$LayoutParams;->dropped:Z

    iget-object p4, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->a:[I

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    :try_start_0
    iget-object v3, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->c:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const-string v5, "android.home.drop"

    aget v0, p4, p2

    add-int/2addr v0, v1

    iget v1, p5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    div-int/lit8 v1, v1, 0x2

    add-int v6, v0, v1

    const/4 v0, 0x1

    aget p4, p4, v0

    add-int/2addr p4, v2

    iget p5, p5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    div-int/lit8 p5, p5, 0x2

    add-int v7, p4, p5

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p4

    invoke-virtual {p4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, p2}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    instance-of v0, p1, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/LenovoWidgetViewInfo;

    iget-object p0, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->h:Lcom/zui/launcher/views/ActivityContext;

    check-cast p0, Lcom/zui/launcher/Launcher;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->addWeatherWidget(Lcom/zui/launcher/LenovoWidgetViewInfo;)V

    :cond_1
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    instance-of v0, p1, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/LenovoWidgetViewInfo;

    iget-object p0, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->h:Lcom/zui/launcher/views/ActivityContext;

    check-cast p0, Lcom/zui/launcher/Launcher;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->removeWeatherWidget(Lcom/zui/launcher/LenovoWidgetViewInfo;)V

    :cond_1
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    if-eqz p1, :cond_0

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method public setCellDimensions(IIIIZ)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->d:I

    iput p2, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->e:I

    iput p3, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->f:I

    iput p4, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->g:I

    iput-boolean p5, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->j:Z

    return-void
.end method

.method public setInvertIfRtl(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->i:Z

    return-void
.end method

.method public setupLp(Landroid/view/View;)V
    .locals 10

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/CellLayout$LayoutParams;

    instance-of v1, p1, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    if-eqz v1, :cond_0

    :goto_0
    iget-object p1, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->h:Lcom/zui/launcher/views/ActivityContext;

    invoke-interface {p1}, Lcom/zui/launcher/views/ActivityContext;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    iget v2, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->d:I

    iget v3, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->e:I

    invoke-virtual {p0}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v4

    invoke-virtual {p0}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->getCountH()I

    move-result v5

    iget-object p1, p1, Lcom/zui/launcher/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v6, p1, Landroid/graphics/PointF;->x:F

    iget v7, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->isExchangeXY()Z

    move-result v8

    invoke-virtual {p0}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->getCountV()I

    move-result v9

    move-object v1, v0

    invoke-virtual/range {v1 .. v9}, Lcom/zui/launcher/CellLayout$LayoutParams;->setup(IIZIFFZI)V

    goto :goto_1

    :cond_0
    instance-of p1, p1, Lcom/zui/launcher/LeosWidgetInterface;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->d:I

    iget v3, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->e:I

    invoke-virtual {p0}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v4

    invoke-virtual {p0}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->getCountH()I

    move-result v5

    invoke-virtual {p0}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->isExchangeXY()Z

    move-result v6

    invoke-virtual {p0}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->getCountV()I

    move-result v7

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lcom/zui/launcher/CellLayout$LayoutParams;->setup(IIZIZI)V

    iget p1, p0, Lcom/zui/launcher/ShortcutAndWidgetContainer;->b:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->a(Lcom/zui/launcher/CellLayout$LayoutParams;I)I

    move-result v1

    iput v1, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->x:I

    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->b(Lcom/zui/launcher/CellLayout$LayoutParams;I)I

    move-result p0

    iput p0, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->y:I

    :cond_2
    :goto_1
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
