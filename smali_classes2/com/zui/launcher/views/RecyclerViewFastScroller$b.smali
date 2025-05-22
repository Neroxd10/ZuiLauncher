.class Lcom/zui/launcher/views/RecyclerViewFastScroller$b;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/views/RecyclerViewFastScroller;->setRecyclerView(Lcom/zui/launcher/BaseRecyclerView;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/views/RecyclerViewFastScroller;


# direct methods
.method constructor <init>(Lcom/zui/launcher/views/RecyclerViewFastScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller$b;->a:Lcom/zui/launcher/views/RecyclerViewFastScroller;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller$b;->a:Lcom/zui/launcher/views/RecyclerViewFastScroller;

    invoke-static {p1, p3}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->c(Lcom/zui/launcher/views/RecyclerViewFastScroller;I)I

    iget-object p0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller$b;->a:Lcom/zui/launcher/views/RecyclerViewFastScroller;

    iget-object p0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mRv:Lcom/zui/launcher/BaseRecyclerView;

    invoke-virtual {p0, p3}, Lcom/zui/launcher/BaseRecyclerView;->onUpdateScrollbar(I)V

    return-void
.end method
