.class public Lcom/zui/launcher/globalsearch/WebPageAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/globalsearch/WebPageAdapter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/zui/launcher/globalsearch/WebPageAdapter$b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/model/BrowserSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Lcom/zui/launcher/GlobalSearchView;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/WebPageAdapter;->a:Ljava/util/List;

    const/4 v0, 0x5

    iput v0, p0, Lcom/zui/launcher/globalsearch/WebPageAdapter;->b:I

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/WebPageAdapter;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/globalsearch/WebPageAdapter;)Lcom/zui/launcher/GlobalSearchView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/WebPageAdapter;->c:Lcom/zui/launcher/GlobalSearchView;

    return-object p0
.end method


# virtual methods
.method public addData()V
    .locals 2

    iget v0, p0, Lcom/zui/launcher/globalsearch/WebPageAdapter;->b:I

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/WebPageAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/WebPageAdapter;->a:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/zui/launcher/globalsearch/WebPageAdapter$b;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/globalsearch/WebPageAdapter;->onBindViewHolder(Lcom/zui/launcher/globalsearch/WebPageAdapter$b;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/zui/launcher/globalsearch/WebPageAdapter$b;I)V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/WebPageAdapter;->a:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    if-ltz p2, :cond_6

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/WebPageAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p2, v0, :cond_1

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/WebPageAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/model/BrowserSuggestion;

    iget-object v1, v0, Lcom/zui/launcher/model/BrowserSuggestion;->title:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v2, p1, Lcom/zui/launcher/globalsearch/WebPageAdapter$b;->b:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/zui/launcher/globalsearch/WebPageAdapter;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x4

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextDirection(I)V

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/WebPageAdapter;->c:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {v2, v1}, Lcom/zui/launcher/GlobalSearchView;->highLightText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/zui/launcher/globalsearch/WebPageAdapter$b;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v1, p1, Lcom/zui/launcher/globalsearch/WebPageAdapter$b;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    iget-object v1, p1, Lcom/zui/launcher/globalsearch/WebPageAdapter$b;->a:Landroid/view/View;

    new-instance v2, Lcom/zui/launcher/globalsearch/WebPageAdapter$a;

    invoke-direct {v2, p0, p1, p2}, Lcom/zui/launcher/globalsearch/WebPageAdapter$a;-><init>(Lcom/zui/launcher/globalsearch/WebPageAdapter;Lcom/zui/launcher/globalsearch/WebPageAdapter$b;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/WebPageAdapter;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ne p2, p0, :cond_5

    iget-object p0, p1, Lcom/zui/launcher/globalsearch/WebPageAdapter$b;->c:Landroid/view/View;

    const/16 p2, 0x8

    goto :goto_2

    :cond_5
    iget-object p0, p1, Lcom/zui/launcher/globalsearch/WebPageAdapter$b;->c:Landroid/view/View;

    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/globalsearch/WebPageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zui/launcher/globalsearch/WebPageAdapter$b;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zui/launcher/globalsearch/WebPageAdapter$b;
    .locals 1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0d0158

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/zui/launcher/globalsearch/WebPageAdapter$b;

    invoke-direct {p1, p0}, Lcom/zui/launcher/globalsearch/WebPageAdapter$b;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public recycleWebPageAdaoter()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/WebPageAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/WebPageAdapter;->c:Lcom/zui/launcher/GlobalSearchView;

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/WebPageAdapter;->d:Landroid/content/Context;

    return-void
.end method

.method public removeData()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/WebPageAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/zui/launcher/globalsearch/WebPageAdapter;->b:I

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public setData(Ljava/util/List;Lcom/zui/launcher/GlobalSearchView;)V
    .locals 0
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

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/WebPageAdapter;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/WebPageAdapter;->c:Lcom/zui/launcher/GlobalSearchView;

    return-void
.end method
