.class public abstract Lcom/zui/launcher/PagedView;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/PagedView$ComputePageScrollsLogic;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ":",
        "Lcom/zui/launcher/pageindicators/PageIndicator;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# static fields
.field public static final ACTION_MOVE_ALLOW_EASY_FLING:I = 0xfe

.field public static final DEBUG_FAILED_QUICKSWITCH:Z = false

.field protected static final INVALID_PAGE:I = -0x1

.field protected static final INVALID_POINTER:I = -0x1

.field public static final INVALID_RESTORE_PAGE:I = -0x3e9

.field public static final OVERSCROLL_PAGE_SNAP_ANIMATION_DURATION:I = 0x10e

.field public static final PAGE_SNAP_ANIMATION_DURATION:I = 0x2ee

.field protected static final SIMPLE_SCROLL_LOGIC:Lcom/zui/launcher/PagedView$ComputePageScrollsLogic;


# instance fields
.field private a:Z

.field private b:Landroid/view/VelocityTracker;

.field private c:F

.field private d:F

.field private e:Z

.field private f:I

.field private g:Ljava/lang/Runnable;

.field h:I

.field private i:[I

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field protected mActivePointerId:I

.field protected mAllowOverScroll:Z

.field protected mCanTap:Z

.field protected mCurrentPage:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field protected mEasyFlingThresholdVelocity:I

.field protected mEdgeGlowLeft:Lcom/zui/launcher/util/EdgeEffectCompat;

.field protected mEdgeGlowRight:Lcom/zui/launcher/util/EdgeEffectCompat;

.field protected mFirstLayout:Z

.field protected mFlingThresholdVelocity:I

.field protected final mInsets:Landroid/graphics/Rect;

.field protected mIsLayoutValid:Z

.field protected mIsPageInTransition:Z

.field protected mIsRtl:Z

.field protected mMaxScroll:I

.field protected mMinFlingVelocity:I

.field protected mMinScroll:I

.field protected mMinSnapVelocity:I

.field protected mNextPage:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field protected mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

.field protected mPageIndicator:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mPageScrolls:[I

.field protected mPageSlop:I

.field protected mPageSpacing:I

.field protected mScroller:Landroid/widget/OverScroller;

.field protected mSpringOverScroll:F

.field protected mTouchSlop:I

.field protected mUnboundedScroll:I

.field protected mWasInOverscroll:Z

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/zui/launcher/b2;->a:Lcom/zui/launcher/b2;

    sput-object v0, Lcom/zui/launcher/PagedView;->SIMPLE_SCROLL_LOGIC:Lcom/zui/launcher/PagedView$ComputePageScrollsLogic;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/PagedView;->a:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zui/launcher/PagedView;->mFirstLayout:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/zui/launcher/PagedView;->mNextPage:I

    iput v0, p0, Lcom/zui/launcher/PagedView;->mPageSpacing:I

    sget-object v3, Lcom/zui/launcher/touch/PagedOrientationHandler;->PORTRAIT:Lcom/zui/launcher/touch/PagedOrientationHandler;

    iput-object v3, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    iput-boolean v1, p0, Lcom/zui/launcher/PagedView;->mAllowOverScroll:Z

    iput v2, p0, Lcom/zui/launcher/PagedView;->mActivePointerId:I

    iput-boolean v0, p0, Lcom/zui/launcher/PagedView;->mIsPageInTransition:Z

    iput-boolean v0, p0, Lcom/zui/launcher/PagedView;->mWasInOverscroll:Z

    iput-boolean v1, p0, Lcom/zui/launcher/PagedView;->mCanTap:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/zui/launcher/PagedView;->mInsets:Landroid/graphics/Rect;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/zui/launcher/PagedView;->i:[I

    sget-object v1, Lcom/zui/launcher/R$styleable;->PagedView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/PagedView;->h:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setHapticFeedbackEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->init()V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lcom/zui/launcher/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->pageEndTransition()V

    :cond_0
    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->b:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/PagedView;->b:Landroid/view/VelocityTracker;

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/PagedView;->b:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mPageIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/zui/launcher/pageindicators/PageIndicator;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/zui/launcher/pageindicators/PageIndicator;->setMarkersCount(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private d(F)F
    .locals 2

    const/high16 p0, 0x3f000000    # 0.5f

    sub-float/2addr p1, p0

    float-to-double p0, p1

    const-wide v0, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr p0, v0

    double-to-float p0, p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private e(I)I
    .locals 4

    iget-boolean v0, p0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedView;->getScrollForPage(I)I

    move-result v1

    :goto_1
    iget v2, p0, Lcom/zui/launcher/PagedView;->mMinScroll:I

    const-string v3, "PagedView"

    if-ge v1, v2, :cond_2

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedView;->getScrollForPage(I)I

    move-result v2

    if-gt v2, v1, :cond_1

    const-string v1, "validateNewPage: failed to find a page > mMinScrollX"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_2
    iget v2, p0, Lcom/zui/launcher/PagedView;->mMaxScroll:I

    if-le v1, v2, :cond_4

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedView;->getScrollForPage(I)I

    move-result v2

    if-lt v2, v1, :cond_3

    const-string p0, "validateNewPage: failed to find a page < mMaxScrollX"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_3
    :goto_3
    move v1, v2

    goto :goto_2

    :cond_4
    :goto_4
    return p1
.end method

.method private f(Z)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lcom/zui/launcher/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->pageEndTransition()V

    :cond_0
    return-void
.end method

.method private g(II)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedView;->getChildVisibleSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedView;->getChildOffset(I)I

    move-result p0

    add-int/2addr p0, v0

    sub-int/2addr p0, p2

    return p0
.end method

.method private h(I)I
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPanelCount()I

    move-result p0

    div-int/2addr p1, p0

    mul-int/2addr p1, p0

    return p1
.end method

.method private i(I)I
    .locals 5

    invoke-direct {p0, p1}, Lcom/zui/launcher/PagedView;->k(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const v1, 0x7fffffff

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-direct {p0, v3, p1}, Lcom/zui/launcher/PagedView;->g(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v1, :cond_0

    move v2, v3

    move v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private j(I)I
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPanelCount()I

    move-result p0

    div-int/2addr p1, p0

    return p1
.end method

.method private k(I)I
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getPrimaryScale(Landroid/view/View;)F

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPivotX()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPivotY()F

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getPrimaryValue(FF)F

    move-result v1

    iget-object v2, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {v2, p0}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result p0

    int-to-float p1, p1

    int-to-float p0, p0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p0, v2

    sub-float/2addr p0, v1

    div-float/2addr p0, v0

    add-float/2addr p1, p0

    add-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method static synthetic l(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private m(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/zui/launcher/PagedView;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {v1, p1, v0}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getPrimaryDirection(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/zui/launcher/PagedView;->j:F

    iput v1, p0, Lcom/zui/launcher/PagedView;->k:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/zui/launcher/PagedView;->l:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/PagedView;->mActivePointerId:I

    iget-object p0, p0, Lcom/zui/launcher/PagedView;->b:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private n()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->b:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/PagedView;->b:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private o()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Lcom/zui/launcher/compat/AccessibilityManagerCompat;->isObservedEventType(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v2

    if-eq v0, v2, :cond_0

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    iget-object v1, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    iget v2, p0, Lcom/zui/launcher/PagedView;->mMaxScroll:I

    invoke-interface {v1, v0, v2}, Lcom/zui/launcher/touch/PagedOrientationHandler;->setMaxScroll(Landroid/view/accessibility/AccessibilityEvent;I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method private p(Landroid/view/MotionEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/zui/launcher/PagedView;->mPageSlop:I

    div-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lcom/zui/launcher/PagedView;->e:Z

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/zui/launcher/PagedView;->a:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/PagedView;->setCurrentPage(I)V

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->pageEndTransition()V

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mEdgeGlowLeft:Lcom/zui/launcher/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mEdgeGlowRight:Lcom/zui/launcher/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    iput-boolean v2, p0, Lcom/zui/launcher/PagedView;->e:Z

    goto :goto_2

    :cond_5
    iput-boolean v3, p0, Lcom/zui/launcher/PagedView;->e:Z

    :goto_2
    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getSecondaryValue(FF)F

    move-result p1

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getSecondaryValue(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mEdgeGlowLeft:Lcom/zui/launcher/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mEdgeGlowLeft:Lcom/zui/launcher/util/EdgeEffectCompat;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/util/EdgeEffectCompat;->onPullDistance(FF)F

    :cond_6
    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mEdgeGlowRight:Lcom/zui/launcher/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object p0, p0, Lcom/zui/launcher/PagedView;->mEdgeGlowRight:Lcom/zui/launcher/util/EdgeEffectCompat;

    invoke-virtual {p0, v1, p1}, Lcom/zui/launcher/util/EdgeEffectCompat;->onPullDistance(FF)F

    :cond_7
    return-void
.end method

.method private q()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mPageIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/zui/launcher/pageindicators/PageIndicator;

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/zui/launcher/pageindicators/PageIndicator;->setActiveMarker(I)V

    :cond_0
    return-void
.end method

.method private r(I)I
    .locals 3

    invoke-direct {p0, p1}, Lcom/zui/launcher/PagedView;->e(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0}, Lcom/zui/launcher/Utilities;->boundToRange(III)I

    move-result p1

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPanelCount()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/zui/launcher/PagedView;->h(I)I

    move-result p1

    :cond_0
    return p1
.end method

.method private resetTouchState()V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/PagedView;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/PagedView;->e:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/launcher/PagedView;->mActivePointerId:I

    return-void
.end method


# virtual methods
.method public abortScrollerAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mEdgeGlowLeft:Lcom/zui/launcher/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mEdgeGlowRight:Lcom/zui/launcher/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zui/launcher/PagedView;->a(Z)V

    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1
    const/16 v1, 0x11

    if-ne p2, v1, :cond_2

    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/zui/launcher/PagedView;->r(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_1

    :cond_2
    const/16 v1, 0x42

    if-ne p2, v1, :cond_3

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public animateChildToPosition(Landroid/view/View;IIILjava/lang/Runnable;IIZ)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected announcePageForAccessibility()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/compat/AccessibilityManagerCompat;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected canAnnouncePageDescription()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public canOverScroll()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected canScroll(FF)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/views/ActivityContext;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/zui/launcher/AbstractFloatingView;->getTopOpenView(Lcom/zui/launcher/views/ActivityContext;)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected cancelCurrentPageLongPress()V
    .locals 1

    sget-object v0, Lcom/zui/launcher/i3;->a:Lcom/zui/launcher/i3;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/PagedView;->forEachVisiblePage(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected computeMaxScroll()I
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget-boolean v2, p0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/zui/launcher/PagedView;->getScrollForPage(I)I

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method protected computeMinScroll()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public computeScroll()V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->computeScrollHelper()Z

    return-void
.end method

.method protected computeScrollHelper()Z
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    sget-object v3, Lcom/zui/launcher/touch/PagedOrientationHandler;->VIEW_SCROLL_TO:Lcom/zui/launcher/touch/PagedOrientationHandler$Int2DAction;

    iget-object v4, p0, Lcom/zui/launcher/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v4

    invoke-interface {v2, p0, v3, v4}, Lcom/zui/launcher/touch/PagedOrientationHandler;->set(Ljava/lang/Object;Lcom/zui/launcher/touch/PagedOrientationHandler$Int2DAction;I)V

    :cond_0
    iget-boolean v2, p0, Lcom/zui/launcher/PagedView;->mAllowOverScroll:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/zui/launcher/PagedView;->mMinScroll:I

    if-ge v1, v2, :cond_1

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mEdgeGlowLeft:Lcom/zui/launcher/util/EdgeEffectCompat;

    :goto_0
    iget-object v2, p0, Lcom/zui/launcher/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/zui/launcher/PagedView;->mMaxScroll:I

    if-le v1, v2, :cond_2

    if-gt v0, v2, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mEdgeGlowRight:Lcom/zui/launcher/util/EdgeEffectCompat;

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    iget-object v2, p0, Lcom/zui/launcher/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v2

    iget-object v3, p0, Lcom/zui/launcher/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v0

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mEdgeGlowLeft:Lcom/zui/launcher/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mEdgeGlowRight:Lcom/zui/launcher/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    const/4 p0, 0x1

    return p0

    :cond_4
    iget v0, p0, Lcom/zui/launcher/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    invoke-direct {p0}, Lcom/zui/launcher/PagedView;->o()V

    iget v0, p0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    iget v2, p0, Lcom/zui/launcher/PagedView;->mNextPage:I

    invoke-direct {p0, v2}, Lcom/zui/launcher/PagedView;->r(I)I

    move-result v2

    iput v2, p0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    iput v1, p0, Lcom/zui/launcher/PagedView;->mNextPage:I

    invoke-virtual {p0, v0}, Lcom/zui/launcher/PagedView;->notifyPageSwitchListener(I)V

    iget-boolean v0, p0, Lcom/zui/launcher/PagedView;->e:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->pageEndTransition()V

    :cond_5
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->canAnnouncePageDescription()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->announcePageForAccessibility()V

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)V
    .locals 3

    iget v0, p0, Lcom/zui/launcher/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {v1, p1, v0}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getPrimaryDirection(Landroid/view/MotionEvent;I)F

    move-result v0

    iget v1, p0, Lcom/zui/launcher/PagedView;->k:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/zui/launcher/PagedView;->mTouchSlop:I

    int-to-float v2, v2

    mul-float/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    const/4 v2, 0x1

    if-gt v1, p2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 p2, 0xfe

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v2

    :goto_1
    if-eqz p1, :cond_3

    iput-boolean v2, p0, Lcom/zui/launcher/PagedView;->e:Z

    iget p1, p0, Lcom/zui/launcher/PagedView;->m:F

    iget p2, p0, Lcom/zui/launcher/PagedView;->k:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/zui/launcher/PagedView;->m:F

    iput v0, p0, Lcom/zui/launcher/PagedView;->k:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/PagedView;->l:F

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->pageBeginTransition()V

    invoke-virtual {p0, v2}, Lcom/zui/launcher/PagedView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_3
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-boolean p1, p0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    const/16 v1, 0x42

    const/16 v2, 0x11

    if-eqz p1, :cond_2

    if-ne p2, v2, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_2

    move p2, v2

    :cond_2
    :goto_0
    if-ne p2, v2, :cond_3

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result p1

    sub-int/2addr p1, v0

    :goto_1
    invoke-direct {p0, p1}, Lcom/zui/launcher/PagedView;->r(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedView;->snapToPage(I)Z

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->requestFocus(I)Z

    return v0

    :cond_3
    if-ne p2, v1, :cond_4

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result p1

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-ge p1, v1, :cond_4

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result p1

    add-int/2addr p1, v0

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedView;->drawEdgeEffect(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->pageEndTransition()V

    return-void
.end method

.method protected drawEdgeEffect(Landroid/graphics/Canvas;)V
    .locals 6

    iget-boolean v0, p0, Lcom/zui/launcher/PagedView;->mAllowOverScroll:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mEdgeGlowRight:Lcom/zui/launcher/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mEdgeGlowLeft:Lcom/zui/launcher/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/zui/launcher/PagedView;->mEdgeGlowLeft:Lcom/zui/launcher/util/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v3, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/zui/launcher/PagedView;->mMinScroll:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lcom/zui/launcher/PagedView;->mEdgeGlowLeft:Lcom/zui/launcher/util/EdgeEffectCompat;

    invoke-virtual {v3, v1, v0}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v3, p0, Lcom/zui/launcher/PagedView;->mEdgeGlowLeft:Lcom/zui/launcher/util/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    :cond_1
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    iget-object v2, p0, Lcom/zui/launcher/PagedView;->mEdgeGlowRight:Lcom/zui/launcher/util/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    const/high16 v3, 0x42b40000    # 90.0f

    int-to-float v4, v0

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v3, p0, Lcom/zui/launcher/PagedView;->mMaxScroll:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lcom/zui/launcher/PagedView;->mEdgeGlowRight:Lcom/zui/launcher/util/EdgeEffectCompat;

    invoke-virtual {v3, v1, v0}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mEdgeGlowRight:Lcom/zui/launcher/util/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    :cond_3
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    return-void
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/zui/launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    move-object v1, p1

    :goto_0
    if-ne v1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    return-void

    :cond_0
    if-ne v1, p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public forEachVisiblePage(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPanelCount()I

    move-result v0

    iget v1, p0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    :goto_0
    iget v2, p0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/zui/launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public forceLayout()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/PagedView;->mIsLayoutValid:Z

    invoke-super {p0}, Landroid/view/ViewGroup;->forceLayout()V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    const-class p0, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getChildGap()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getChildOffset(I)I
    .locals 1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {p0, p1}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getChildStart(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected getChildVisibleSize(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {p0, p1}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public getCurrentPage()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    return p0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    const p0, 0x7f120305

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDestinationPage()I
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/PagedView;->getDestinationPage(I)I

    move-result p0

    return p0
.end method

.method protected getDestinationPage(I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/PagedView;->i(I)I

    move-result p0

    return p0
.end method

.method protected getDisplacementFromScreenCenter(I)I
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/PagedView;->k(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/PagedView;->g(II)I

    move-result p0

    return p0
.end method

.method protected getDownMotionX()F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/PagedView;->c:F

    return p0
.end method

.method protected getDownMotionY()F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/PagedView;->d:F

    return p0
.end method

.method public getExpectedHeight()I
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method public getExpectedWidth()I
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p0

    return p0
.end method

.method public getLayoutTransitionOffsetForPage(I)I
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mPageScrolls:[I

    if-eqz v0, :cond_2

    array-length v0, v0

    if-ge p1, v0, :cond_2

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/PagedView;->mPageScrolls:[I

    aget p0, p0, p1

    add-int/2addr p0, v1

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result p1

    int-to-float p0, p0

    sub-float/2addr p1, p0

    float-to-int p0, p1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public getNextPage()I
    .locals 2

    iget v0, p0, Lcom/zui/launcher/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    :goto_0
    return v0
.end method

.method public getNoOrderScreens()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNormalChildHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getExpectedHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/zui/launcher/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public getNormalChildWidth()I
    .locals 2

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getExpectedWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/zui/launcher/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget p0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public getPageAt(I)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getPageCount()I
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getPageIndexForScreenId(I)I
    .locals 0

    return p1
.end method

.method public getPageIndicator()Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/PagedView;->mPageIndicator:Landroid/view/View;

    return-object p0
.end method

.method public getPageNearestToCenterOfScreen()I
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/PagedView;->i(I)I

    move-result p0

    return p0
.end method

.method protected getPageScrolls([IZLcom/zui/launcher/PagedView$ComputePageScrollsLogic;)Z
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iget-boolean v2, v0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-boolean v4, v0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    const/4 v5, -0x1

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    iget-boolean v6, v0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    move v5, v7

    :goto_2
    iget-object v6, v0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    iget-object v8, v0, Lcom/zui/launcher/PagedView;->mInsets:Landroid/graphics/Rect;

    invoke-interface {v6, v0, v8}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getCenterForPage(Landroid/view/View;Landroid/graphics/Rect;)I

    move-result v6

    iget-object v8, v0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    iget-object v9, v0, Lcom/zui/launcher/PagedView;->mInsets:Landroid/graphics/Rect;

    invoke-interface {v8, v0, v9}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getScrollOffsetStart(Landroid/view/View;Landroid/graphics/Rect;)I

    move-result v8

    iget-object v9, v0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    iget-object v10, v0, Lcom/zui/launcher/PagedView;->mInsets:Landroid/graphics/Rect;

    invoke-interface {v9, v0, v10}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getScrollOffsetEnd(Landroid/view/View;Landroid/graphics/Rect;)I

    move-result v9

    move v10, v8

    const/4 v11, 0x0

    :goto_3
    if-eq v2, v4, :cond_6

    invoke-virtual {v0, v2}, Lcom/zui/launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v12

    move-object/from16 v13, p3

    invoke-interface {v13, v12}, Lcom/zui/launcher/PagedView$ComputePageScrollsLogic;->shouldIncludeView(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_5

    iget-object v14, v0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    move/from16 v15, p2

    invoke-interface {v14, v12, v10, v6, v15}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getChildBounds(Landroid/view/View;IIZ)Lcom/zui/launcher/touch/PagedOrientationHandler$ChildBounds;

    move-result-object v12

    iget v14, v12, Lcom/zui/launcher/touch/PagedOrientationHandler$ChildBounds;->primaryDimension:I

    iget v12, v12, Lcom/zui/launcher/touch/PagedOrientationHandler$ChildBounds;->childPrimaryEnd:I

    iget-boolean v3, v0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    if-eqz v3, :cond_3

    sub-int/2addr v12, v9

    goto :goto_4

    :cond_3
    sub-int v12, v10, v8

    :goto_4
    aget v3, p1, v2

    if-eq v3, v12, :cond_4

    aput v12, p1, v2

    move v11, v7

    :cond_4
    iget v3, v0, Lcom/zui/launcher/PagedView;->mPageSpacing:I

    add-int/2addr v14, v3

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/PagedView;->getChildGap()I

    move-result v3

    add-int/2addr v14, v3

    add-int/2addr v10, v14

    goto :goto_5

    :cond_5
    move/from16 v15, p2

    :goto_5
    add-int/2addr v2, v5

    goto :goto_3

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/PagedView;->getPanelCount()I

    move-result v2

    if-le v2, v7, :cond_8

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v1, :cond_8

    invoke-direct {v0, v3}, Lcom/zui/launcher/PagedView;->h(I)I

    move-result v2

    aget v2, p1, v2

    aget v4, p1, v3

    if-eq v4, v2, :cond_7

    aput v2, p1, v3

    move v11, v7

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_8
    return v11
.end method

.method public getPageSpacing()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/PagedView;->mPageSpacing:I

    return p0
.end method

.method protected getPanelCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getScreenIdForPageIndex(I)I
    .locals 0

    return p1
.end method

.method public getScrollForPage(I)I
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/PagedView;->mPageScrolls:[I

    if-eqz p0, :cond_1

    array-length v0, p0

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    aget p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected getScrollProgress(ILandroid/view/View;I)F
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p3}, Lcom/zui/launcher/PagedView;->getScrollForPage(I)I

    move-result v1

    add-int/2addr v1, v0

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v1, p3, 0x1

    if-gez p1, :cond_0

    iget-boolean v2, p0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_1

    :cond_0
    if-lez p1, :cond_2

    iget-boolean v2, p0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_2

    :cond_1
    add-int/lit8 v1, p3, -0x1

    :cond_2
    if-ltz v1, :cond_4

    add-int/lit8 v0, v0, -0x1

    if-le v1, v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lcom/zui/launcher/PagedView;->getScrollForPage(I)I

    move-result p2

    invoke-virtual {p0, p3}, Lcom/zui/launcher/PagedView;->getScrollForPage(I)I

    move-result p0

    sub-int/2addr p2, p0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget p0, p0, Lcom/zui/launcher/PagedView;->mPageSpacing:I

    add-int/2addr p0, p2

    :goto_1
    int-to-float p1, p1

    int-to-float p0, p0

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p0, p2

    div-float/2addr p1, p0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/high16 p1, -0x40800000    # -1.0f

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method protected getUnboundedScroll()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/PagedView;->mUnboundedScroll:I

    return p0
.end method

.method public getVisibleChildrenRange()[I
    .locals 11

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    cmpl-float v3, v2, v1

    if-lez v3, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v1, v3, v1

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    sub-float/2addr v0, v3

    div-float/2addr v0, v2

    add-float/2addr v0, v3

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    move v5, v3

    move v6, v4

    move v7, v6

    :goto_0
    if-ge v5, v2, :cond_3

    invoke-virtual {p0, v5}, Lcom/zui/launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8}, Landroid/view/View;->getTranslationX()F

    move-result v10

    add-float/2addr v9, v10

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    cmpg-float v10, v9, v0

    if-gtz v10, :cond_2

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v9, v8

    cmpl-float v8, v9, v1

    if-ltz v8, :cond_2

    if-ne v6, v4, :cond_1

    move v6, v5

    :cond_1
    move v7, v5

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/zui/launcher/PagedView;->i:[I

    aput v6, p0, v3

    const/4 v0, 0x1

    aput v7, p0, v0

    return-object p0
.end method

.method protected indexToPage(I)I
    .locals 0

    return p1
.end method

.method protected init()V
    .locals 3

    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/zui/launcher/anim/Interpolators;->SCROLL:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/zui/launcher/PagedView;->mScroller:Landroid/widget/OverScroller;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/zui/launcher/PagedView;->mTouchSlop:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/zui/launcher/PagedView;->mPageSlop:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/zui/launcher/PagedView;->f:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x43fa0000    # 500.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/zui/launcher/PagedView;->mFlingThresholdVelocity:I

    const/high16 v2, 0x43c80000    # 400.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/zui/launcher/PagedView;->mEasyFlingThresholdVelocity:I

    const/high16 v2, 0x437a0000    # 250.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/zui/launcher/PagedView;->mMinFlingVelocity:I

    const v2, 0x44bb8000    # 1500.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/zui/launcher/PagedView;->mMinSnapVelocity:I

    sget-boolean v1, Lcom/zui/launcher/Utilities;->ATLEAST_OREO:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDefaultFocusHighlightEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->initEdgeEffect()V

    return-void
.end method

.method protected initEdgeEffect()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/util/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/launcher/PagedView;->mEdgeGlowLeft:Lcom/zui/launcher/util/EdgeEffectCompat;

    new-instance v0, Lcom/zui/launcher/util/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/launcher/PagedView;->mEdgeGlowRight:Lcom/zui/launcher/util/EdgeEffectCompat;

    return-void
.end method

.method public initParentViews(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/zui/launcher/PagedView;->h:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/PagedView;->mPageIndicator:Landroid/view/View;

    check-cast p1, Lcom/zui/launcher/pageindicators/PageIndicator;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/zui/launcher/pageindicators/PageIndicator;->setMarkersCount(I)V

    :cond_0
    return-void
.end method

.method public isHandlingTouch()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/PagedView;->e:Z

    return p0
.end method

.method public isPageInTransition()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/PagedView;->mIsPageInTransition:Z

    return p0
.end method

.method protected isPageOrderFlipped()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isVisible(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/PagedView;->h(I)I

    move-result p1

    iget p0, p0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected notifyPageSwitchListener(I)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/PagedView;->q()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    move v2, v0

    move v0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/zui/launcher/PagedView;->canScroll(FF)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    return v5

    :cond_2
    cmpl-float v4, v2, v3

    if-nez v4, :cond_3

    cmpl-float v6, v0, v3

    if-eqz v6, :cond_8

    :cond_3
    iget-boolean p1, p0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    if-eqz p1, :cond_4

    cmpg-float p1, v2, v3

    if-ltz p1, :cond_5

    cmpg-float p1, v0, v3

    if-gez p1, :cond_6

    goto :goto_1

    :cond_4
    if-gtz v4, :cond_5

    cmpl-float p1, v0, v3

    if-lez p1, :cond_6

    :cond_5
    :goto_1
    move v5, v1

    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->scrollRight()Z

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->scrollLeft()Z

    :goto_2
    return v1

    :cond_8
    :goto_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-boolean v0, p0, Lcom/zui/launcher/PagedView;->mAllowOverScroll:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result p0

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->isPageOrderFlipped()Z

    move-result v0

    iget-boolean v1, p0, Lcom/zui/launcher/PagedView;->mAllowOverScroll:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v3

    const/4 v4, 0x0

    if-le v3, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_3

    if-eqz v0, :cond_1

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_1

    :cond_1
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    iget-boolean v2, p0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_2

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_2

    :cond_2
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_3
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v2

    if-lt v2, v1, :cond_6

    if-eqz v0, :cond_4

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_3

    :cond_4
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    iget-boolean p0, p0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    if-eqz p0, :cond_5

    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_4

    :cond_5
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    :goto_4
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_6
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/launcher/PagedView;->b(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-boolean v4, p0, Lcom/zui/launcher/PagedView;->e:Z

    if-eqz v4, :cond_1

    return v2

    :cond_1
    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    if-eq v0, v3, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/zui/launcher/PagedView;->m(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lcom/zui/launcher/PagedView;->n()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/zui/launcher/PagedView;->mActivePointerId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/zui/launcher/PagedView;->resetTouchState()V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v0, p0, Lcom/zui/launcher/PagedView;->c:F

    iput v2, p0, Lcom/zui/launcher/PagedView;->d:F

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {v0, p1, v1}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getPrimaryDirection(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/zui/launcher/PagedView;->k:F

    iput v0, p0, Lcom/zui/launcher/PagedView;->j:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/PagedView;->l:F

    iput v0, p0, Lcom/zui/launcher/PagedView;->m:F

    iput-boolean v1, p0, Lcom/zui/launcher/PagedView;->n:Z

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/PagedView;->mActivePointerId:I

    invoke-direct {p0, p1}, Lcom/zui/launcher/PagedView;->p(Landroid/view/MotionEvent;)V

    :cond_6
    :goto_0
    iget-boolean p0, p0, Lcom/zui/launcher/PagedView;->e:Z

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/PagedView;->mIsLayoutValid:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    iget-object p3, p0, Lcom/zui/launcher/PagedView;->mPageScrolls:[I

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    array-length p3, p3

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, p4

    goto :goto_1

    :cond_1
    :goto_0
    new-array p3, p2, [I

    iput-object p3, p0, Lcom/zui/launcher/PagedView;->mPageScrolls:[I

    move p3, p1

    :goto_1
    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-object p5, p0, Lcom/zui/launcher/PagedView;->mPageScrolls:[I

    sget-object v0, Lcom/zui/launcher/PagedView;->SIMPLE_SCROLL_LOGIC:Lcom/zui/launcher/PagedView$ComputePageScrollsLogic;

    invoke-virtual {p0, p5, p1, v0}, Lcom/zui/launcher/PagedView;->getPageScrolls([IZLcom/zui/launcher/PagedView$ComputePageScrollsLogic;)Z

    move-result p5

    if-eqz p5, :cond_3

    goto :goto_2

    :cond_3
    move p1, p3

    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result p5

    if-eqz p5, :cond_4

    new-instance p5, Lcom/zui/launcher/PagedView$a;

    invoke-direct {p5, p0}, Lcom/zui/launcher/PagedView$a;-><init>(Lcom/zui/launcher/PagedView;)V

    invoke-virtual {p3, p5}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->updateMinAndMaxScrollX()V

    :goto_3
    iget-boolean p3, p0, Lcom/zui/launcher/PagedView;->mFirstLayout:Z

    if-eqz p3, :cond_5

    iget p3, p0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    if-ltz p3, :cond_5

    if-ge p3, p2, :cond_5

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->updateCurrentPageScroll()V

    iput-boolean p4, p0, Lcom/zui/launcher/PagedView;->mFirstLayout:Z

    :cond_5
    iget-object p2, p0, Lcom/zui/launcher/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p2

    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedView;->setCurrentPage(I)V

    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    if-eqz v0, :cond_4

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-lez v1, :cond_3

    if-gtz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/zui/launcher/PagedView;->j(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    invoke-static {v2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->measureChildren(II)V

    invoke-virtual {p0, v1, v3}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void

    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void

    :cond_4
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void
.end method

.method protected onNotSnappingToPageInFreeScroll()V
    .locals 0

    return-void
.end method

.method protected onPageBeginTransition()V
    .locals 0

    return-void
.end method

.method protected onPageEndTransition()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/compat/AccessibilityManagerCompat;->sendScrollFinishedEventToTest(Landroid/content/Context;)V

    iget v0, p0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/zui/launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/zui/launcher/compat/AccessibilityManagerCompat;->sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v2, p0, Lcom/zui/launcher/PagedView;->g:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    iget v0, p0, Lcom/zui/launcher/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/zui/launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected onScrollInteractionBegin()V
    .locals 0

    return-void
.end method

.method protected onScrollInteractionEnd()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    if-gtz v2, :cond_0

    return v3

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/zui/launcher/PagedView;->b(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2a

    const/4 v6, -0x1

    if-eq v2, v5, :cond_e

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    const/16 v3, 0xfe

    if-eq v2, v3, :cond_1

    goto/16 :goto_12

    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/zui/launcher/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    iput-boolean v5, v0, Lcom/zui/launcher/PagedView;->n:Z

    goto/16 :goto_12

    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/zui/launcher/PagedView;->m(Landroid/view/MotionEvent;)V

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/PagedView;->n()V

    goto/16 :goto_12

    :cond_3
    iget-boolean v1, v0, Lcom/zui/launcher/PagedView;->e:Z

    if-eqz v1, :cond_29

    goto/16 :goto_e

    :cond_4
    iget-boolean v2, v0, Lcom/zui/launcher/PagedView;->e:Z

    if-eqz v2, :cond_d

    iget v2, v0, Lcom/zui/launcher/PagedView;->mActivePointerId:I

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-ne v2, v6, :cond_5

    return v5

    :cond_5
    iget-object v3, v0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {v3, v0}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget-object v2, v0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {v2, v6, v1}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getPrimaryValue(FF)F

    move-result v2

    iget v7, v0, Lcom/zui/launcher/PagedView;->k:F

    iget v8, v0, Lcom/zui/launcher/PagedView;->l:F

    add-float/2addr v7, v8

    sub-float/2addr v7, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    iget-object v10, v0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {v10, v8, v9}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v10

    iget-object v11, v0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {v11, v6, v1}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getSecondaryValue(FF)F

    move-result v1

    iget-object v6, v0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {v6, v8, v9}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getSecondaryValue(II)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v1, v6

    iget v6, v0, Lcom/zui/launcher/PagedView;->m:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v8

    add-float/2addr v6, v8

    iput v6, v0, Lcom/zui/launcher/PagedView;->m:F

    iget-boolean v6, v0, Lcom/zui/launcher/PagedView;->mAllowOverScroll:Z

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v6, :cond_8

    cmpg-float v6, v7, v4

    if-gez v6, :cond_6

    iget-object v6, v0, Lcom/zui/launcher/PagedView;->mEdgeGlowRight:Lcom/zui/launcher/util/EdgeEffectCompat;

    invoke-virtual {v6}, Lcom/zui/launcher/util/EdgeEffectCompat;->getDistance()F

    move-result v6

    cmpl-float v6, v6, v4

    if-eqz v6, :cond_6

    int-to-float v6, v10

    iget-object v9, v0, Lcom/zui/launcher/PagedView;->mEdgeGlowRight:Lcom/zui/launcher/util/EdgeEffectCompat;

    div-float v11, v7, v6

    invoke-virtual {v9, v11, v1}, Lcom/zui/launcher/util/EdgeEffectCompat;->onPullDistance(FF)F

    move-result v9

    :goto_0
    mul-float/2addr v6, v9

    goto :goto_1

    :cond_6
    cmpl-float v6, v7, v4

    if-lez v6, :cond_7

    iget-object v6, v0, Lcom/zui/launcher/PagedView;->mEdgeGlowLeft:Lcom/zui/launcher/util/EdgeEffectCompat;

    invoke-virtual {v6}, Lcom/zui/launcher/util/EdgeEffectCompat;->getDistance()F

    move-result v6

    cmpl-float v6, v6, v4

    if-eqz v6, :cond_7

    neg-int v6, v10

    int-to-float v6, v6

    iget-object v9, v0, Lcom/zui/launcher/PagedView;->mEdgeGlowLeft:Lcom/zui/launcher/util/EdgeEffectCompat;

    neg-float v11, v7

    int-to-float v12, v10

    div-float/2addr v11, v12

    sub-float v12, v8, v1

    invoke-virtual {v9, v11, v12}, Lcom/zui/launcher/util/EdgeEffectCompat;->onPullDistance(FF)F

    move-result v9

    goto :goto_0

    :cond_7
    move v6, v4

    :goto_1
    sub-float/2addr v7, v6

    :cond_8
    iput v2, v0, Lcom/zui/launcher/PagedView;->k:F

    float-to-int v2, v7

    int-to-float v6, v2

    sub-float v6, v7, v6

    iput v6, v0, Lcom/zui/launcher/PagedView;->l:F

    cmpl-float v4, v7, v4

    if-eqz v4, :cond_c

    iget-object v4, v0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    sget-object v6, Lcom/zui/launcher/touch/PagedOrientationHandler;->VIEW_SCROLL_BY:Lcom/zui/launcher/touch/PagedOrientationHandler$Int2DAction;

    invoke-interface {v4, v0, v6, v2}, Lcom/zui/launcher/touch/PagedOrientationHandler;->set(Ljava/lang/Object;Lcom/zui/launcher/touch/PagedOrientationHandler$Int2DAction;I)V

    iget-boolean v2, v0, Lcom/zui/launcher/PagedView;->mAllowOverScroll:Z

    if-eqz v2, :cond_2c

    add-float/2addr v3, v7

    iget v2, v0, Lcom/zui/launcher/PagedView;->mMinScroll:I

    int-to-float v2, v2

    cmpg-float v2, v3, v2

    if-gez v2, :cond_9

    iget-object v2, v0, Lcom/zui/launcher/PagedView;->mEdgeGlowLeft:Lcom/zui/launcher/util/EdgeEffectCompat;

    neg-float v3, v7

    int-to-float v4, v10

    div-float/2addr v3, v4

    sub-float/2addr v8, v1

    invoke-virtual {v2, v3, v8}, Lcom/zui/launcher/util/EdgeEffectCompat;->onPullDistance(FF)F

    iget-object v1, v0, Lcom/zui/launcher/PagedView;->mEdgeGlowRight:Lcom/zui/launcher/util/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v0, Lcom/zui/launcher/PagedView;->mEdgeGlowRight:Lcom/zui/launcher/util/EdgeEffectCompat;

    :goto_2
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_3

    :cond_9
    iget v2, v0, Lcom/zui/launcher/PagedView;->mMaxScroll:I

    int-to-float v2, v2

    cmpl-float v2, v3, v2

    if-lez v2, :cond_a

    iget-object v2, v0, Lcom/zui/launcher/PagedView;->mEdgeGlowRight:Lcom/zui/launcher/util/EdgeEffectCompat;

    int-to-float v3, v10

    div-float/2addr v7, v3

    invoke-virtual {v2, v7, v1}, Lcom/zui/launcher/util/EdgeEffectCompat;->onPullDistance(FF)F

    iget-object v1, v0, Lcom/zui/launcher/PagedView;->mEdgeGlowLeft:Lcom/zui/launcher/util/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v0, Lcom/zui/launcher/PagedView;->mEdgeGlowLeft:Lcom/zui/launcher/util/EdgeEffectCompat;

    goto :goto_2

    :cond_a
    :goto_3
    iget-object v1, v0, Lcom/zui/launcher/PagedView;->mEdgeGlowLeft:Lcom/zui/launcher/util/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/zui/launcher/PagedView;->mEdgeGlowRight:Lcom/zui/launcher/util/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2c

    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    goto/16 :goto_12

    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    goto/16 :goto_12

    :cond_d
    invoke-virtual/range {p0 .. p1}, Lcom/zui/launcher/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto/16 :goto_12

    :cond_e
    iget-boolean v2, v0, Lcom/zui/launcher/PagedView;->e:Z

    if-eqz v2, :cond_29

    iget v2, v0, Lcom/zui/launcher/PagedView;->mActivePointerId:I

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-ne v2, v6, :cond_f

    return v5

    :cond_f
    iget-object v4, v0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {v4, v1, v2}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getPrimaryDirection(Landroid/view/MotionEvent;I)F

    move-result v1

    iget-object v2, v0, Lcom/zui/launcher/PagedView;->b:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    iget v6, v0, Lcom/zui/launcher/PagedView;->f:I

    int-to-float v6, v6

    invoke-virtual {v2, v4, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v4, v0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    iget v6, v0, Lcom/zui/launcher/PagedView;->mActivePointerId:I

    invoke-interface {v4, v2, v6}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getPrimaryVelocity(Landroid/view/VelocityTracker;I)F

    move-result v2

    float-to-int v2, v2

    iget v4, v0, Lcom/zui/launcher/PagedView;->j:F

    sub-float v4, v1, v4

    float-to-int v4, v4

    iget-object v6, v0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    iget v7, v0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    invoke-virtual {v0, v7}, Lcom/zui/launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v6

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    int-to-float v6, v6

    const v8, 0x3ecccccd    # 0.4f

    mul-float/2addr v8, v6

    cmpl-float v7, v7, v8

    if-lez v7, :cond_10

    move v7, v5

    goto :goto_4

    :cond_10
    move v7, v3

    :goto_4
    iget v8, v0, Lcom/zui/launcher/PagedView;->m:F

    iget v9, v0, Lcom/zui/launcher/PagedView;->k:F

    iget v10, v0, Lcom/zui/launcher/PagedView;->l:F

    add-float/2addr v9, v10

    sub-float/2addr v9, v1

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v8, v1

    iput v8, v0, Lcom/zui/launcher/PagedView;->m:F

    iget-boolean v1, v0, Lcom/zui/launcher/PagedView;->n:Z

    if-nez v1, :cond_12

    iget v1, v0, Lcom/zui/launcher/PagedView;->mPageSlop:I

    int-to-float v1, v1

    cmpl-float v1, v8, v1

    if-lez v1, :cond_11

    goto :goto_5

    :cond_11
    move v1, v3

    goto :goto_6

    :cond_12
    :goto_5
    move v1, v5

    :goto_6
    if-eqz v1, :cond_13

    invoke-virtual {v0, v2}, Lcom/zui/launcher/PagedView;->shouldFlingForVelocity(I)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v5

    goto :goto_7

    :cond_13
    move v1, v3

    :goto_7
    iget-boolean v8, v0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    if-eqz v8, :cond_14

    if-lez v4, :cond_15

    goto :goto_8

    :cond_14
    if-gez v4, :cond_15

    :goto_8
    move v8, v5

    goto :goto_9

    :cond_15
    move v8, v3

    :goto_9
    iget-boolean v9, v0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    if-eqz v9, :cond_16

    if-lez v2, :cond_17

    goto :goto_a

    :cond_16
    if-gez v2, :cond_17

    :goto_a
    move v9, v5

    goto :goto_b

    :cond_17
    move v9, v3

    :goto_b
    iget-boolean v10, v0, Lcom/zui/launcher/PagedView;->a:Z

    if-nez v10, :cond_21

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-float v10, v10

    const v11, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v6, v11

    cmpl-float v6, v10, v6

    if-lez v6, :cond_18

    int-to-float v6, v2

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v6

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    cmpl-float v4, v6, v4

    if-eqz v4, :cond_18

    if-eqz v1, :cond_18

    move v3, v5

    :cond_18
    if-eqz v7, :cond_19

    if-nez v8, :cond_19

    if-eqz v1, :cond_1a

    :cond_19
    if-eqz v1, :cond_1c

    if-nez v9, :cond_1c

    :cond_1a
    iget v4, v0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    if-lez v4, :cond_1c

    if-eqz v3, :cond_1b

    goto :goto_c

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/PagedView;->getPanelCount()I

    move-result v1

    sub-int/2addr v4, v1

    :goto_c
    invoke-virtual {v0, v4, v2}, Lcom/zui/launcher/PagedView;->snapToPageWithVelocity(II)Z

    goto/16 :goto_11

    :cond_1c
    if-eqz v7, :cond_1d

    if-eqz v8, :cond_1d

    if-eqz v1, :cond_1e

    :cond_1d
    if-eqz v1, :cond_20

    if-eqz v9, :cond_20

    :cond_1e
    iget v1, v0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v5

    if-ge v1, v4, :cond_20

    iget v1, v0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    if-eqz v3, :cond_1f

    goto :goto_d

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/PagedView;->getPanelCount()I

    move-result v3

    add-int/2addr v1, v3

    :goto_d
    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/PagedView;->snapToPageWithVelocity(II)Z

    goto/16 :goto_11

    :cond_20
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/PagedView;->snapToDestination()V

    goto/16 :goto_11

    :cond_21
    iget-object v3, v0, Lcom/zui/launcher/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_22

    invoke-direct {v0, v5}, Lcom/zui/launcher/PagedView;->a(Z)V

    :cond_22
    iget-object v3, v0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {v3, v0}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v11

    iget v3, v0, Lcom/zui/launcher/PagedView;->mMaxScroll:I

    iget v15, v0, Lcom/zui/launcher/PagedView;->mMinScroll:I

    if-lt v11, v3, :cond_23

    if-nez v9, :cond_24

    if-eqz v1, :cond_24

    :cond_23
    if-gt v11, v15, :cond_25

    if-eqz v9, :cond_24

    if-nez v1, :cond_25

    :cond_24
    iget-object v10, v0, Lcom/zui/launcher/PagedView;->mScroller:Landroid/widget/OverScroller;

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/16 v16, 0x0

    move v13, v15

    move v14, v3

    move v15, v1

    invoke-virtual/range {v10 .. v16}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/PagedView;->getDestinationPage()I

    move-result v1

    iput v1, v0, Lcom/zui/launcher/PagedView;->mNextPage:I

    goto :goto_10

    :cond_25
    invoke-virtual {v0, v2}, Lcom/zui/launcher/PagedView;->shouldFlingScroll(I)Z

    move-result v1

    if-eqz v1, :cond_27

    if-nez v9, :cond_26

    iget v1, v0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    if-lez v1, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/PagedView;->getPanelCount()I

    move-result v3

    sub-int/2addr v1, v3

    :goto_f
    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/PagedView;->snapToPageWithVelocity(II)Z

    goto :goto_10

    :cond_26
    if-eqz v9, :cond_28

    iget v1, v0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v5

    if-ge v1, v3, :cond_28

    iget v1, v0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/PagedView;->getPanelCount()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_f

    :cond_27
    neg-int v13, v2

    iget-object v10, v0, Lcom/zui/launcher/PagedView;->mScroller:Landroid/widget/OverScroller;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    const v2, 0x3d8f5c29    # 0.07f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v19

    const/16 v20, 0x0

    move/from16 v16, v3

    invoke-virtual/range {v10 .. v20}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    iget-object v1, v0, Lcom/zui/launcher/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/PagedView;->getDestinationPage(I)I

    move-result v1

    iput v1, v0, Lcom/zui/launcher/PagedView;->mNextPage:I

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/PagedView;->onNotSnappingToPageInFreeScroll()V

    :cond_28
    :goto_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_29
    :goto_11
    iget-object v1, v0, Lcom/zui/launcher/PagedView;->mEdgeGlowLeft:Lcom/zui/launcher/util/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, v0, Lcom/zui/launcher/PagedView;->mEdgeGlowRight:Lcom/zui/launcher/util/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/PagedView;->resetTouchState()V

    goto :goto_12

    :cond_2a
    invoke-direct/range {p0 .. p1}, Lcom/zui/launcher/PagedView;->p(Landroid/view/MotionEvent;)V

    iget-object v2, v0, Lcom/zui/launcher/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-direct {v0, v3}, Lcom/zui/launcher/PagedView;->a(Z)V

    :cond_2b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v0, Lcom/zui/launcher/PagedView;->c:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, v0, Lcom/zui/launcher/PagedView;->d:F

    iget-object v2, v0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {v2, v1, v3}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getPrimaryDirection(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, v0, Lcom/zui/launcher/PagedView;->k:F

    iput v2, v0, Lcom/zui/launcher/PagedView;->j:F

    iput v4, v0, Lcom/zui/launcher/PagedView;->l:F

    iput v4, v0, Lcom/zui/launcher/PagedView;->m:F

    iput-boolean v3, v0, Lcom/zui/launcher/PagedView;->n:Z

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v0, Lcom/zui/launcher/PagedView;->mActivePointerId:I

    iget-boolean v1, v0, Lcom/zui/launcher/PagedView;->e:Z

    if-eqz v1, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/PagedView;->pageBeginTransition()V

    :cond_2c
    :goto_12
    return v5
.end method

.method protected onUnhandledTap()V
    .locals 1

    sget-object v0, Lcom/zui/launcher/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/zui/launcher/PagedView;->c()V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    iget p1, p0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    invoke-direct {p0, p1}, Lcom/zui/launcher/PagedView;->r(I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    invoke-direct {p0}, Lcom/zui/launcher/PagedView;->c()V

    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->pageEndTransition()V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onVisibilityAggregated(Z)V

    return-void
.end method

.method protected pageBeginTransition()V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/PagedView;->mIsPageInTransition:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/PagedView;->mIsPageInTransition:Z

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->onPageBeginTransition()V

    :cond_0
    return-void
.end method

.method protected pageEndTransition()V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/PagedView;->mIsPageInTransition:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/zui/launcher/PagedView;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mEdgeGlowLeft:Lcom/zui/launcher/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mEdgeGlowRight:Lcom/zui/launcher/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/PagedView;->mIsPageInTransition:Z

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->onPageEndTransition()V

    :cond_1
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->isPageOrderFlipped()Z

    move-result p2

    const/16 v1, 0x1000

    if-eq p1, v1, :cond_5

    const/16 v1, 0x2000

    if-eq p1, v1, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-boolean p1, p0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->scrollRight()Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->scrollLeft()Z

    move-result p0

    return p0

    :pswitch_1
    iget-boolean p1, p0, Lcom/zui/launcher/PagedView;->mIsRtl:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->scrollLeft()Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->scrollRight()Z

    move-result p0

    return p0

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->scrollRight()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->scrollLeft()Z

    move-result p0

    if-eqz p0, :cond_7

    :goto_0
    return v0

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->scrollLeft()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->scrollRight()Z

    move-result p0

    if-eqz p0, :cond_7

    :goto_1
    return v0

    :cond_7
    :goto_2
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x1020048
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public performLongClick()Z
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->performLongClick()Z

    move-result p0

    return p0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result p2

    iget v0, p0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    if-eq p2, v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/zui/launcher/PagedView;->setCurrentPage(I)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedView;->indexToPage(I)I

    move-result p1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result p2

    if-eq p1, p2, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedView;->snapToPage(I)Z

    :cond_1
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedView;->indexToPage(I)I

    move-result p1

    iget p2, p0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    if-ne p1, p2, :cond_1

    iget-object p2, p0, Lcom/zui/launcher/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedView;->setCurrentPage(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedView;->snapToPage(I)Z

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->cancelCurrentPageLongPress()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/PagedView;->mIsLayoutValid:Z

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public scrollLeft()Z
    .locals 2

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/PagedView;->snapToPage(I)Z

    return v1

    :cond_0
    iget-boolean p0, p0, Lcom/zui/launcher/PagedView;->mAllowOverScroll:Z

    return p0
.end method

.method public scrollRight()Z
    .locals 3

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/zui/launcher/PagedView;->snapToPage(I)Z

    return v2

    :cond_0
    iget-boolean p0, p0, Lcom/zui/launcher/PagedView;->mAllowOverScroll:Z

    return p0
.end method

.method public scrollTo(II)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    iget v1, p0, Lcom/zui/launcher/PagedView;->mMinScroll:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v0

    iget v1, p0, Lcom/zui/launcher/PagedView;->mMaxScroll:I

    invoke-static {p1, v0, v1}, Lcom/zui/launcher/Utilities;->boundToRange(III)I

    move-result p1

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    iget v1, p0, Lcom/zui/launcher/PagedView;->mMinScroll:I

    invoke-interface {v0, v2, v1}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v0

    iget v1, p0, Lcom/zui/launcher/PagedView;->mMaxScroll:I

    invoke-static {p2, v0, v1}, Lcom/zui/launcher/Utilities;->boundToRange(III)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1

    const/16 v0, 0x1000

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/PagedView;->setCurrentPage(II)V

    return-void
.end method

.method public setCurrentPage(II)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zui/launcher/PagedView;->a(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    goto :goto_0

    :cond_2
    iget p2, p0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    :goto_0
    invoke-direct {p0, p1}, Lcom/zui/launcher/PagedView;->r(I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->updateCurrentPageScroll()V

    invoke-virtual {p0, p2}, Lcom/zui/launcher/PagedView;->notifyPageSwitchListener(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setEnableFreeScroll(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/PagedView;->a:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/zui/launcher/PagedView;->a:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedView;->setCurrentPage(I)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedView;->getScrollForPage(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    if-eq p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedView;->snapToPage(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected setEnableOverscroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/PagedView;->mAllowOverScroll:Z

    return-void
.end method

.method public setOnPageTransitionEndCallback(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/zui/launcher/PagedView;->mIsPageInTransition:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/zui/launcher/PagedView;->g:Ljava/lang/Runnable;

    :goto_1
    return-void
.end method

.method public setPageSpacing(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/PagedView;->mPageSpacing:I

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->requestLayout()V

    return-void
.end method

.method protected shouldFlingForVelocity(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/PagedView;->n:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/zui/launcher/PagedView;->mEasyFlingThresholdVelocity:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/zui/launcher/PagedView;->mFlingThresholdVelocity:I

    :goto_0
    int-to-float p0, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p0, p1, p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method protected shouldFlingScroll(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected snapToDestination()V
    .locals 2

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getDestinationPage()I

    move-result v0

    const/16 v1, 0x2ee

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/PagedView;->snapToPage(II)Z

    return-void
.end method

.method public snapToPage(I)Z
    .locals 1

    const/16 v0, 0x2ee

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/PagedView;->snapToPage(II)Z

    move-result p0

    return p0
.end method

.method public snapToPage(II)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/zui/launcher/PagedView;->snapToPage(IIZ)Z

    move-result p0

    return p0
.end method

.method protected snapToPage(III)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/zui/launcher/PagedView;->snapToPage(IIIZ)Z

    move-result p0

    return p0
.end method

.method protected snapToPage(IIIZ)Z
    .locals 8

    iget-boolean v0, p0, Lcom/zui/launcher/PagedView;->mFirstLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedView;->setCurrentPage(I)V

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/launcher/PagedView;->r(I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/PagedView;->mNextPage:I

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->awakenScrollBars(I)Z

    if-eqz p4, :cond_1

    move v7, v1

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 p3, 0x2ee

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    :cond_2
    move v7, p3

    :goto_0
    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->pageBeginTransition()V

    :cond_3
    iget-object p1, p0, Lcom/zui/launcher/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-direct {p0, v1}, Lcom/zui/launcher/PagedView;->a(Z)V

    :cond_4
    iget-object v2, p0, Lcom/zui/launcher/PagedView;->mScroller:Landroid/widget/OverScroller;

    iget-object p1, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {p1, p0}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v5, p2

    invoke-virtual/range {v2 .. v7}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    invoke-direct {p0}, Lcom/zui/launcher/PagedView;->q()V

    if-eqz p4, :cond_5

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->computeScroll()V

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->pageEndTransition()V

    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-lez p0, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method protected snapToPage(IIZ)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/zui/launcher/PagedView;->r(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedView;->getScrollForPage(I)I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {v1, p0}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/zui/launcher/PagedView;->snapToPage(IIIZ)Z

    move-result p0

    return p0
.end method

.method public snapToPageImmediately(I)Z
    .locals 2

    const/16 v0, 0x2ee

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/zui/launcher/PagedView;->snapToPage(IIZ)Z

    move-result p0

    return p0
.end method

.method protected snapToPageWithVelocity(II)Z
    .locals 5

    invoke-direct {p0, p1}, Lcom/zui/launcher/PagedView;->r(I)I

    move-result p1

    iget-object v0, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedView;->getScrollForPage(I)I

    move-result v1

    iget-object v2, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    invoke-interface {v2, p0}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/zui/launcher/PagedView;->mMinFlingVelocity:I

    if-ge v2, v3, :cond_0

    const/16 p2, 0x2ee

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/PagedView;->snapToPage(II)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    mul-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    div-float/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v0, v0

    invoke-direct {p0, v2}, Lcom/zui/launcher/PagedView;->d(F)F

    move-result v2

    mul-float/2addr v2, v0

    add-float/2addr v0, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v2, p0, Lcom/zui/launcher/PagedView;->mMinSnapVelocity:I

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/high16 v2, 0x447a0000    # 1000.0f

    int-to-float p2, p2

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    invoke-virtual {p0, p1, v1, p2}, Lcom/zui/launcher/PagedView;->snapToPage(III)Z

    move-result p0

    return p0
.end method

.method public superScrollTo(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    return-void
.end method

.method protected updateCurrentPageScroll()V
    .locals 5

    iget v0, p0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget v0, p0, Lcom/zui/launcher/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/zui/launcher/PagedView;->getScrollForPage(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/zui/launcher/PagedView;->mOrientationHandler:Lcom/zui/launcher/touch/PagedOrientationHandler;

    sget-object v3, Lcom/zui/launcher/touch/PagedOrientationHandler;->VIEW_SCROLL_TO:Lcom/zui/launcher/touch/PagedOrientationHandler$Int2DAction;

    invoke-interface {v2, p0, v3, v0}, Lcom/zui/launcher/touch/PagedOrientationHandler;->set(Ljava/lang/Object;Lcom/zui/launcher/touch/PagedOrientationHandler$Int2DAction;I)V

    iget-object v2, p0, Lcom/zui/launcher/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v3

    iget-object v4, p0, Lcom/zui/launcher/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {v2, v3, v1, v0, v1}, Landroid/widget/OverScroller;->startScroll(IIII)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zui/launcher/PagedView;->f(Z)V

    return-void
.end method

.method protected updateMinAndMaxScrollX()V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->computeMinScroll()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/PagedView;->mMinScroll:I

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->computeMaxScroll()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/PagedView;->mMaxScroll:I

    return-void
.end method

.method public updatePageScroll()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/zui/launcher/PagedView;->mPageScrolls:[I

    sget-object v1, Lcom/zui/launcher/PagedView;->SIMPLE_SCROLL_LOGIC:Lcom/zui/launcher/PagedView$ComputePageScrollsLogic;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/zui/launcher/PagedView;->getPageScrolls([IZLcom/zui/launcher/PagedView$ComputePageScrollsLogic;)Z

    return-void
.end method
