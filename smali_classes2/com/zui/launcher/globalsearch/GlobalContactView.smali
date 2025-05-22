.class public Lcom/zui/launcher/globalsearch/GlobalContactView;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Z

.field private c:Landroidx/recyclerview/widget/RecyclerView;

.field private d:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/globalsearch/GlobalContactView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/globalsearch/GlobalContactView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->b:Z

    new-instance p2, Lcom/zui/launcher/globalsearch/GlobalContactView$a;

    invoke-direct {p2, p0}, Lcom/zui/launcher/globalsearch/GlobalContactView$a;-><init>(Lcom/zui/launcher/globalsearch/GlobalContactView;)V

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/globalsearch/GlobalContactView;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->c:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/globalsearch/GlobalContactView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->b:Z

    return p0
.end method

.method static synthetic c(Lcom/zui/launcher/globalsearch/GlobalContactView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->b:Z

    return p1
.end method

.method static synthetic d(Lcom/zui/launcher/globalsearch/GlobalContactView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->e:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic e(Lcom/zui/launcher/globalsearch/GlobalContactView;)Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->d:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;

    return-object p0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a032d

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/zui/launcher/globalsearch/CustomLinearLayout;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zui/launcher/globalsearch/CustomLinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setAutoMeasureEnabled(Z)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setSmoothScrollbarEnabled(Z)V

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;

    invoke-direct {v1}, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance v0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->d:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const v0, 0x7f0a010f

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->e:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public recyclerContactAdapter()V
    .locals 8

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->d:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->d:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;

    invoke-virtual {v2}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->getItemCount()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_7

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->d:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;

    invoke-virtual {v2, v1}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->getItemViewType(I)I

    move-result v2

    iget-object v4, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;

    if-nez v4, :cond_1

    goto/16 :goto_2

    :cond_1
    const/16 v5, 0x6e

    if-ne v2, v5, :cond_2

    iget-object v2, v4, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v3, v4, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->h:Landroid/widget/ImageView;

    iget-object v2, v4, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->i:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v3, v4, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->i:Landroid/widget/ImageView;

    iget-object v2, v4, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v4, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iput-object v3, v4, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->a:Landroid/widget/ImageView;

    iput-object v3, v4, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->c:Landroid/widget/TextView;

    iput-object v3, v4, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->d:Landroid/widget/TextView;

    iput-object v3, v4, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->f:Landroid/widget/TextView;

    iput-object v3, v4, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->j:Landroid/view/View;

    iput-object v3, v4, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->l:Landroid/widget/RelativeLayout;

    goto :goto_2

    :cond_2
    const/16 v5, 0x6f

    if-ne v2, v5, :cond_6

    iget-object v2, v4, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;

    iput-object v3, v4, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->b:Landroid/widget/ImageView;

    iput-object v3, v4, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->e:Landroid/widget/TextView;

    iput-object v3, v4, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->k:Landroid/view/View;

    if-eqz v2, :cond_5

    move v5, v0

    :goto_1
    invoke-virtual {v2}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;->getItemCount()I

    move-result v6

    if-ge v5, v6, :cond_4

    iget-object v6, v4, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    check-cast v6, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$d;

    if-eqz v6, :cond_3

    iput-object v3, v6, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$d;->a:Landroid/widget/TextView;

    iput-object v3, v6, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$d;->b:Landroid/widget/TextView;

    iget-object v7, v6, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$d;->d:Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v3, v6, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$d;->d:Landroid/widget/ImageView;

    iget-object v7, v6, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$d;->c:Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v3, v6, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$d;->c:Landroid/widget/ImageView;

    iget-object v7, v6, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$d;->e:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v3, v6, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$d;->e:Landroid/view/View;

    iget-object v7, v4, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->g:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    iget-object v5, v4, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v2}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;->d()V

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_5
    iget-object v2, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->d:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->recyclerContactAdapter()V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->d:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iput-object v3, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->d:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v3, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->e:Landroid/widget/ImageView;

    :cond_8
    return-void
.end method

.method public setContactData(Ljava/util/List;Ljava/util/List;Lcom/zui/launcher/GlobalSearchView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/model/ContactInfoNew;",
            ">;",
            "Ljava/util/List<",
            "Lcom/zui/launcher/model/ContactInfoNew;",
            ">;",
            "Lcom/zui/launcher/GlobalSearchView;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->e:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const v0, 0x7f0a010f

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->e:Landroid/widget/ImageView;

    const v1, 0x7f0804ef

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->d:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;

    if-nez v0, :cond_2

    new-instance v0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->d:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->d:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->setContactData(Ljava/util/List;Ljava/util/List;Lcom/zui/launcher/GlobalSearchView;)V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalContactView;->d:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
