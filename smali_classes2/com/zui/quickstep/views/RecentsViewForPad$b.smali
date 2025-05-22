.class Lcom/zui/quickstep/views/RecentsViewForPad$b;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/views/RecentsViewForPad;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/views/RecentsViewForPad;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/views/RecentsViewForPad;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad$b;->a:Lcom/zui/quickstep/views/RecentsViewForPad;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad$b;->a:Lcom/zui/quickstep/views/RecentsViewForPad;

    invoke-static {p1}, Lcom/zui/quickstep/views/RecentsViewForPad;->a(Lcom/zui/quickstep/views/RecentsViewForPad;)Lcom/zui/quickstep/views/RecentsRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    instance-of p2, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz p2, :cond_2

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad$b;->a:Lcom/zui/quickstep/views/RecentsViewForPad;

    invoke-static {v0}, Lcom/zui/quickstep/views/RecentsViewForPad;->b(Lcom/zui/quickstep/views/RecentsViewForPad;)I

    move-result v0

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad$b;->a:Lcom/zui/quickstep/views/RecentsViewForPad;

    invoke-static {v0}, Lcom/zui/quickstep/views/RecentsViewForPad;->d(Lcom/zui/quickstep/views/RecentsViewForPad;)I

    move-result v0

    if-eq p1, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad$b;->a:Lcom/zui/quickstep/views/RecentsViewForPad;

    invoke-static {v0, p2}, Lcom/zui/quickstep/views/RecentsViewForPad;->c(Lcom/zui/quickstep/views/RecentsViewForPad;I)I

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad$b;->a:Lcom/zui/quickstep/views/RecentsViewForPad;

    invoke-static {p0, p1}, Lcom/zui/quickstep/views/RecentsViewForPad;->e(Lcom/zui/quickstep/views/RecentsViewForPad;I)I

    :cond_2
    return-void
.end method
