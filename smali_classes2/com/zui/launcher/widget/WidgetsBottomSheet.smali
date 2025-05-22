.class public Lcom/zui/launcher/widget/WidgetsBottomSheet;
.super Lcom/zui/launcher/widget/BaseWidgetSheet;
.source ""

# interfaces
.implements Lcom/zui/launcher/Insettable;


# static fields
.field private static final h:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/zui/launcher/ItemInfo;

.field private final c:Landroid/graphics/Rect;

.field private final d:I

.field private e:I

.field private final f:Landroid/view/View$OnLayoutChangeListener;

.field private final g:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/widget/WidgetsBottomSheet$a;

    const-string v1, "paddingBottom"

    invoke-direct {v0, v1}, Lcom/zui/launcher/widget/WidgetsBottomSheet$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/widget/WidgetsBottomSheet;->h:Landroid/util/IntProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/widget/WidgetsBottomSheet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/widget/BaseWidgetSheet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x4

    iput p1, p0, Lcom/zui/launcher/widget/WidgetsBottomSheet;->e:I

    new-instance p1, Lcom/zui/launcher/widget/WidgetsBottomSheet$b;

    invoke-direct {p1, p0}, Lcom/zui/launcher/widget/WidgetsBottomSheet$b;-><init>(Lcom/zui/launcher/widget/WidgetsBottomSheet;)V

    iput-object p1, p0, Lcom/zui/launcher/widget/WidgetsBottomSheet;->f:Landroid/view/View$OnLayoutChangeListener;

    new-instance p1, Lcom/zui/launcher/widget/k;

    invoke-direct {p1, p0}, Lcom/zui/launcher/widget/k;-><init>(Lcom/zui/launcher/widget/WidgetsBottomSheet;)V

    iput-object p1, p0, Lcom/zui/launcher/widget/WidgetsBottomSheet;->g:Ljava/lang/Runnable;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/widget/WidgetsBottomSheet;->c:Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast p1, Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    iget-object p2, p1, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget p2, p2, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    mul-int/lit8 p2, p2, 0x2

    div-int/lit8 p2, p2, 0x3

    iget p1, p1, Lcom/zui/launcher/DeviceProfile;->cellHeightPx:I

    mul-int/2addr p2, p1

    iput p2, p0, Lcom/zui/launcher/widget/WidgetsBottomSheet;->d:I

    invoke-virtual {p0}, Lcom/zui/launcher/widget/BaseWidgetSheet;->hasSeenEducationTip()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/widget/WidgetsBottomSheet;->f:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method private animateOpen()V
    .locals 6

    iget-boolean v0, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    invoke-virtual {p0}, Lcom/zui/launcher/widget/BaseWidgetSheet;->setupNavBarColor()V

    iget-object v1, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    new-array v2, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v3, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->TRANSLATION_SHIFT:Landroid/util/Property;

    new-array v0, v0, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v0, v5

    invoke-static {v3, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    iget-object v0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/zui/launcher/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/zui/launcher/widget/WidgetsBottomSheet;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/WidgetsBottomSheet;->g:Ljava/lang/Runnable;

    return-object p0
.end method

.method private d(II)Z
    .locals 9
    .annotation build Landroidx/annotation/GuardedBy;
        value = "MainThread"
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/widget/WidgetsBottomSheet;->c:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    if-lez v2, :cond_0

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/zui/launcher/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v2

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_0
    move v6, v2

    iget-object v1, p0, Lcom/zui/launcher/widget/WidgetsBottomSheet;->c:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->edgeMarginPx:I

    add-int v8, v1, v0

    iget-object v4, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mContent:Landroid/view/View;

    move-object v3, p0

    move v5, p1

    move v7, p2

    invoke-virtual/range {v3 .. v8}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07088f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    const p2, 0x7f0a044e

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget-object v0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->cellWidthPx:I

    add-int/2addr v0, p1

    div-int/2addr p2, v0

    iget p1, p0, Lcom/zui/launcher/widget/WidgetsBottomSheet;->e:I

    if-eq p1, p2, :cond_1

    iput p2, p0, Lcom/zui/launcher/widget/WidgetsBottomSheet;->e:I

    invoke-virtual {p0}, Lcom/zui/launcher/widget/WidgetsBottomSheet;->onWidgetsBound()V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addHintCloseAnim(FLandroid/view/animation/Interpolator;Lcom/zui/launcher/anim/PendingAnimation;)V
    .locals 2

    sget-object v0, Lcom/zui/launcher/widget/WidgetsBottomSheet;->h:Landroid/util/IntProperty;

    iget-object v1, p0, Lcom/zui/launcher/widget/WidgetsBottomSheet;->c:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p3, p0, v0, p1, p2}, Lcom/zui/launcher/anim/PendingAnimation;->setInt(Ljava/lang/Object;Landroid/util/IntProperty;ILandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method protected addItemCell(Landroid/view/ViewGroup;)Lcom/zui/launcher/widget/WidgetCell;
    .locals 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0193

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/widget/WidgetCell;

    const v1, 0x7f0a0440

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v0, v2}, Lcom/zui/launcher/widget/WidgetCell;->setAnimatePreview(Z)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public createHintCloseAnim(F)Landroid/animation/Animator;
    .locals 3

    sget-object v0, Lcom/zui/launcher/widget/WidgetsBottomSheet;->h:Landroid/util/IntProperty;

    const/4 v1, 0x1

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/zui/launcher/widget/WidgetsBottomSheet;->c:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    add-float/2addr p1, v2

    float-to-int p1, p1

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public synthetic e()V
    .locals 2

    invoke-virtual {p0}, Lcom/zui/launcher/widget/BaseWidgetSheet;->hasSeenEducationTip()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetsBottomSheet;->f:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void

    :cond_0
    const v0, 0x7f0a044e

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/widget/BaseWidgetSheet;->showEducationTipOnViewIfPossible(Landroid/view/View;)Lcom/zui/launcher/views/ArrowTipView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetsBottomSheet;->f:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    return-void
.end method

.method public synthetic f(Landroid/widget/TableRow;Lcom/zui/launcher/model/WidgetItem;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/zui/launcher/widget/WidgetsBottomSheet;->addItemCell(Landroid/view/ViewGroup;)Lcom/zui/launcher/widget/WidgetCell;

    move-result-object p1

    iget v0, p2, Lcom/zui/launcher/model/WidgetItem;->spanX:I

    iget v1, p2, Lcom/zui/launcher/model/WidgetItem;->spanY:I

    invoke-virtual {p1, v0, v1}, Lcom/zui/launcher/widget/WidgetCell;->setPreviewSize(II)Landroid/util/Size;

    iget-object p0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mActivityContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getWidgetCache()Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/zui/launcher/widget/WidgetCell;->applyFromCellItem(Lcom/zui/launcher/model/WidgetItem;Lcom/zui/launcher/widget/WidgetPreviewLoader;)V

    invoke-virtual {p1}, Lcom/zui/launcher/widget/WidgetCell;->ensurePreview()V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public fillInLogContainerData(Landroid/view/View;Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)V
    .locals 0

    return-void
.end method

.method public synthetic g(Landroid/widget/TableLayout;Ljava/util/ArrayList;)V
    .locals 2

    new-instance v0, Landroid/widget/TableRow;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setGravity(I)V

    new-instance v1, Lcom/zui/launcher/widget/j;

    invoke-direct {v1, p0, v0}, Lcom/zui/launcher/widget/j;-><init>(Lcom/zui/launcher/widget/WidgetsBottomSheet;Landroid/widget/TableRow;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p1, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected getAccessibilityTarget()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const v0, 0x7f0a03d7

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean p0, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    if-eqz p0, :cond_0

    const p0, 0x7f12074c

    goto :goto_0

    :cond_0
    const p0, 0x7f12074d

    :goto_0
    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method protected handleClose(Z)V
    .locals 2

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->handleClose(ZJ)V

    return-void
.end method

.method public isOfType(I)Z
    .locals 0

    and-int/lit8 p0, p1, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public logActionCommand(I)V
    .locals 0

    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mNoIntercept:Z

    const v0, 0x7f0a044f

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->getPopupContainer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/zui/launcher/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mNoIntercept:Z

    :cond_0
    invoke-super {p0, p1}, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0444

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mContent:Landroid/view/View;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget-object p1, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p4, p1

    iget-object p2, p0, Lcom/zui/launcher/widget/WidgetsBottomSheet;->c:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, p3

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p4, p3

    iget-object p2, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mContent:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    sub-int p3, p5, p3

    add-int/2addr p1, p4

    invoke-virtual {p2, p4, p3, p1, p5}, Landroid/view/View;->layout(IIII)V

    iget p1, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mTranslationShift:F

    invoke-virtual {p0, p1}, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->setTranslationShift(F)V

    const p1, 0x7f0a044f

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result p2

    iget p3, p0, Lcom/zui/launcher/widget/WidgetsBottomSheet;->d:I

    if-le p2, p3, :cond_0

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p3, p0, Lcom/zui/launcher/widget/WidgetsBottomSheet;->d:I

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x7f0a0102

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/widget/WidgetsBottomSheet;->d(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/widget/WidgetsBottomSheet;->d(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "WidgetsBottomSheet"

    const-string p1, "WidgetsBottomSheet dimension has been updated after a 2nd measurement."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onWidgetsBound()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getPopupDataProvider()Lcom/zui/launcher/popup/PopupDataProvider;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/util/PackageUserKey;

    iget-object v2, p0, Lcom/zui/launcher/widget/WidgetsBottomSheet;->b:Lcom/zui/launcher/ItemInfo;

    invoke-virtual {v2}, Lcom/zui/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/launcher/widget/WidgetsBottomSheet;->b:Lcom/zui/launcher/ItemInfo;

    iget-object v3, v3, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v1, v2, v3}, Lcom/zui/launcher/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/popup/PopupDataProvider;->getWidgetsForPackageUser(Lcom/zui/launcher/util/PackageUserKey;)Ljava/util/List;

    move-result-object v0

    const v1, 0x7f0a044e

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->removeAllViews()V

    iget v2, p0, Lcom/zui/launcher/widget/WidgetsBottomSheet;->e:I

    invoke-static {v0, v2}, Lcom/zui/launcher/widget/util/WidgetsTableUtils;->groupWidgetItemsIntoTable(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/zui/launcher/widget/i;

    invoke-direct {v2, p0, v1}, Lcom/zui/launcher/widget/i;-><init>(Lcom/zui/launcher/widget/WidgetsBottomSheet;Landroid/widget/TableLayout;)V

    invoke-interface {v0, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public populateAndShow(Lcom/zui/launcher/ItemInfo;)V
    .locals 1

    iput-object p1, p0, Lcom/zui/launcher/widget/WidgetsBottomSheet;->b:Lcom/zui/launcher/ItemInfo;

    const p1, 0x7f0a03d7

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetsBottomSheet;->b:Lcom/zui/launcher/ItemInfo;

    iget-object v0, v0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/zui/launcher/widget/WidgetsBottomSheet;->onWidgetsBound()V

    invoke-virtual {p0}, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->attachToContainer()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    invoke-direct {p0}, Lcom/zui/launcher/widget/WidgetsBottomSheet;->animateOpen()V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetsBottomSheet;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    iget-object v2, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/widget/BaseWidgetSheet;->setupNavBarColor()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/widget/BaseWidgetSheet;->clearNavBarColor()V

    :goto_0
    return-void
.end method
