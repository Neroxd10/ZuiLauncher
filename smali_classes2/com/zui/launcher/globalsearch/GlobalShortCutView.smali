.class public Lcom/zui/launcher/globalsearch/GlobalShortCutView;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;
    }
.end annotation


# instance fields
.field private a:Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;

.field private b:Z

.field private c:Landroid/widget/ImageView;

.field private d:Landroidx/recyclerview/widget/RecyclerView;

.field private e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/globalsearch/GlobalShortCutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/globalsearch/GlobalShortCutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->b:Z

    new-instance p1, Lcom/zui/launcher/globalsearch/GlobalShortCutView$a;

    invoke-direct {p1, p0}, Lcom/zui/launcher/globalsearch/GlobalShortCutView$a;-><init>(Lcom/zui/launcher/globalsearch/GlobalShortCutView;)V

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->e:Landroid/view/View$OnClickListener;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/globalsearch/GlobalShortCutView;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->d:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/globalsearch/GlobalShortCutView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->b:Z

    return p0
.end method

.method static synthetic c(Lcom/zui/launcher/globalsearch/GlobalShortCutView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->b:Z

    return p1
.end method

.method static synthetic d(Lcom/zui/launcher/globalsearch/GlobalShortCutView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->c:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic e(Lcom/zui/launcher/globalsearch/GlobalShortCutView;)Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->a:Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;

    return-object p0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a008c

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->d:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/zui/launcher/globalsearch/CustomLinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zui/launcher/globalsearch/CustomLinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setSmoothScrollbarEnabled(Z)V

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->d:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;

    invoke-direct {v1}, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance v0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->a:Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const v0, 0x7f0a035b

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->c:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public recyclerShortCut()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recyclerShortCut  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->a:Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yyy"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->a:Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;

    if-nez v0, :cond_1

    return-void

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->a:Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter$a;

    if-eqz v0, :cond_2

    iput-object v1, v0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter$a;->a:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter$a;->c:Landroid/view/View;

    iput-object v1, v0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter$a;->b:Landroid/widget/TextView;

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->a:Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;->recyclerShortCutAdapter()V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->a:Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iput-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->a:Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->c:Landroid/widget/ImageView;

    :cond_4
    return-void
.end method

.method public setShortCutDate(Ljava/util/List;Ljava/util/List;Lcom/zui/launcher/GlobalSearchView;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;",
            "Lcom/zui/launcher/GlobalSearchView;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShortCutDate  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->a:Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shortcutExpand -->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->c:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yyy"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->c:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    const v0, 0x7f0a035b

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->b:Z

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->c:Landroid/widget/ImageView;

    const v1, 0x7f0804ef

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->a:Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;

    if-nez v0, :cond_4

    new-instance v0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->a:Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_4
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->a:Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;->setData(Ljava/util/List;Ljava/util/List;Lcom/zui/launcher/GlobalSearchView;)V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->a:Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
