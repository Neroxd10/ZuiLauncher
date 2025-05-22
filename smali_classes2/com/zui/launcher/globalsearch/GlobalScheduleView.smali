.class public Lcom/zui/launcher/globalsearch/GlobalScheduleView;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;
    }
.end annotation


# instance fields
.field private a:Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;

.field private b:Z

.field private c:Landroid/widget/ImageView;

.field private d:Landroidx/recyclerview/widget/RecyclerView;

.field private e:Landroid/content/Context;

.field private f:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/globalsearch/GlobalScheduleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/globalsearch/GlobalScheduleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->b:Z

    new-instance p2, Lcom/zui/launcher/globalsearch/GlobalScheduleView$a;

    invoke-direct {p2, p0}, Lcom/zui/launcher/globalsearch/GlobalScheduleView$a;-><init>(Lcom/zui/launcher/globalsearch/GlobalScheduleView;)V

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->e:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/globalsearch/GlobalScheduleView;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->d:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/globalsearch/GlobalScheduleView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->b:Z

    return p0
.end method

.method static synthetic c(Lcom/zui/launcher/globalsearch/GlobalScheduleView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->b:Z

    return p1
.end method

.method static synthetic d(Lcom/zui/launcher/globalsearch/GlobalScheduleView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->c:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic e(Lcom/zui/launcher/globalsearch/GlobalScheduleView;)Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->a:Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;

    return-object p0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0306

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->d:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/zui/launcher/globalsearch/CustomLinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zui/launcher/globalsearch/CustomLinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setSmoothScrollbarEnabled(Z)V

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    new-instance v1, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->a:Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;

    new-instance v1, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;

    invoke-direct {v1}, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;-><init>()V

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->a:Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const v0, 0x7f0a0305

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->c:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public recyclerScheduleView()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->a:Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->a:Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;

    invoke-virtual {v1}, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter$b;

    if-eqz v1, :cond_1

    iput-object v2, v1, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter$b;->d:Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter$b;->a:Landroid/widget/TextView;

    iput-object v2, v1, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter$b;->b:Landroid/widget/TextView;

    iput-object v2, v1, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter$b;->c:Landroid/view/View;

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->a:Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->recyclerAdapter()V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->a:Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iput-object v2, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->a:Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v2, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->c:Landroid/widget/ImageView;

    :cond_3
    return-void
.end method

.method public setScheduleData(Ljava/util/List;Ljava/util/List;ILcom/zui/launcher/GlobalSearchView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/model/CalendarEventInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/zui/launcher/model/CalendarEventInfo;",
            ">;I",
            "Lcom/zui/launcher/GlobalSearchView;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->c:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const v0, 0x7f0a0305

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->c:Landroid/widget/ImageView;

    const v1, 0x7f0804ef

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->a:Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;

    if-nez v0, :cond_2

    new-instance v0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->a:Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->a:Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->setData(Ljava/util/List;Ljava/util/List;ILcom/zui/launcher/GlobalSearchView;)V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->a:Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
