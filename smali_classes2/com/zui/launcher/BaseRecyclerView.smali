.class public abstract Lcom/zui/launcher/BaseRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source ""


# instance fields
.field protected mScrollbar:Lcom/zui/launcher/views/RecyclerViewFastScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public bindFastScrollbar()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a0177

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/views/RecyclerViewFastScroller;

    iput-object v1, p0, Lcom/zui/launcher/BaseRecyclerView;->mScrollbar:Lcom/zui/launcher/views/RecyclerViewFastScroller;

    if-eqz v1, :cond_0

    const v2, 0x7f0a0178

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, p0, v0}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->setRecyclerView(Lcom/zui/launcher/BaseRecyclerView;Landroid/widget/TextView;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/BaseRecyclerView;->onUpdateScrollbar(I)V

    :cond_0
    return-void
.end method

.method public getAvailableScrollBarHeight()I
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/BaseRecyclerView;->mScrollbar:Lcom/zui/launcher/views/RecyclerViewFastScroller;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/BaseRecyclerView;->getScrollbarTrackHeight()I

    move-result v0

    iget-object p0, p0, Lcom/zui/launcher/BaseRecyclerView;->mScrollbar:Lcom/zui/launcher/views/RecyclerViewFastScroller;

    invoke-virtual {p0}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->getThumbHeight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method protected abstract getAvailableScrollHeight()I
.end method

.method public abstract getCurrentScrollY()I
.end method

.method public getPositionAtProgress(F)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getScrollBarTop()I
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p0

    return p0
.end method

.method public getScrollbar()Lcom/zui/launcher/views/RecyclerViewFastScroller;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/BaseRecyclerView;->mScrollbar:Lcom/zui/launcher/views/RecyclerViewFastScroller;

    return-object p0
.end method

.method public getScrollbarTrackHeight()I
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/BaseRecyclerView;->mScrollbar:Lcom/zui/launcher/views/RecyclerViewFastScroller;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/zui/launcher/BaseRecyclerView;->getScrollBarTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/zui/launcher/BaseRecyclerView;->bindFastScrollbar()V

    return-void
.end method

.method public onFastScrollCompleted()V
    .locals 0

    return-void
.end method

.method public onFastScrollStarted()V
    .locals 0

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutSuppressed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/compat/AccessibilityManagerCompat;->sendScrollFinishedEventToTest(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public abstract onUpdateScrollbar(I)V
.end method

.method public abstract scrollToPositionAtProgress(F)Ljava/lang/String;
.end method

.method public scrollToTop()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/BaseRecyclerView;->mScrollbar:Lcom/zui/launcher/views/RecyclerViewFastScroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->reattachThumbToScroll()V

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public shouldContainerScroll(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v1, 0x1

    aput p1, v0, v1

    iget-object p1, p0, Lcom/zui/launcher/BaseRecyclerView;->mScrollbar:Lcom/zui/launcher/views/RecyclerViewFastScroller;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/BaseRecyclerView;->getCurrentScrollY()I

    move-result p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    invoke-static {p1, p2, v0}, Lcom/zui/launcher/Utilities;->mapCoordInSelfToDescendant(Landroid/view/View;Landroid/view/View;[F)V

    iget-object p1, p0, Lcom/zui/launcher/BaseRecyclerView;->mScrollbar:Lcom/zui/launcher/views/RecyclerViewFastScroller;

    aget p2, v0, v2

    float-to-int p2, p2

    aget v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, p2, v0}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->shouldBlockIntercept(II)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zui/launcher/BaseRecyclerView;->getCurrentScrollY()I

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p0

    if-nez p0, :cond_5

    :cond_4
    move v2, v1

    :cond_5
    return v2
.end method

.method public supportsFastScrolling()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected synchronizeScrollBarThumbOffsetToViewScroll(II)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/BaseRecyclerView;->mScrollbar:Lcom/zui/launcher/views/RecyclerViewFastScroller;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-gtz p2, :cond_1

    const/4 p0, -0x1

    invoke-virtual {v0, p0}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    return-void

    :cond_1
    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-virtual {p0}, Lcom/zui/launcher/BaseRecyclerView;->getAvailableScrollBarHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iget-object p0, p0, Lcom/zui/launcher/BaseRecyclerView;->mScrollbar:Lcom/zui/launcher/views/RecyclerViewFastScroller;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    return-void
.end method
