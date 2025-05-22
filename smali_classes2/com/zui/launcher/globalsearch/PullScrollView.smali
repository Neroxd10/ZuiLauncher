.class public Lcom/zui/launcher/globalsearch/PullScrollView;
.super Landroid/widget/RelativeLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/globalsearch/PullScrollView$onPullCloseListener;,
        Lcom/zui/launcher/globalsearch/PullScrollView$DampInterpolator;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:F

.field private d:Z

.field private e:Landroid/widget/Scroller;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/view/View;

.field private j:Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;

.field private k:I

.field private l:I

.field public listener:Lcom/zui/launcher/globalsearch/PullScrollView$onPullCloseListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->l:I

    invoke-direct {p0, p1}, Lcom/zui/launcher/globalsearch/PullScrollView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->l:I

    invoke-direct {p0, p1}, Lcom/zui/launcher/globalsearch/PullScrollView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->l:I

    invoke-direct {p0, p1}, Lcom/zui/launcher/globalsearch/PullScrollView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->f:I

    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Lcom/zui/launcher/globalsearch/PullScrollView$DampInterpolator;

    invoke-direct {v1}, Lcom/zui/launcher/globalsearch/PullScrollView$DampInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->e:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120591

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->g:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120590

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->h:Ljava/lang/String;

    return-void
.end method

.method private b(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getScrollY()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getScrollY()I

    move-result v0

    add-int/2addr v0, p1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getScrollY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v2, 0x12c

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v1, p1}, Landroid/widget/RelativeLayout;->scrollBy(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v1}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    :goto_0
    return-void
.end method

.method private c(I)V
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->e:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getScrollY()I

    move-result v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v5, 0x1f4

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->postInvalidate()V

    return-void
.end method

.method private d()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getScrollY()I

    move-result v0

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/globalsearch/PullScrollView;->c(I)V

    return-void
.end method

.method private getBottomViewHeight()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->i:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method private getTopPosition()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->j:Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->computeScroll()V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->e:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->e:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->e:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/globalsearch/PullScrollView;->getTopPosition()Z

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->i:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->j:Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "child must be two"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getScrollY()I

    move-result v0

    const/4 v1, 0x1

    if-gez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v2, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->k:I

    sub-int/2addr v0, v2

    invoke-direct {p0}, Lcom/zui/launcher/globalsearch/PullScrollView;->getTopPosition()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->f:I

    if-le v0, v2, :cond_3

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->setAction(I)V

    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->k:I

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->k:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getScrollY()I

    move-result v2

    invoke-direct {p0}, Lcom/zui/launcher/globalsearch/PullScrollView;->getTopPosition()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->j:Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->a:Z

    if-eqz v3, :cond_1

    neg-int v0, v0

    int-to-double v3, v0

    const-wide v5, 0x3fc70a3d70a3d70aL    # 0.18

    mul-double/2addr v3, v5

    double-to-int v0, v3

    invoke-direct {p0, v0}, Lcom/zui/launcher/globalsearch/PullScrollView;->b(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->a:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->j:Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->j:Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;->getScrollViewStateListener()Lcom/zui/launcher/globalsearch/GlobalSearchScrollView$ScrollViewStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/launcher/globalsearch/GlobalSearchScrollView$ScrollViewStateListener;->onScrollDown()V

    :cond_2
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->c:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->d:Z

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->listener:Lcom/zui/launcher/globalsearch/PullScrollView$onPullCloseListener;

    if-eqz v2, :cond_5

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->g:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->h:Ljava/lang/String;

    :goto_1
    invoke-interface {v2, v0}, Lcom/zui/launcher/globalsearch/PullScrollView$onPullCloseListener;->onPullClose(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->k:I

    return v1

    :cond_6
    iget-object p1, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->listener:Lcom/zui/launcher/globalsearch/PullScrollView$onPullCloseListener;

    if-eqz p1, :cond_7

    iget-boolean v0, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->d:Z

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lcom/zui/launcher/globalsearch/PullScrollView$onPullCloseListener;->removeGlobalSearchView()V

    :cond_7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getScrollY()I

    move-result p1

    if-gez p1, :cond_8

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->l:I

    if-ge v0, v2, :cond_8

    :goto_2
    invoke-direct {p0}, Lcom/zui/launcher/globalsearch/PullScrollView;->d()V

    goto :goto_3

    :cond_8
    if-gez p1, :cond_a

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->l:I

    if-le p1, v0, :cond_a

    goto :goto_2

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->k:I

    :cond_a
    :goto_3
    return v1
.end method

.method public setIsAlreadyDown(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->a:Z

    return-void
.end method

.method public setIsAlreadyTop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->b:Z

    return-void
.end method

.method public setPullCloseListener(Lcom/zui/launcher/globalsearch/PullScrollView$onPullCloseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->listener:Lcom/zui/launcher/globalsearch/PullScrollView$onPullCloseListener;

    return-void
.end method

.method public setSmoothDimension(F)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/PullScrollView;->c:F

    return-void
.end method
