.class Lcom/zui/launcher/widget/picker/WidgetsListAdapter$a;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/widget/picker/WidgetsListAdapter;


# direct methods
.method constructor <init>(Lcom/zui/launcher/widget/picker/WidgetsListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter$a;->a:Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p3

    const p4, 0x7f0a03ab

    invoke-virtual {p2, p4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry$Header;

    iget p4, p1, Landroid/graphics/Rect;->top:I

    if-lez p3, :cond_0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsListAdapter$a;->a:Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

    invoke-static {p0}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->a(Lcom/zui/launcher/widget/picker/WidgetsListAdapter;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr p4, p0

    iput p4, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method
