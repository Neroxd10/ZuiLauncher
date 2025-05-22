.class public Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;
.super Lcom/zui/launcher/BaseRecyclerView;
.source ""

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$HeaderViewDimensionsProvider;
    }
.end annotation


# instance fields
.field private a:Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

.field private final b:I

.field private final c:Landroid/graphics/Point;

.field private d:Z

.field private e:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$HeaderViewDimensionsProvider;

.field private f:I

.field private g:I

.field private final h:I

.field private i:Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController$OnContentChangeListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->c:Landroid/graphics/Point;

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->f:I

    iput p1, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->g:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0702ea

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->b:I

    invoke-virtual {p0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/views/ActivityContext;

    invoke-interface {p1}, Lcom/zui/launcher/views/ActivityContext;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0708a5

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->h:I

    invoke-direct {p0}, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->b()V

    return-void
.end method

.method private a(I)I
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->a:Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

    invoke-virtual {v0}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->a:Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

    invoke-virtual {p1}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_6

    iget-object v2, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->a:Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

    invoke-virtual {v2}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;

    instance-of v3, v2, Lcom/zui/launcher/widget/model/WidgetsListHeaderEntry;

    if-nez v3, :cond_4

    instance-of v3, v2, Lcom/zui/launcher/widget/model/WidgetsListSearchHeaderEntry;

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    instance-of v3, v2, Lcom/zui/launcher/widget/model/WidgetsListContentEntry;

    if-nez v3, :cond_3

    instance-of v3, v2, Lcom/zui/launcher/widget/model/WidgetsListRecommendContentEntry;

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t estimate height for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    iget v2, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->f:I

    goto :goto_3

    :cond_4
    :goto_2
    iget v2, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->g:I

    add-int/2addr v1, v2

    if-lez v0, :cond_5

    iget v2, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->h:I

    :goto_3
    add-int/2addr v1, v2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return v1
.end method

.method private b()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a;

    invoke-direct {v0, p0}, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a;-><init>(Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;)V

    iput-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->j:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    return-void
.end method

.method private c()Z
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->a:Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->getItemCount()I

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method protected getAvailableScrollHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->a:Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

    invoke-virtual {v1}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->getItemCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->a(I)I

    move-result p0

    sub-int/2addr p0, v0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getCurrentScrollY()I
    .locals 5

    invoke-direct {p0}, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->c()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    instance-of v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v3, :cond_1

    move-object v0, v2

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    :cond_1
    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/TableLayout;

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->f:I

    goto :goto_1

    :cond_3
    instance-of v4, v3, Lcom/zui/launcher/widget/picker/WidgetsListHeader;

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->f:I

    if-nez v4, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->g:I

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    invoke-direct {p0, v1}, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->a(I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p0

    add-int/2addr p0, v1

    sub-int/2addr p0, v0

    return p0

    :cond_6
    :goto_2
    return v1
.end method

.method public getScrollBarTop()I
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->e:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$HeaderViewDimensionsProvider;

    if-nez v0, :cond_0

    iget p0, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->b:I

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$HeaderViewDimensionsProvider;->getHeaderViewHeight()I

    move-result v0

    iget p0, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->b:I

    add-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    new-instance v0, Lcom/zui/launcher/widget/picker/WidgetsListLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zui/launcher/widget/picker/WidgetsListLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->i:Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController$OnContentChangeListener;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/widget/picker/WidgetsListLayoutManager;->setOnContentChangeListener(Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController$OnContentChangeListener;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/BaseRecyclerView;->mScrollbar:Lcom/zui/launcher/views/RecyclerViewFastScroller;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->c:Landroid/graphics/Point;

    invoke-virtual {p1, v0, v1, v2}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->isHitInParent(FFLandroid/graphics/Point;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->d:Z

    :cond_0
    iget-boolean p1, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->d:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/BaseRecyclerView;->mScrollbar:Lcom/zui/launcher/views/RecyclerViewFastScroller;

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->c:Landroid/graphics/Point;

    invoke-virtual {p1, p2, p0}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    iget-boolean p1, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->d:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/BaseRecyclerView;->mScrollbar:Lcom/zui/launcher/views/RecyclerViewFastScroller;

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->c:Landroid/graphics/Point;

    invoke-virtual {p1, p2, p0}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z

    :cond_0
    return-void
.end method

.method public onUpdateScrollbar(I)V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->c()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/BaseRecyclerView;->mScrollbar:Lcom/zui/launcher/views/RecyclerViewFastScroller;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->getCurrentScrollY()I

    move-result p1

    if-gez p1, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/BaseRecyclerView;->mScrollbar:Lcom/zui/launcher/views/RecyclerViewFastScroller;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->getAvailableScrollHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/BaseRecyclerView;->synchronizeScrollBarThumbOffsetToViewScroll(II)V

    return-void
.end method

.method public scrollToPositionAtProgress(F)Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->a:Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

    invoke-virtual {v0}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->getItemCount()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->getAvailableScrollHeight()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x0

    int-to-float v1, v1

    mul-float/2addr v1, p1

    neg-float v1, v1

    float-to-int v1, v1

    invoke-virtual {v2, v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    sub-float/2addr v0, v1

    :cond_1
    float-to-int p1, v0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->a:Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->getSectionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
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

    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->getCurrentScrollY()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    check-cast p1, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->a:Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

    iget-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->j:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;)V

    return-void
.end method

.method public setHeaderViewDimensionsProvider(Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$HeaderViewDimensionsProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->e:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$HeaderViewDimensionsProvider;

    return-void
.end method

.method public setOnContentChangeListener(Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController$OnContentChangeListener;)V
    .locals 0
    .param p1    # Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController$OnContentChangeListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->i:Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController$OnContentChangeListener;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/widget/picker/WidgetsListLayoutManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/widget/picker/WidgetsListLayoutManager;->setOnContentChangeListener(Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController$OnContentChangeListener;)V

    :cond_0
    return-void
.end method
