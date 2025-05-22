.class Lcom/zui/launcher/HorizontalListView$d;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/HorizontalListView;


# direct methods
.method private constructor <init>(Lcom/zui/launcher/HorizontalListView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/HorizontalListView$d;->a:Lcom/zui/launcher/HorizontalListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/launcher/HorizontalListView;Lcom/zui/launcher/HorizontalListView$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/HorizontalListView$d;-><init>(Lcom/zui/launcher/HorizontalListView;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/HorizontalListView$d;->a:Lcom/zui/launcher/HorizontalListView;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/HorizontalListView;->onDown(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/HorizontalListView$d;->a:Lcom/zui/launcher/HorizontalListView;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/zui/launcher/HorizontalListView;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView$d;->a:Lcom/zui/launcher/HorizontalListView;

    invoke-static {v0}, Lcom/zui/launcher/HorizontalListView;->g(Lcom/zui/launcher/HorizontalListView;)V

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView$d;->a:Lcom/zui/launcher/HorizontalListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {v0, v1, p1}, Lcom/zui/launcher/HorizontalListView;->l(Lcom/zui/launcher/HorizontalListView;II)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView$d;->a:Lcom/zui/launcher/HorizontalListView;

    invoke-static {v0}, Lcom/zui/launcher/HorizontalListView;->b(Lcom/zui/launcher/HorizontalListView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView$d;->a:Lcom/zui/launcher/HorizontalListView;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView$d;->a:Lcom/zui/launcher/HorizontalListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView$d;->a:Lcom/zui/launcher/HorizontalListView;

    invoke-static {v0}, Lcom/zui/launcher/HorizontalListView;->c(Lcom/zui/launcher/HorizontalListView;)I

    move-result v0

    add-int v4, v0, p1

    iget-object v2, p0, Lcom/zui/launcher/HorizontalListView$d;->a:Lcom/zui/launcher/HorizontalListView;

    iget-object p1, v2, Lcom/zui/launcher/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p1, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/HorizontalListView$d;->a:Lcom/zui/launcher/HorizontalListView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->performHapticFeedback(I)Z

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/HorizontalListView$d;->a:Lcom/zui/launcher/HorizontalListView;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lcom/zui/launcher/HorizontalListView;->i(Lcom/zui/launcher/HorizontalListView;Ljava/lang/Boolean;)V

    iget-object p1, p0, Lcom/zui/launcher/HorizontalListView$d;->a:Lcom/zui/launcher/HorizontalListView;

    sget-object p2, Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_TOUCH_SCROLL:Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-static {p1, p2}, Lcom/zui/launcher/HorizontalListView;->j(Lcom/zui/launcher/HorizontalListView;Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    iget-object p1, p0, Lcom/zui/launcher/HorizontalListView$d;->a:Lcom/zui/launcher/HorizontalListView;

    invoke-static {p1}, Lcom/zui/launcher/HorizontalListView;->g(Lcom/zui/launcher/HorizontalListView;)V

    iget-object p1, p0, Lcom/zui/launcher/HorizontalListView$d;->a:Lcom/zui/launcher/HorizontalListView;

    iget p2, p1, Lcom/zui/launcher/HorizontalListView;->mNextX:I

    float-to-int p4, p3

    add-int/2addr p2, p4

    iput p2, p1, Lcom/zui/launcher/HorizontalListView;->mNextX:I

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p1, p2}, Lcom/zui/launcher/HorizontalListView;->k(Lcom/zui/launcher/HorizontalListView;I)V

    iget-object p0, p0, Lcom/zui/launcher/HorizontalListView$d;->a:Lcom/zui/launcher/HorizontalListView;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->requestLayout()V

    const/4 p0, 0x1

    return p0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView$d;->a:Lcom/zui/launcher/HorizontalListView;

    invoke-static {v0}, Lcom/zui/launcher/HorizontalListView;->g(Lcom/zui/launcher/HorizontalListView;)V

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView$d;->a:Lcom/zui/launcher/HorizontalListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView$d;->a:Lcom/zui/launcher/HorizontalListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {v0, v2, p1}, Lcom/zui/launcher/HorizontalListView;->l(Lcom/zui/launcher/HorizontalListView;II)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView$d;->a:Lcom/zui/launcher/HorizontalListView;

    invoke-static {v0}, Lcom/zui/launcher/HorizontalListView;->b(Lcom/zui/launcher/HorizontalListView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView$d;->a:Lcom/zui/launcher/HorizontalListView;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView$d;->a:Lcom/zui/launcher/HorizontalListView;

    invoke-static {v0}, Lcom/zui/launcher/HorizontalListView;->c(Lcom/zui/launcher/HorizontalListView;)I

    move-result v0

    add-int v4, v0, p1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/zui/launcher/HorizontalListView$d;->a:Lcom/zui/launcher/HorizontalListView;

    iget-object p0, v2, Lcom/zui/launcher/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p0, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/HorizontalListView$d;->a:Lcom/zui/launcher/HorizontalListView;

    invoke-static {p1}, Lcom/zui/launcher/HorizontalListView;->d(Lcom/zui/launcher/HorizontalListView;)Landroid/view/View$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/HorizontalListView$d;->a:Lcom/zui/launcher/HorizontalListView;

    invoke-static {p1}, Lcom/zui/launcher/HorizontalListView;->b(Lcom/zui/launcher/HorizontalListView;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/HorizontalListView$d;->a:Lcom/zui/launcher/HorizontalListView;

    invoke-static {p1}, Lcom/zui/launcher/HorizontalListView;->d(Lcom/zui/launcher/HorizontalListView;)Landroid/view/View$OnClickListener;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/HorizontalListView$d;->a:Lcom/zui/launcher/HorizontalListView;

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
