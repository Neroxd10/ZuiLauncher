.class public Lcom/zui/launcher/globalsearch/GlobalWebPageView;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field private a:Lcom/zui/launcher/globalsearch/WebPageAdapter;

.field private b:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/globalsearch/GlobalWebPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/globalsearch/GlobalWebPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0424

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalWebPageView;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/zui/launcher/globalsearch/CustomLinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zui/launcher/globalsearch/CustomLinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setSmoothScrollbarEnabled(Z)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setAutoMeasureEnabled(Z)V

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/GlobalWebPageView;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalWebPageView;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/zui/launcher/globalsearch/WebPageAdapter;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zui/launcher/globalsearch/WebPageAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalWebPageView;->a:Lcom/zui/launcher/globalsearch/WebPageAdapter;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalWebPageView;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v0, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;

    invoke-direct {v0}, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;-><init>()V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalWebPageView;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method public recycleWebPageView()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalWebPageView;->a:Lcom/zui/launcher/globalsearch/WebPageAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalWebPageView;->a:Lcom/zui/launcher/globalsearch/WebPageAdapter;

    invoke-virtual {v1}, Lcom/zui/launcher/globalsearch/WebPageAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalWebPageView;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/globalsearch/WebPageAdapter$b;

    if-eqz v1, :cond_1

    iput-object v2, v1, Lcom/zui/launcher/globalsearch/WebPageAdapter$b;->b:Landroid/widget/TextView;

    iput-object v2, v1, Lcom/zui/launcher/globalsearch/WebPageAdapter$b;->c:Landroid/view/View;

    iget-object v3, v1, Lcom/zui/launcher/globalsearch/WebPageAdapter$b;->a:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v2, v1, Lcom/zui/launcher/globalsearch/WebPageAdapter$b;->a:Landroid/view/View;

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/GlobalWebPageView;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalWebPageView;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalWebPageView;->a:Lcom/zui/launcher/globalsearch/WebPageAdapter;

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/WebPageAdapter;->recycleWebPageAdaoter()V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalWebPageView;->a:Lcom/zui/launcher/globalsearch/WebPageAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iput-object v2, p0, Lcom/zui/launcher/globalsearch/GlobalWebPageView;->a:Lcom/zui/launcher/globalsearch/WebPageAdapter;

    return-void
.end method

.method public setWebPage(Ljava/util/List;Lcom/zui/launcher/GlobalSearchView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/model/BrowserSuggestion;",
            ">;",
            "Lcom/zui/launcher/GlobalSearchView;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalWebPageView;->a:Lcom/zui/launcher/globalsearch/WebPageAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/globalsearch/WebPageAdapter;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zui/launcher/globalsearch/WebPageAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalWebPageView;->a:Lcom/zui/launcher/globalsearch/WebPageAdapter;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalWebPageView;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalWebPageView;->a:Lcom/zui/launcher/globalsearch/WebPageAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/zui/launcher/globalsearch/WebPageAdapter;->setData(Ljava/util/List;Lcom/zui/launcher/GlobalSearchView;)V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalWebPageView;->a:Lcom/zui/launcher/globalsearch/WebPageAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
