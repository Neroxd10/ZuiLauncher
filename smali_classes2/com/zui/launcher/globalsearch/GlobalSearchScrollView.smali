.class public Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;
.super Landroidx/core/widget/NestedScrollView;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/globalsearch/GlobalSearchScrollView$ScrollViewStateListener;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:F

.field private c:F

.field private d:Landroid/view/View;

.field private e:F

.field public scrollViewStateListener:Lcom/zui/launcher/globalsearch/GlobalSearchScrollView$ScrollViewStateListener;

.field public upState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;->a:Z

    const/4 p3, 0x0

    iput p3, p0, Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;->b:F

    iput p3, p0, Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;->c:F

    iput-boolean p2, p0, Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;->upState:Z

    invoke-direct {p0}, Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;->a()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070834

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;->e:F

    return-void
.end method

.method private a()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public getScrollViewStateListener()Lcom/zui/launcher/globalsearch/GlobalSearchScrollView$ScrollViewStateListener;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;->scrollViewStateListener:Lcom/zui/launcher/globalsearch/GlobalSearchScrollView$ScrollViewStateListener;

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;->d:Landroid/view/View;

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    add-int/2addr p3, v0

    sub-int/2addr p1, p3

    if-nez p1, :cond_1

    return-void

    :cond_1
    if-le p4, p2, :cond_2

    sub-int p1, p4, p2

    int-to-float p1, p1

    iget p3, p0, Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;->e:F

    cmpl-float p1, p1, p3

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    if-ge p4, p2, :cond_3

    sub-int/2addr p2, p4

    int-to-float p1, p2

    iget p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;->e:F

    cmpl-float p0, p1, p0

    :cond_3
    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;->upState:Z

    iget-boolean v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    if-eqz v0, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v0, v3

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;->c:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;->b:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x41f00000    # 30.0f

    cmpg-float v4, v0, v4

    if-gez v4, :cond_3

    return v1

    :cond_3
    iget v4, p0, Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;->c:F

    cmpl-float v4, p2, v4

    if-lez v4, :cond_4

    move v4, p1

    goto :goto_0

    :cond_4
    move v4, v1

    :goto_0
    iput p2, p0, Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;->c:F

    iput v2, p0, Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;->b:F

    iget p2, p0, Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;->e:F

    cmpg-float v2, v3, p2

    if-gez v2, :cond_5

    cmpl-float p2, v0, p2

    :cond_5
    iget p2, p0, Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;->e:F

    cmpg-float v2, v3, p2

    if-gez v2, :cond_6

    cmpl-float p2, v0, p2

    :cond_6
    iput-boolean p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;->a:Z

    cmpl-float p0, v0, v3

    if-lez p0, :cond_7

    goto :goto_1

    :cond_7
    move p1, v1

    :goto_1
    return p1

    :cond_8
    iput p2, p0, Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;->c:F

    iput v2, p0, Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;->b:F

    return v1
.end method

.method public setIsAnim(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;->a:Z

    return-void
.end method

.method public setScrollViewStateListener(Lcom/zui/launcher/globalsearch/GlobalSearchScrollView$ScrollViewStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;->scrollViewStateListener:Lcom/zui/launcher/globalsearch/GlobalSearchScrollView$ScrollViewStateListener;

    return-void
.end method

.method public setUpState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;->upState:Z

    return-void
.end method
