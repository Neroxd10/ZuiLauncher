.class public Lcom/zui/launcher/allapps/AllAppsRecyclerView;
.super Lcom/zui/launcher/BaseRecyclerView;
.source ""

# interfaces
.implements Lcom/zui/launcher/logging/StatsLogUtils$LogContainerProvider;


# instance fields
.field private a:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

.field private b:Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;

.field private final c:I

.field private d:Landroid/util/SparseIntArray;

.field private e:Landroid/util/SparseIntArray;

.field private f:Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;

.field private g:I

.field private h:Lcom/zui/launcher/views/SpringRelativeLayout$OnOverScrollStateChangedListener;

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/allapps/AllAppsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/allapps/AllAppsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zui/launcher/allapps/AllAppsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->d:Landroid/util/SparseIntArray;

    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->e:Landroid/util/SparseIntArray;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->j:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07009a

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->g:I

    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/zui/launcher/InvariantDeviceProfile;->numColumnsApps:I

    iput p1, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->c:I

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/allapps/AllAppsRecyclerView;)Landroid/util/SparseIntArray;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->e:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->f:Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->f:Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {v1}, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->g:I

    iget-object v2, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->f:Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {v2}, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->f:Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;->getIntrinsicHeight()I

    move-result p0

    add-int/2addr p0, v1

    invoke-virtual {v2, v0, v1, v3, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private c()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    iget v2, v0, Lcom/zui/launcher/DeviceProfile;->availableHeightPx:I

    iget v3, v0, Lcom/zui/launcher/DeviceProfile;->allAppsIconSizePx:I

    div-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    const/16 v3, 0x10

    invoke-virtual {v1, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    iget v3, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->c:I

    mul-int/2addr v3, v2

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v3}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    iget v3, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->c:I

    mul-int/2addr v2, v3

    const/16 v3, 0x20

    invoke-virtual {v1, v3, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    iget-object v1, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    iget-object v1, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->d:Landroid/util/SparseIntArray;

    iget v2, v0, Lcom/zui/launcher/DeviceProfile;->allAppsCellHeightPx:I

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->d:Landroid/util/SparseIntArray;

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->allAppsCellHeightPx:I

    invoke-virtual {p0, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    iget-boolean v0, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->getCurrentScrollY()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->i:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->j:Z

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->h:Lcom/zui/launcher/views/SpringRelativeLayout$OnOverScrollStateChangedListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/zui/launcher/views/SpringRelativeLayout$OnOverScrollStateChangedListener;->onOverScrollStateChange()V

    :cond_0
    return-void
.end method

.method public fillInLogContainerData(Landroid/view/View;Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->a:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    iput p0, p4, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->containerType:I

    return-void
.end method

.method public getApps()Lcom/zui/launcher/allapps/AlphabeticalAppsList;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->a:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    return-object p0
.end method

.method protected getAvailableScrollHeight()I
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->getCurrentScrollY(II)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentScrollY()I
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->a:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->c:I

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v2

    if-ne v2, v1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->getCurrentScrollY(II)I

    move-result p0

    add-int/2addr v1, p0

    :cond_2
    :goto_0
    return v1
.end method

.method public getCurrentScrollY(II)I
    .locals 8

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->a:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->e:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-gez v2, :cond_7

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v4, p1, :cond_6

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    iget v6, v5, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-static {v6}, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->isIconViewType(I)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v1, :cond_1

    iget v6, v1, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-static {v6}, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->isIconViewType(I)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v1, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->rowIndex:I

    iget v7, v5, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->rowIndex:I

    if-ne v6, v7, :cond_1

    goto :goto_4

    :cond_1
    iget v6, v5, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->rowAppIndex:I

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->d:Landroid/util/SparseIntArray;

    iget v5, v5, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-virtual {v6, v5, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_3

    :cond_2
    iget-object v6, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->d:Landroid/util/SparseIntArray;

    iget v7, v5, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v6

    iget v5, v5, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-virtual {v6, p0, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v6

    invoke-virtual {v6, v5, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, v2, v2}, Landroid/view/View;->measure(II)V

    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->putRecycledView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_2

    :cond_3
    iget-object v5, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    :cond_4
    :goto_2
    add-int/2addr v3, v6

    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    :goto_4
    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->e:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    move v2, v3

    :cond_7
    sub-int/2addr v2, p2

    return v2
.end method

.method public getPositionAtProgress(F)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->a:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->getNumAppRows()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->a:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->getFastScrollerSections()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    iget v4, v3, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    cmpl-float v4, v4, p1

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move-object v0, v3

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, v0, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    if-nez p1, :cond_6

    move p1, v2

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_4

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    iget-object v4, v3, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    if-eqz v4, :cond_3

    move-object v0, v3

    goto :goto_3

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    iget-object p1, v0, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    if-nez p1, :cond_6

    sub-int/2addr v2, v1

    :goto_4
    if-lt v2, v1, :cond_6

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    iget-object v3, p1, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    if-eqz v3, :cond_5

    move-object v0, p1

    goto :goto_5

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_6
    :goto_5
    iget-object p0, v0, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    return-object p0
.end method

.method public getScrollBarTop()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0700a7

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0
.end method

.method public getScrollbar()Lcom/zui/launcher/views/RecyclerViewFastScroller;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/BaseRecyclerView;->mScrollbar:Lcom/zui/launcher/views/RecyclerViewFastScroller;

    return-object p0
.end method

.method public getTabWidth()I
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/zui/launcher/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget v1, v0, Lcom/zui/launcher/DeviceProfile;->availableWidthPx:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget p0, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->c:I

    div-int p0, v1, p0

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->allAppsIconSizePx:I

    sub-int/2addr p0, v0

    sub-int/2addr v1, p0

    return v1
.end method

.method protected getTopPaddingOffset()I
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p0

    neg-int p0, p0

    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onDraggingCompleted()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/BaseRecyclerView;->mScrollbar:Lcom/zui/launcher/views/RecyclerViewFastScroller;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->onDraggingCompleted()V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->f:Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->f:Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onFastScrollCompleted()V
    .locals 0

    invoke-super {p0}, Lcom/zui/launcher/BaseRecyclerView;->onFastScrollCompleted()V

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->b:Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->onFastScrollCompleted()V

    return-void
.end method

.method public onFastScrollStarted()V
    .locals 0

    invoke-super {p0}, Lcom/zui/launcher/BaseRecyclerView;->onFastScrollStarted()V

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->b:Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->onFastScrollStarted()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->f:Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;->getAlpha()I

    move-result v1

    if-lez v1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->f:Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return v0
.end method

.method public onScrollStateChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/zui/launcher/BaseRecyclerView;->onScrollStateChanged(I)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/compat/AccessibilityManagerCompat;->sendScrollFinishedEventToTest(Landroid/content/Context;)V

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p0

    const/high16 p1, 0x10000

    invoke-static {p0, p1}, Lcom/zui/launcher/AbstractFloatingView;->closeOpenContainer(Lcom/zui/launcher/views/ActivityContext;I)V

    :cond_1
    return-void
.end method

.method public onSearchResultsChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->scrollToTop()V

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->a:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->hasNoFilteredResults()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->f:Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;->setBgAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->b()V

    invoke-direct {p0}, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->c()V

    return-void
.end method

.method public onUpdateScrollbar(I)V
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->a:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->c:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->getCurrentScrollY()I

    move-result v0

    if-gez v0, :cond_3

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/BaseRecyclerView;->mScrollbar:Lcom/zui/launcher/views/RecyclerViewFastScroller;

    invoke-virtual {p0, v1}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/zui/launcher/BaseRecyclerView;->getAvailableScrollBarHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->getAvailableScrollHeight()I

    move-result v3

    if-gtz v3, :cond_4

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/zui/launcher/BaseRecyclerView;->mScrollbar:Lcom/zui/launcher/views/RecyclerViewFastScroller;

    invoke-virtual {v1}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->isThumbDetached()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/zui/launcher/BaseRecyclerView;->mScrollbar:Lcom/zui/launcher/views/RecyclerViewFastScroller;

    invoke-virtual {v1}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->isDraggingThumb()Z

    move-result v1

    if-nez v1, :cond_8

    int-to-float v0, v0

    int-to-float v1, v3

    div-float/2addr v0, v1

    int-to-float v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/zui/launcher/BaseRecyclerView;->mScrollbar:Lcom/zui/launcher/views/RecyclerViewFastScroller;

    invoke-virtual {v1}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->getThumbOffsetY()I

    move-result v1

    sub-int v3, v0, v1

    mul-int v4, v3, p1

    int-to-float v4, v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    if-gez p1, :cond_5

    mul-int/2addr p1, v1

    int-to-float p1, p1

    int-to-float v4, v0

    div-float/2addr p1, v4

    float-to-int p1, p1

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_1

    :cond_5
    sub-int v4, v2, v1

    mul-int/2addr p1, v4

    int-to-float p1, p1

    sub-int v4, v2, v0

    int-to-float v4, v4

    div-float/2addr p1, v4

    float-to-int p1, p1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_1
    add-int/2addr v1, p1

    const/4 p1, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v1, p0, Lcom/zui/launcher/BaseRecyclerView;->mScrollbar:Lcom/zui/launcher/views/RecyclerViewFastScroller;

    invoke-virtual {v1, p1}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    if-ne v0, p1, :cond_8

    iget-object p0, p0, Lcom/zui/launcher/BaseRecyclerView;->mScrollbar:Lcom/zui/launcher/views/RecyclerViewFastScroller;

    invoke-virtual {p0}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->reattachThumbToScroll()V

    goto :goto_2

    :cond_6
    iget-object p0, p0, Lcom/zui/launcher/BaseRecyclerView;->mScrollbar:Lcom/zui/launcher/views/RecyclerViewFastScroller;

    invoke-virtual {p0, v1}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v0, v3}, Lcom/zui/launcher/BaseRecyclerView;->synchronizeScrollBarThumbOffsetToViewScroll(II)V

    :cond_8
    :goto_2
    return-void
.end method

.method public resetAppsList()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->a:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->onAppsUpdated()V

    :cond_0
    return-void
.end method

.method public resetMaxScrollY()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->i:I

    return-void
.end method

.method public saveMaxScrollY(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->j:Z

    iget p1, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->i:I

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->getCurrentScrollY()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->i:I

    return-void
.end method

.method public scrollToPositionAtProgress(F)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->a:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->getNumAppRows()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->a:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->getFastScrollerSections()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    iget v5, v4, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    cmpl-float v5, v5, p1

    if-lez v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move-object v1, v4

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, v1, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    if-nez p1, :cond_6

    move p1, v3

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge p1, v4, :cond_4

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    iget-object v5, v4, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    if-eqz v5, :cond_3

    move-object v1, v4

    goto :goto_3

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    iget-object p1, v1, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    if-nez p1, :cond_6

    sub-int/2addr v3, v2

    :goto_4
    if-lt v3, v2, :cond_6

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    iget-object v4, p1, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    if-eqz v4, :cond_5

    move-object v1, p1

    goto :goto_5

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_6
    :goto_5
    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->getCurrentScrollY()I

    move-result p1

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->getAvailableScrollHeight()I

    move-result v0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->b:Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;

    invoke-virtual {p0, p1, v0, v1}, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->smoothScrollToSection(IILcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;)Z

    iget-object p0, v1, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

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

    instance-of v0, v0, Lcom/zui/launcher/allapps/AllAppsGridAdapter$AppsGridLayoutManager;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/allapps/AllAppsGridAdapter$AppsGridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v0, Lcom/zui/launcher/allapps/AllAppsRecyclerView$a;

    invoke-direct {v0, p0}, Lcom/zui/launcher/allapps/AllAppsRecyclerView$a;-><init>(Lcom/zui/launcher/allapps/AllAppsRecyclerView;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->b:Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;

    check-cast p1, Lcom/zui/launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->onSetAdapter(Lcom/zui/launcher/allapps/AllAppsGridAdapter;)V

    return-void
.end method

.method public setApps(Lcom/zui/launcher/allapps/AlphabeticalAppsList;Z)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->a:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    new-instance p2, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;

    invoke-direct {p2, p0, p1}, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;-><init>(Lcom/zui/launcher/allapps/AllAppsRecyclerView;Lcom/zui/launcher/allapps/AlphabeticalAppsList;)V

    iput-object p2, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->b:Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;

    return-void
.end method

.method public setOnOverScrollStateChangedListener(Lcom/zui/launcher/views/SpringRelativeLayout$OnOverScrollStateChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->h:Lcom/zui/launcher/views/SpringRelativeLayout$OnOverScrollStateChangedListener;

    return-void
.end method

.method public supportsFastScrolling()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->a:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public updateZuiDots(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/zui/launcher/util/ShortcutUserKey;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/zui/launcher/util/ShortcutUserKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/zui/launcher/util/ShortcutUserKey;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/zui/launcher/WorkspaceIconCompat;

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/AppInfo;

    invoke-virtual {v0, v4}, Lcom/zui/launcher/util/ShortcutUserKey;->updateFromAppInfo(Lcom/zui/launcher/AppInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    :goto_1
    check-cast v3, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {v3, v4, v6}, Lcom/zui/launcher/WorkspaceIconCompat;->applyDotState(Lcom/zui/launcher/ItemInfo;Z)V

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Lcom/zui/launcher/util/ShortcutUserKey;->resetClassName()V

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->f:Lcom/zui/launcher/allapps/AllAppsBackgroundDrawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-eqz p0, :cond_0

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
