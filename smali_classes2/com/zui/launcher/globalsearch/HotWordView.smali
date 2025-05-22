.class public Lcom/zui/launcher/globalsearch/HotWordView;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field private a:Lcom/zui/launcher/globalsearch/HotWordAdapter;

.field private b:Landroidx/recyclerview/widget/RecyclerView;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/HotWordData;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/view/View;

.field private e:Landroid/content/Context;

.field private f:Landroid/widget/TextView;

.field private g:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/globalsearch/HotWordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/globalsearch/HotWordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/HotWordView;->c:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/HotWordView;->e:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/globalsearch/HotWordView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/globalsearch/HotWordView;->c()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/zui/launcher/globalsearch/HotWordView;)Lcom/zui/launcher/globalsearch/HotWordAdapter;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/HotWordView;->a:Lcom/zui/launcher/globalsearch/HotWordAdapter;

    return-object p0
.end method

.method private declared-synchronized c()Z
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/zui/launcher/globalsearch/HotWordView;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iput-wide v0, p0, Lcom/zui/launcher/globalsearch/HotWordView;->g:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getHotWordAdapter()Lcom/zui/launcher/globalsearch/HotWordAdapter;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/HotWordView;->a:Lcom/zui/launcher/globalsearch/HotWordAdapter;

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a01d1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordView;->f:Landroid/widget/TextView;

    const v0, 0x7f0a01ce

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordView;->b:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a01cd

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordView;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordView;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordView;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordView;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/zui/launcher/globalsearch/CusetomGridLayoutManager;

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/HotWordView;->e:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/zui/launcher/globalsearch/CusetomGridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/zui/launcher/globalsearch/HotWordAdapter;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zui/launcher/globalsearch/HotWordAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordView;->a:Lcom/zui/launcher/globalsearch/HotWordAdapter;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/HotWordView;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const v0, 0x7f0a01cf

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/zui/launcher/globalsearch/HotWordView$a;

    invoke-direct {v1, p0}, Lcom/zui/launcher/globalsearch/HotWordView$a;-><init>(Lcom/zui/launcher/globalsearch/HotWordView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/HotWordView;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/zui/launcher/globalsearch/HotWordView;->d:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/HotWordView;->d:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public recycerHotWordView()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/globalsearch/HotWordView;->a:Lcom/zui/launcher/globalsearch/HotWordAdapter;

    invoke-virtual {v1}, Lcom/zui/launcher/globalsearch/HotWordAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/HotWordView;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/globalsearch/HotWordAdapter$b;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/zui/launcher/globalsearch/HotWordAdapter$b;->a:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/globalsearch/HotWordView;->a:Lcom/zui/launcher/globalsearch/HotWordAdapter;

    invoke-virtual {p0}, Lcom/zui/launcher/globalsearch/HotWordAdapter;->recyclerHotWordAdapter()V

    return-void
.end method

.method public setHotData(ZLjava/util/List;Lcom/zui/launcher/GlobalSearchView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/HotWordData;",
            ">;",
            "Lcom/zui/launcher/GlobalSearchView;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordView;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p1, :cond_1

    const/16 v0, 0x10

    goto :goto_0

    :cond_1
    const/16 v0, 0xd

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/globalsearch/HotWordView;->f:Landroid/widget/TextView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/HotWordView;->a:Lcom/zui/launcher/globalsearch/HotWordAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/launcher/globalsearch/HotWordAdapter;->setHotData(ZLjava/util/List;Lcom/zui/launcher/GlobalSearchView;)V

    return-void
.end method
