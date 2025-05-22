.class public final Lcom/zui/launcher/widget/picker/WidgetsRecommendListTableViewHolderBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/recyclerview/ViewHolderBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/launcher/recyclerview/ViewHolderBinder<",
        "Lcom/zui/launcher/widget/model/WidgetsListRecommendContentEntry;",
        "Lcom/zui/launcher/widget/picker/WidgetsCommonViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private final b:Landroid/view/View$OnClickListener;

.field private final c:Landroid/view/View$OnLongClickListener;

.field private final d:Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;Lcom/zui/launcher/widget/picker/b0;Lcom/zui/launcher/widget/picker/WidgetsListAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p5, 0x0

    iput-boolean p5, p0, Lcom/zui/launcher/widget/picker/WidgetsRecommendListTableViewHolderBinder;->e:Z

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsRecommendListTableViewHolderBinder;->a:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/zui/launcher/widget/picker/WidgetsRecommendListTableViewHolderBinder;->b:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Lcom/zui/launcher/widget/picker/WidgetsRecommendListTableViewHolderBinder;->c:Landroid/view/View$OnLongClickListener;

    iput-object p4, p0, Lcom/zui/launcher/widget/picker/WidgetsRecommendListTableViewHolderBinder;->d:Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;

    return-void
.end method


# virtual methods
.method public bridge synthetic bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lcom/zui/launcher/widget/picker/WidgetsCommonViewHolder;

    check-cast p2, Lcom/zui/launcher/widget/model/WidgetsListRecommendContentEntry;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/launcher/widget/picker/WidgetsRecommendListTableViewHolderBinder;->bindViewHolder(Lcom/zui/launcher/widget/picker/WidgetsCommonViewHolder;Lcom/zui/launcher/widget/model/WidgetsListRecommendContentEntry;I)V

    return-void
.end method

.method public bindViewHolder(Lcom/zui/launcher/widget/picker/WidgetsCommonViewHolder;Lcom/zui/launcher/widget/model/WidgetsListRecommendContentEntry;I)V
    .locals 9

    iget-object p3, p1, Lcom/zui/launcher/widget/picker/WidgetsCommonViewHolder;->mAppName:Landroid/widget/TextView;

    const v0, 0x7f120732

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p1, Lcom/zui/launcher/widget/picker/WidgetsCommonViewHolder;->mRecycler:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    new-instance v0, Lcom/zui/launcher/widget/picker/common/CommonAdapter;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p2, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;->mWidgets:Ljava/util/List;

    iget-boolean v5, p0, Lcom/zui/launcher/widget/picker/WidgetsRecommendListTableViewHolderBinder;->e:Z

    iget-object v6, p0, Lcom/zui/launcher/widget/picker/WidgetsRecommendListTableViewHolderBinder;->d:Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;

    iget-object v7, p0, Lcom/zui/launcher/widget/picker/WidgetsRecommendListTableViewHolderBinder;->b:Landroid/view/View$OnClickListener;

    iget-object v8, p0, Lcom/zui/launcher/widget/picker/WidgetsRecommendListTableViewHolderBinder;->c:Landroid/view/View$OnLongClickListener;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/zui/launcher/widget/picker/common/CommonAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ZLcom/zui/launcher/widget/CachingWidgetPreviewLoader;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Lcom/zui/launcher/widget/picker/WidgetsRecommendListTableViewHolderBinder$a;

    invoke-direct {p2, p0, p1}, Lcom/zui/launcher/widget/picker/WidgetsRecommendListTableViewHolderBinder$a;-><init>(Lcom/zui/launcher/widget/picker/WidgetsRecommendListTableViewHolderBinder;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_0
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public bridge synthetic newViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/widget/picker/WidgetsRecommendListTableViewHolderBinder;->newViewHolder(Landroid/view/ViewGroup;)Lcom/zui/launcher/widget/picker/WidgetsCommonViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public newViewHolder(Landroid/view/ViewGroup;)Lcom/zui/launcher/widget/picker/WidgetsCommonViewHolder;
    .locals 3

    const-string v0, "WidgetsListRowViewHolderBinder"

    const-string v1, "\nonCreateViewHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/zui/launcher/widget/picker/WidgetsCommonViewHolder;

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsRecommendListTableViewHolderBinder;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f0d019b

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/zui/launcher/widget/picker/WidgetsCommonViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public setApplyBitmapDeferred(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/widget/picker/WidgetsRecommendListTableViewHolderBinder;->e:Z

    return-void
.end method

.method public bridge synthetic unbindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/zui/launcher/widget/picker/WidgetsCommonViewHolder;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/widget/picker/WidgetsRecommendListTableViewHolderBinder;->unbindViewHolder(Lcom/zui/launcher/widget/picker/WidgetsCommonViewHolder;)V

    return-void
.end method

.method public unbindViewHolder(Lcom/zui/launcher/widget/picker/WidgetsCommonViewHolder;)V
    .locals 0

    iget-object p0, p1, Lcom/zui/launcher/widget/picker/WidgetsCommonViewHolder;->mRecycler:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
