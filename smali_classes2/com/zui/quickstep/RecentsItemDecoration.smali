.class public Lcom/zui/quickstep/RecentsItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source ""


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1
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

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    const/4 v0, 0x0

    if-nez p4, :cond_0

    iget p4, p0, Lcom/zui/quickstep/RecentsItemDecoration;->b:I

    iput p4, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iput v0, p1, Landroid/graphics/Rect;->right:I

    :goto_0
    iget p4, p0, Lcom/zui/quickstep/RecentsItemDecoration;->a:I

    iput p4, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    rem-int/lit8 p2, p2, 0x2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    iget p2, p0, Lcom/zui/quickstep/RecentsItemDecoration;->c:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    iget p0, p0, Lcom/zui/quickstep/RecentsItemDecoration;->e:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_1
    iget p0, p0, Lcom/zui/quickstep/RecentsItemDecoration;->d:I

    iput p0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :goto_1
    return-void
.end method

.method public setSpace(IIIII)V
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/RecentsItemDecoration;->a:I

    iput p2, p0, Lcom/zui/quickstep/RecentsItemDecoration;->b:I

    iput p3, p0, Lcom/zui/quickstep/RecentsItemDecoration;->c:I

    iput p4, p0, Lcom/zui/quickstep/RecentsItemDecoration;->d:I

    iput p5, p0, Lcom/zui/quickstep/RecentsItemDecoration;->e:I

    return-void
.end method
