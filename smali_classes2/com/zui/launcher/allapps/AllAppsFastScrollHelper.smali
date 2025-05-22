.class public Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/allapps/AllAppsGridAdapter$BindViewCallback;


# instance fields
.field private a:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

.field private b:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

.field c:I

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field i:I

.field final j:[I

.field k:Ljava/lang/Runnable;

.field l:Ljava/lang/Runnable;

.field m:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/allapps/AllAppsRecyclerView;Lcom/zui/launcher/allapps/AlphabeticalAppsList;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->c:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->h:Ljava/util/HashSet;

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->j:[I

    new-instance v0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper$a;

    invoke-direct {v0, p0}, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper$a;-><init>(Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;)V

    iput-object v0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->k:Ljava/lang/Runnable;

    new-instance v0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper$b;

    invoke-direct {v0, p0}, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper$b;-><init>(Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;)V

    iput-object v0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->l:Ljava/lang/Runnable;

    new-instance v0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper$c;

    invoke-direct {v0, p0}, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper$c;-><init>(Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;)V

    iput-object v0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->m:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->a:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    iput-object p2, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->b:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;)Lcom/zui/launcher/allapps/AllAppsRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->a:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->f:Z

    return p1
.end method

.method static synthetic c(Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->g:Z

    return p1
.end method

.method static synthetic d(Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->g()V

    return-void
.end method

.method private e(IILcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;)V
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->a:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->a:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->f()V

    iget-boolean v0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->f:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->g()V

    goto :goto_1

    :cond_0
    iput-object v1, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->d:Ljava/lang/String;

    iget-object v0, p3, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->e:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->f:Z

    invoke-direct {p0}, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->g()V

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->a:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->l:Ljava/lang/Runnable;

    iget-boolean v3, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->g:Z

    if-eqz v3, :cond_1

    const-wide/16 v3, 0x64

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x14

    :goto_0
    invoke-virtual {v0, v1, v3, v4}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->b:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->getFastScrollerSections()Ljava/util/List;

    move-result-object v0

    iget-object v1, p3, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    iget v1, v1, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p3, :cond_2

    move p2, v2

    goto :goto_2

    :cond_2
    iget-object p3, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->a:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {p3, v1, v2}, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->getCurrentScrollY(II)I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_2
    iget-object p3, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->j:[I

    array-length p3, p3

    sub-int/2addr p2, p1

    int-to-float p1, p2

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    float-to-double v0, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, p3

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    mul-double/2addr v0, v3

    double-to-int v0, v0

    move v1, v2

    :goto_3
    if-ge v1, p3, :cond_3

    iget-object v3, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->j:[I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    aput v4, v3, v1

    sub-int/2addr p2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iput v2, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->i:I

    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->a:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->k:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->a:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->a:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->h:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private g()V
    .locals 8

    iget v0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->a:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->h:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->h:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    iget-object v4, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->d:Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    if-le v3, v1, :cond_2

    iget-object v4, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->b:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v4}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->b:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v4}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    if-eqz v4, :cond_2

    iget-object v6, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->d:Ljava/lang/String;

    iget-object v7, v4, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget v4, v4, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    iget v6, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->c:I

    if-ne v4, v6, :cond_2

    const/4 v4, 0x1

    move v5, v4

    :cond_2
    iget-object v4, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isActivated()Z

    move-result v4

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setActivated(Z)V

    if-eq v5, v4, :cond_1

    iget-object v2, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->b:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v2, v3}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->refreshRecyclerView(I)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private h(Lcom/zui/launcher/allapps/AllAppsGridAdapter$ViewHolder;)V
    .locals 4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->d:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->b:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->b:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->d:Ljava/lang/String;

    iget-object v3, v0, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    iget p0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->c:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    move v2, p0

    :cond_0
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method


# virtual methods
.method public onBindView(Lcom/zui/launcher/allapps/AllAppsGridAdapter$ViewHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->h:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->h(Lcom/zui/launcher/allapps/AllAppsGridAdapter$ViewHolder;)V

    :cond_1
    return-void
.end method

.method public onFastScrollCompleted()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->f:Z

    iput-boolean v0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->g:Z

    invoke-direct {p0}, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->g()V

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->a:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->m:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onFastScrollStarted()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->a:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->a:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->a:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->g()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->f:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->c:I

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->h:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public onSetAdapter(Lcom/zui/launcher/allapps/AllAppsGridAdapter;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->setBindViewCallback(Lcom/zui/launcher/allapps/AllAppsGridAdapter$BindViewCallback;)V

    return-void
.end method

.method public smoothScrollToSection(IILcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;)Z
    .locals 2

    iget v0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->c:I

    iget-object v1, p3, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    iget v1, v1, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->c:I

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->e(IILcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
