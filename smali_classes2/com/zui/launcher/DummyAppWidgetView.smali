.class public Lcom/zui/launcher/DummyAppWidgetView;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/zui/launcher/views/BaseDragLayer$TouchCompleteListener;


# static fields
.field public static final PADDING_V:F = 3.0f

.field public static final TAG:Ljava/lang/String; = "DummyAppWidgetView"


# instance fields
.field private a:Lcom/zui/launcher/CheckLongPressHelper;

.field private b:Lcom/zui/launcher/dragndrop/DragLayer;

.field private c:Lcom/zui/launcher/Workspace;

.field private d:Lcom/zui/launcher/DummyProgressView;

.field private e:I

.field private f:I

.field private g:I

.field h:F

.field final i:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/zui/launcher/DummyAppWidgetView;->e:I

    iput p2, p0, Lcom/zui/launcher/DummyAppWidgetView;->f:I

    iput p2, p0, Lcom/zui/launcher/DummyAppWidgetView;->g:I

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/zui/launcher/DummyAppWidgetView;->h:F

    new-instance p2, Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lcom/zui/launcher/DummyAppWidgetView;->i:Landroid/graphics/PointF;

    new-instance p2, Lcom/zui/launcher/CheckLongPressHelper;

    invoke-direct {p2, p0}, Lcom/zui/launcher/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/zui/launcher/DummyAppWidgetView;->a:Lcom/zui/launcher/CheckLongPressHelper;

    check-cast p1, Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/DummyAppWidgetView;->b:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/DummyAppWidgetView;->c:Lcom/zui/launcher/Workspace;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/zui/launcher/DummyAppWidgetView;->e:I

    iput p2, p0, Lcom/zui/launcher/DummyAppWidgetView;->f:I

    iput p2, p0, Lcom/zui/launcher/DummyAppWidgetView;->g:I

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/zui/launcher/DummyAppWidgetView;->h:F

    new-instance p2, Landroid/graphics/PointF;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lcom/zui/launcher/DummyAppWidgetView;->i:Landroid/graphics/PointF;

    new-instance p2, Lcom/zui/launcher/CheckLongPressHelper;

    invoke-direct {p2, p0}, Lcom/zui/launcher/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/zui/launcher/DummyAppWidgetView;->a:Lcom/zui/launcher/CheckLongPressHelper;

    check-cast p1, Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/DummyAppWidgetView;->b:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/DummyAppWidgetView;->c:Lcom/zui/launcher/Workspace;

    return-void
.end method

.method private a(Lcom/zui/launcher/CellLayout;)[I
    .locals 2

    invoke-virtual {p1}, Lcom/zui/launcher/CellLayout;->getCellWidth()I

    move-result p0

    invoke-virtual {p1}, Lcom/zui/launcher/CellLayout;->getCellHeight()I

    move-result p1

    if-lez p0, :cond_0

    if-lez p1, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 p0, 0x1

    aput p1, v0, p0

    const/4 p0, 0x2

    aput v1, v0, p0

    const/4 p0, 0x3

    aput v1, v0, p0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getCellLayoutSize()[I
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/DummyAppWidgetView;->c:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/DummyAppWidgetView;->c:Lcom/zui/launcher/Workspace;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/CellLayout;

    invoke-direct {p0, v1}, Lcom/zui/launcher/DummyAppWidgetView;->a(Lcom/zui/launcher/CellLayout;)[I

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    :goto_0
    if-ge v2, v0, :cond_3

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/zui/launcher/DummyAppWidgetView;->c:Lcom/zui/launcher/Workspace;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/CellLayout;

    invoke-direct {p0, v1}, Lcom/zui/launcher/DummyAppWidgetView;->a(Lcom/zui/launcher/CellLayout;)[I

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v1
.end method


# virtual methods
.method public applyWidgetInfo(Lcom/zui/launcher/LauncherAppWidgetInfo;)V
    .locals 5

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zui/launcher/DummyAppWidgetView;->d:Lcom/zui/launcher/DummyProgressView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/DummyAppWidgetView;->c:Lcom/zui/launcher/Workspace;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->label:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->iconBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v0, Lcom/zui/launcher/icons/FastBitmapDrawable;

    iget-object p1, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, p1}, Lcom/zui/launcher/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/16 p1, 0xff

    invoke-virtual {v0, p1}, Lcom/zui/launcher/icons/FastBitmapDrawable;->setAlpha(I)V

    iget-object p1, p0, Lcom/zui/launcher/DummyAppWidgetView;->d:Lcom/zui/launcher/DummyProgressView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/zui/launcher/DummyAppWidgetView;->d:Lcom/zui/launcher/DummyProgressView;

    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/zui/launcher/DummyAppWidgetView;->d:Lcom/zui/launcher/DummyProgressView;

    const v3, 0x7f0801e9

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->subItemType:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/DummyAppWidgetView;->d:Lcom/zui/launcher/DummyProgressView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f12034f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/DummyAppWidgetView;->d:Lcom/zui/launcher/DummyProgressView;

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/zui/launcher/DummyAppWidgetView;->d:Lcom/zui/launcher/DummyProgressView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/zui/launcher/DeviceProfile;->iconDrawablePaddingPx:I

    iget-object v0, p0, Lcom/zui/launcher/DummyAppWidgetView;->d:Lcom/zui/launcher/DummyProgressView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object p1, p0, Lcom/zui/launcher/DummyAppWidgetView;->d:Lcom/zui/launcher/DummyProgressView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/LauncherAppWidgetInfo;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/DummyProgressView;->init(Lcom/zui/launcher/LauncherAppWidgetInfo;)V

    invoke-virtual {p0}, Lcom/zui/launcher/DummyAppWidgetView;->clearRecommendStatusForTheme()V

    invoke-virtual {p0, v2}, Lcom/zui/launcher/DummyAppWidgetView;->updateRecommendStatus(Z)V

    :cond_3
    return-void
.end method

.method public cancelLongPress()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->cancelLongPress()V

    iget-object p0, p0, Lcom/zui/launcher/DummyAppWidgetView;->a:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/CheckLongPressHelper;->cancelLongPress()V

    return-void
.end method

.method public clearRecommendStatusForTheme()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/DummyAppWidgetView;->d:Lcom/zui/launcher/DummyProgressView;

    invoke-virtual {p0}, Lcom/zui/launcher/DummyProgressView;->clearRecommendStatusForTheme()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getDescendantFocusability()I
    .locals 0

    const/high16 p0, 0x60000

    return p0
.end method

.method public getScaleToFit()F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/DummyAppWidgetView;->h:F

    return p0
.end method

.method public getTranslationForCentering()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/DummyAppWidgetView;->i:Landroid/graphics/PointF;

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a03d7

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/DummyProgressView;

    iput-object v0, p0, Lcom/zui/launcher/DummyAppWidgetView;->d:Lcom/zui/launcher/DummyProgressView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget v1, v0, Lcom/zui/launcher/DeviceProfile;->iconPaddingTop:I

    iput v1, p0, Lcom/zui/launcher/DummyAppWidgetView;->e:I

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    iput v0, p0, Lcom/zui/launcher/DummyAppWidgetView;->f:I

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/DummyAppWidgetView;->a:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/zui/launcher/CheckLongPressHelper;->hasPerformedLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/DummyAppWidgetView;->a:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/CheckLongPressHelper;->cancelLongPress()V

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/DummyAppWidgetView;->a:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/zui/launcher/CheckLongPressHelper;->cancelLongPress()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/ItemInfo;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ItemInfo;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/DummyAppWidgetView;->a:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/zui/launcher/CheckLongPressHelper;->postCheckForLongPress()V

    iget-object v0, p0, Lcom/zui/launcher/DummyAppWidgetView;->b:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/views/BaseDragLayer;->setTouchCompleteListener(Lcom/zui/launcher/views/BaseDragLayer$TouchCompleteListener;)V

    iget-object v0, p0, Lcom/zui/launcher/DummyAppWidgetView;->c:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Workspace;->setWidgetDown(Z)V

    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p0, p0, Lcom/zui/launcher/DummyAppWidgetView;->d:Lcom/zui/launcher/DummyProgressView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/DummyProgressView;->createDarkMask()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/LauncherAppWidgetInfo;

    iget-object v1, p0, Lcom/zui/launcher/DummyAppWidgetView;->d:Lcom/zui/launcher/DummyProgressView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/zui/launcher/DummyAppWidgetView;->c:Lcom/zui/launcher/Workspace;

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    iget p1, p0, Lcom/zui/launcher/DummyAppWidgetView;->e:I

    iget p2, p0, Lcom/zui/launcher/DummyAppWidgetView;->f:I

    invoke-direct {p0}, Lcom/zui/launcher/DummyAppWidgetView;->getCellLayoutSize()[I

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v5, v1, v4

    const/4 v6, 0x2

    aget v7, v1, v6

    const/4 v8, 0x3

    aget v1, v1, v8

    sub-int v8, v5, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0703dc

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    sub-int/2addr v8, v9

    sub-int p2, v3, p2

    div-int/2addr p2, v6

    iget v9, v0, Lcom/zui/launcher/ItemInfo;->spanX:I

    mul-int/2addr v3, v9

    sub-int/2addr v9, v4

    mul-int/2addr v7, v9

    add-int/2addr v3, v7

    mul-int/2addr p2, v6

    sub-int/2addr v3, p2

    iget p2, v0, Lcom/zui/launcher/ItemInfo;->spanY:I

    mul-int/2addr v5, p2

    sub-int/2addr p2, v4

    mul-int/2addr v1, p2

    add-int/2addr v5, v1

    sub-int/2addr v5, p1

    sub-int/2addr v5, v8

    iget-object p1, p0, Lcom/zui/launcher/DummyAppWidgetView;->d:Lcom/zui/launcher/DummyProgressView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    if-nez p1, :cond_1

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object p2, p0, Lcom/zui/launcher/DummyAppWidgetView;->d:Lcom/zui/launcher/DummyProgressView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object p2, v0, Lcom/zui/launcher/LauncherAppWidgetInfo;->iconBitmap:Landroid/graphics/Bitmap;

    if-nez p2, :cond_2

    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v5, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object p2, v0, Lcom/zui/launcher/LauncherAppWidgetInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_0
    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget v3, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/16 v3, 0x11

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v4

    iget v4, v4, Lcom/zui/launcher/DeviceProfile;->iconDrawablePaddingPx:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070611

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070613

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    mul-int/lit8 v9, v8, 0x2

    add-int v10, v7, v9

    iget-object v11, p0, Lcom/zui/launcher/DummyAppWidgetView;->d:Lcom/zui/launcher/DummyProgressView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getTextSize()F

    move-result v11

    float-to-int v11, v11

    add-int v12, v10, v4

    add-int/2addr v12, v11

    if-le v12, v5, :cond_3

    sub-int/2addr v5, v4

    sub-int/2addr v5, v11

    sub-int v7, v5, v9

    div-int/lit8 v4, v4, 0x4

    iget-object v5, p0, Lcom/zui/launcher/DummyAppWidgetView;->d:Lcom/zui/launcher/DummyProgressView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iput v2, p0, Lcom/zui/launcher/DummyAppWidgetView;->g:I

    goto :goto_1

    :cond_3
    sub-int/2addr v5, v10

    sub-int/2addr v5, v4

    sub-int/2addr v5, v11

    div-int/2addr v5, v6

    iput v5, p0, Lcom/zui/launcher/DummyAppWidgetView;->g:I

    :goto_1
    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfo;->isStartDownload()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v3, 0x31

    iget v0, p0, Lcom/zui/launcher/DummyAppWidgetView;->g:I

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    iget-object v4, p0, Lcom/zui/launcher/DummyAppWidgetView;->d:Lcom/zui/launcher/DummyProgressView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, p0, Lcom/zui/launcher/DummyAppWidgetView;->d:Lcom/zui/launcher/DummyProgressView;

    invoke-virtual {v3, v2, v0, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/zui/launcher/DummyAppWidgetView;->d:Lcom/zui/launcher/DummyProgressView;

    iget v2, p0, Lcom/zui/launcher/DummyAppWidgetView;->g:I

    invoke-virtual {v0, v2, v7, v8}, Lcom/zui/launcher/DummyProgressView;->setLayoutData(III)V

    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    move p1, p2

    move p2, v1

    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchComplete()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/DummyAppWidgetView;->a:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/CheckLongPressHelper;->cancelLongPress()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/DummyAppWidgetView;->a:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/zui/launcher/CheckLongPressHelper;->cancelLongPress()V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setScaleToFit(F)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/DummyAppWidgetView;->h:F

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/DummyAppWidgetView;->d:Lcom/zui/launcher/DummyProgressView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lcom/zui/launcher/util/SettingsValue;->isAutoChangeTextColor()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    iget-object p0, p0, Lcom/zui/launcher/DummyAppWidgetView;->d:Lcom/zui/launcher/DummyProgressView;

    if-ne p1, v0, :cond_0

    const/high16 p1, 0x40800000    # 4.0f

    const/4 v0, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x55000000

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/TextPaint;->clearShadowLayer()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTranslationForCentering(FF)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/DummyAppWidgetView;->i:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method public updateRecommendStatus(Z)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/DummyAppWidgetView;->d:Lcom/zui/launcher/DummyProgressView;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/DummyProgressView;->updateRecommendStatus(Z)V

    return-void
.end method
