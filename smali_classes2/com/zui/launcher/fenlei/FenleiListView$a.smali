.class Lcom/zui/launcher/fenlei/FenleiListView$a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/fenlei/FenleiListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/zui/launcher/fenlei/FenleiListView$c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Lcom/zui/launcher/Launcher;

.field final synthetic c:Lcom/zui/launcher/fenlei/FenleiListView;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/fenlei/FenleiListView;Lcom/zui/launcher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/fenlei/FenleiListView$a;->c:Lcom/zui/launcher/fenlei/FenleiListView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/fenlei/FenleiListView$a;->b:Lcom/zui/launcher/Launcher;

    const-string p1, "layout_inflater"

    invoke-virtual {p2, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/zui/launcher/fenlei/FenleiListView$a;->a:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/zui/launcher/fenlei/FenleiListView$c;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p2

    iget-object p0, p0, Lcom/zui/launcher/fenlei/FenleiListView$a;->c:Lcom/zui/launcher/fenlei/FenleiListView;

    invoke-static {p0}, Lcom/zui/launcher/fenlei/FenleiListView;->c(Lcom/zui/launcher/fenlei/FenleiListView;)Lcom/zui/launcher/fenlei/FenleiListView$OnItemClickListener;

    move-result-object p0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p0, p1, p2}, Lcom/zui/launcher/fenlei/FenleiListView$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    return-void
.end method

.method public b(Lcom/zui/launcher/fenlei/FenleiListView$c;I)V
    .locals 3
    .param p1    # Lcom/zui/launcher/fenlei/FenleiListView$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/zui/launcher/fenlei/FenleiListView$a;->c:Lcom/zui/launcher/fenlei/FenleiListView;

    invoke-static {v0}, Lcom/zui/launcher/fenlei/FenleiListView;->a(Lcom/zui/launcher/fenlei/FenleiListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/launcher/fenlei/FenleiListView$b;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/zui/launcher/fenlei/FenleiListItem;

    iget-object v1, p0, Lcom/zui/launcher/fenlei/FenleiListView$a;->b:Lcom/zui/launcher/Launcher;

    iget-object v2, p0, Lcom/zui/launcher/fenlei/FenleiListView$a;->c:Lcom/zui/launcher/fenlei/FenleiListView;

    invoke-static {v2}, Lcom/zui/launcher/fenlei/FenleiListView;->b(Lcom/zui/launcher/fenlei/FenleiListView;)Lcom/zui/launcher/icons/IconCache;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/zui/launcher/fenlei/FenleiListItem;->applyFromShortcutInfo(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/fenlei/FenleiListView$b;Lcom/zui/launcher/icons/IconCache;)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/zui/launcher/fenlei/FenleiListView$a;->c:Lcom/zui/launcher/fenlei/FenleiListView;

    invoke-static {p2}, Lcom/zui/launcher/fenlei/FenleiListView;->c(Lcom/zui/launcher/fenlei/FenleiListView;)Lcom/zui/launcher/fenlei/FenleiListView$OnItemClickListener;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/zui/launcher/fenlei/a;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/fenlei/a;-><init>(Lcom/zui/launcher/fenlei/FenleiListView$a;Lcom/zui/launcher/fenlei/FenleiListView$c;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/ViewGroup;I)Lcom/zui/launcher/fenlei/FenleiListView$c;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p2, Lcom/zui/launcher/fenlei/FenleiListView$c;

    iget-object v0, p0, Lcom/zui/launcher/fenlei/FenleiListView$a;->c:Lcom/zui/launcher/fenlei/FenleiListView;

    iget-object p0, p0, Lcom/zui/launcher/fenlei/FenleiListView$a;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f0d00b1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, v0, p0}, Lcom/zui/launcher/fenlei/FenleiListView$c;-><init>(Lcom/zui/launcher/fenlei/FenleiListView;Landroid/view/View;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/fenlei/FenleiListView$a;->c:Lcom/zui/launcher/fenlei/FenleiListView;

    invoke-static {p0}, Lcom/zui/launcher/fenlei/FenleiListView;->a(Lcom/zui/launcher/fenlei/FenleiListView;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/zui/launcher/fenlei/FenleiListView$c;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/fenlei/FenleiListView$a;->b(Lcom/zui/launcher/fenlei/FenleiListView$c;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/fenlei/FenleiListView$a;->c(Landroid/view/ViewGroup;I)Lcom/zui/launcher/fenlei/FenleiListView$c;

    move-result-object p0

    return-object p0
.end method
