.class public Lcom/zui/launcher/HorizontalListView;
.super Landroid/widget/AdapterView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/HorizontalListView$e;,
        Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener;,
        Lcom/zui/launcher/HorizontalListView$RunningOutOfDataListener;,
        Lcom/zui/launcher/HorizontalListView$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private A:I

.field private final a:Lcom/zui/launcher/HorizontalListView$d;

.field private b:Landroid/view/GestureDetector;

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Queue<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Landroid/graphics/Rect;

.field private g:Landroid/view/View;

.field private h:I

.field private i:I

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Ljava/lang/Integer;

.field private l:I

.field private m:I

.field protected mAdapter:Landroid/widget/ListAdapter;

.field protected mCurrentX:I

.field protected mEndOffset:I

.field protected mFlingTracker:Landroid/widget/Scroller;

.field protected mNextX:I

.field protected mStartOffset:I

.field private n:I

.field private o:I

.field private p:Lcom/zui/launcher/HorizontalListView$RunningOutOfDataListener;

.field private q:I

.field private r:Z

.field private s:Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener;

.field private t:Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Landroid/view/View$OnClickListener;

.field private y:Landroid/database/DataSetObserver;

.field private z:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/launcher/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    new-instance v0, Lcom/zui/launcher/HorizontalListView$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zui/launcher/HorizontalListView$d;-><init>(Lcom/zui/launcher/HorizontalListView;Lcom/zui/launcher/HorizontalListView$a;)V

    iput-object v0, p0, Lcom/zui/launcher/HorizontalListView;->a:Lcom/zui/launcher/HorizontalListView$d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/HorizontalListView;->d:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/HorizontalListView;->e:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/zui/launcher/HorizontalListView;->f:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/zui/launcher/HorizontalListView;->g:Landroid/view/View;

    iput v0, p0, Lcom/zui/launcher/HorizontalListView;->h:I

    iput v0, p0, Lcom/zui/launcher/HorizontalListView;->i:I

    iput-object v1, p0, Lcom/zui/launcher/HorizontalListView;->j:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/zui/launcher/HorizontalListView;->k:Ljava/lang/Integer;

    const v2, 0x7fffffff

    iput v2, p0, Lcom/zui/launcher/HorizontalListView;->l:I

    iput-object v1, p0, Lcom/zui/launcher/HorizontalListView;->p:Lcom/zui/launcher/HorizontalListView$RunningOutOfDataListener;

    iput v0, p0, Lcom/zui/launcher/HorizontalListView;->q:I

    iput-boolean v0, p0, Lcom/zui/launcher/HorizontalListView;->r:Z

    iput-object v1, p0, Lcom/zui/launcher/HorizontalListView;->s:Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener;

    sget-object v1, Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    iput-object v1, p0, Lcom/zui/launcher/HorizontalListView;->t:Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    iput-boolean v0, p0, Lcom/zui/launcher/HorizontalListView;->v:Z

    iput-boolean v0, p0, Lcom/zui/launcher/HorizontalListView;->w:Z

    new-instance v1, Lcom/zui/launcher/HorizontalListView$b;

    invoke-direct {v1, p0}, Lcom/zui/launcher/HorizontalListView$b;-><init>(Lcom/zui/launcher/HorizontalListView;)V

    iput-object v1, p0, Lcom/zui/launcher/HorizontalListView;->y:Landroid/database/DataSetObserver;

    new-instance v1, Lcom/zui/launcher/HorizontalListView$c;

    invoke-direct {v1, p0}, Lcom/zui/launcher/HorizontalListView$c;-><init>(Lcom/zui/launcher/HorizontalListView;)V

    iput-object v1, p0, Lcom/zui/launcher/HorizontalListView;->z:Ljava/lang/Runnable;

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/zui/launcher/HorizontalListView;->a:Lcom/zui/launcher/HorizontalListView$d;

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/zui/launcher/HorizontalListView;->b:Landroid/view/GestureDetector;

    invoke-direct {p0}, Lcom/zui/launcher/HorizontalListView;->n()V

    invoke-direct {p0}, Lcom/zui/launcher/HorizontalListView;->z()V

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/HorizontalListView;->M(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setWillNotDraw(Z)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0xb

    if-lt p1, p2, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    const p1, 0x3c1374bc    # 0.009f

    invoke-static {p0, p1}, Lcom/zui/launcher/HorizontalListView$e;->a(Landroid/widget/Scroller;F)V

    :cond_0
    return-void
.end method

.method private A(I)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/HorizontalListView;->d:Ljava/util/List;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private B(I)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/HorizontalListView;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private C(I)Z
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private D(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/zui/launcher/HorizontalListView;->x(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/zui/launcher/HorizontalListView;->u:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingBottom()I

    move-result p0

    add-int/2addr v2, p0

    iget p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v2, p0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v0, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0, p0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private E()V
    .locals 6

    iget v0, p0, Lcom/zui/launcher/HorizontalListView;->A:I

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/zui/launcher/HorizontalListView;->u:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v1

    if-gtz v1, :cond_1

    return-void

    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, v4}, Lcom/zui/launcher/HorizontalListView;->D(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private F(F)F
    .locals 1

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method private G(I)V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Lcom/zui/launcher/HorizontalListView;->c:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/zui/launcher/HorizontalListView;->c:I

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/zui/launcher/HorizontalListView;->h:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private H(ILandroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/HorizontalListView;->B(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/HorizontalListView;->d:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Queue;

    invoke-interface {p0, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private I()V
    .locals 0

    return-void
.end method

.method private J(I)V
    .locals 4

    :goto_0
    invoke-virtual {p0}, Lcom/zui/launcher/HorizontalListView;->getLeftmostChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, p1

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/zui/launcher/HorizontalListView;->c:I

    iget v2, p0, Lcom/zui/launcher/HorizontalListView;->m:I

    invoke-direct {p0, v2}, Lcom/zui/launcher/HorizontalListView;->C(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    goto :goto_1

    :cond_0
    iget v2, p0, Lcom/zui/launcher/HorizontalListView;->h:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    :goto_1
    add-int/2addr v1, v2

    iput v1, p0, Lcom/zui/launcher/HorizontalListView;->c:I

    iget v1, p0, Lcom/zui/launcher/HorizontalListView;->m:I

    invoke-direct {p0, v1, v0}, Lcom/zui/launcher/HorizontalListView;->H(ILandroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->removeViewInLayout(Landroid/view/View;)V

    iget v0, p0, Lcom/zui/launcher/HorizontalListView;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zui/launcher/HorizontalListView;->m:I

    goto :goto_0

    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/zui/launcher/HorizontalListView;->getRightmostChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getWidth()I

    move-result v2

    if-lt v1, v2, :cond_2

    iget v1, p0, Lcom/zui/launcher/HorizontalListView;->n:I

    invoke-direct {p0, v1, v0}, Lcom/zui/launcher/HorizontalListView;->H(ILandroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->removeViewInLayout(Landroid/view/View;)V

    iget v0, p0, Lcom/zui/launcher/HorizontalListView;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/zui/launcher/HorizontalListView;->n:I

    goto :goto_2

    :cond_2
    return-void
.end method

.method private K(Ljava/lang/Boolean;)V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/launcher/HorizontalListView;->w:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_2

    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ListView;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/launcher/HorizontalListView;->w:Z

    :cond_2
    return-void
.end method

.method private L()V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/HorizontalListView;->z()V

    invoke-virtual {p0}, Landroid/widget/AdapterView;->removeAllViewsInLayout()V

    invoke-virtual {p0}, Landroid/widget/AdapterView;->requestLayout()V

    return-void
.end method

.method private M(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    if-eqz p2, :cond_2

    sget-object v0, Lcom/zui/launcher/R$styleable;->HorizontalListView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/zui/launcher/HorizontalListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 p2, 0x4

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/zui/launcher/HorizontalListView;->setDividerWidth(I)V

    :cond_1
    const/4 p2, 0x3

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/HorizontalListView;->i:I

    const/4 p2, 0x6

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/HorizontalListView;->mStartOffset:I

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/HorizontalListView;->mEndOffset:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    return-void
.end method

.method private N()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/widget/AdapterView;->refreshDrawableState()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/HorizontalListView;->g:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private O(I)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/HorizontalListView;->mCurrentX:I

    add-int/2addr v0, p1

    iget-object p0, p0, Lcom/zui/launcher/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Scroller;->isFinished()Z

    move-result p0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/HorizontalListView;)Landroid/view/GestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/HorizontalListView;->b:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/HorizontalListView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/HorizontalListView;->v:Z

    return p0
.end method

.method static synthetic c(Lcom/zui/launcher/HorizontalListView;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/HorizontalListView;->m:I

    return p0
.end method

.method static synthetic d(Lcom/zui/launcher/HorizontalListView;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/HorizontalListView;->x:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic e(Lcom/zui/launcher/HorizontalListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/HorizontalListView;->e:Z

    return p1
.end method

.method static synthetic f(Lcom/zui/launcher/HorizontalListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/HorizontalListView;->r:Z

    return p1
.end method

.method static synthetic g(Lcom/zui/launcher/HorizontalListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/HorizontalListView;->N()V

    return-void
.end method

.method private getRenderHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private getRenderWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method static synthetic h(Lcom/zui/launcher/HorizontalListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/HorizontalListView;->L()V

    return-void
.end method

.method static synthetic i(Lcom/zui/launcher/HorizontalListView;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/HorizontalListView;->K(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic j(Lcom/zui/launcher/HorizontalListView;Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/HorizontalListView;->setCurrentScrollState(Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    return-void
.end method

.method static synthetic k(Lcom/zui/launcher/HorizontalListView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/HorizontalListView;->O(I)V

    return-void
.end method

.method static synthetic l(Lcom/zui/launcher/HorizontalListView;II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/HorizontalListView;->w(II)I

    move-result p0

    return p0
.end method

.method private m(Landroid/view/View;I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/zui/launcher/HorizontalListView;->x(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/widget/AdapterView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    invoke-direct {p0, p1}, Lcom/zui/launcher/HorizontalListView;->D(Landroid/view/View;)V

    return-void
.end method

.method private n()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/HorizontalListView$a;

    invoke-direct {v0, p0}, Lcom/zui/launcher/HorizontalListView$a;-><init>(Lcom/zui/launcher/HorizontalListView;)V

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private o()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView;->p:Lcom/zui/launcher/HorizontalListView$RunningOutOfDataListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iget v1, p0, Lcom/zui/launcher/HorizontalListView;->n:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zui/launcher/HorizontalListView;->q:I

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/zui/launcher/HorizontalListView;->r:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/zui/launcher/HorizontalListView;->r:Z

    iget-object p0, p0, Lcom/zui/launcher/HorizontalListView;->p:Lcom/zui/launcher/HorizontalListView$RunningOutOfDataListener;

    invoke-interface {p0}, Lcom/zui/launcher/HorizontalListView$RunningOutOfDataListener;->onRunningOutOfData()V

    :cond_0
    return-void
.end method

.method private p()Z
    .locals 5

    iget v0, p0, Lcom/zui/launcher/HorizontalListView;->n:I

    invoke-direct {p0, v0}, Lcom/zui/launcher/HorizontalListView;->C(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/HorizontalListView;->getRightmostChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/zui/launcher/HorizontalListView;->l:I

    iget v3, p0, Lcom/zui/launcher/HorizontalListView;->mCurrentX:I

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-direct {p0}, Lcom/zui/launcher/HorizontalListView;->getRenderWidth()I

    move-result v0

    sub-int/2addr v3, v0

    iget v0, p0, Lcom/zui/launcher/HorizontalListView;->mEndOffset:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/zui/launcher/HorizontalListView;->l:I

    if-gez v3, :cond_0

    iput v1, p0, Lcom/zui/launcher/HorizontalListView;->l:I

    :cond_0
    iget p0, p0, Lcom/zui/launcher/HorizontalListView;->l:I

    if-eq p0, v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private q(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/zui/launcher/HorizontalListView;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private r(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/HorizontalListView;->f:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingTop()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/zui/launcher/HorizontalListView;->f:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/zui/launcher/HorizontalListView;->getRenderHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_0

    iget v3, p0, Lcom/zui/launcher/HorizontalListView;->n:I

    invoke-direct {p0, v3}, Lcom/zui/launcher/HorizontalListView;->C(I)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, p0, Lcom/zui/launcher/HorizontalListView;->h:I

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingLeft()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingLeft()I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->left:I

    :cond_1
    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->right:I

    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/zui/launcher/HorizontalListView;->q(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    if-nez v2, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingLeft()I

    move-result v5

    if-le v4, v5, :cond_3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingLeft()I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v1}, Lcom/zui/launcher/HorizontalListView;->q(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private s(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method private setCurrentScrollState(Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView;->t:Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView;->s:Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener;->onScrollStateChanged(Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    sget-object v0, Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView;->s:Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener;

    invoke-interface {v0}, Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener;->onScrollStop()V

    :cond_0
    iput-object p1, p0, Lcom/zui/launcher/HorizontalListView;->t:Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    return-void
.end method

.method private t(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/zui/launcher/HorizontalListView;->getRightmostChild()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/HorizontalListView;->v(II)V

    invoke-virtual {p0}, Lcom/zui/launcher/HorizontalListView;->getLeftmostChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/zui/launcher/HorizontalListView;->u(II)V

    return-void
.end method

.method private u(II)V
    .locals 3

    :goto_0
    add-int v0, p1, p2

    iget v1, p0, Lcom/zui/launcher/HorizontalListView;->h:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_2

    iget v0, p0, Lcom/zui/launcher/HorizontalListView;->m:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/zui/launcher/HorizontalListView;->m:I

    iget-object v1, p0, Lcom/zui/launcher/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {p0, v0}, Lcom/zui/launcher/HorizontalListView;->y(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v0, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/HorizontalListView;->m(Landroid/view/View;I)V

    iget v1, p0, Lcom/zui/launcher/HorizontalListView;->m:I

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/zui/launcher/HorizontalListView;->mStartOffset:I

    sub-int/2addr v1, v2

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/zui/launcher/HorizontalListView;->h:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    :goto_1
    sub-int/2addr p1, v1

    iget v1, p0, Lcom/zui/launcher/HorizontalListView;->c:I

    add-int v2, p1, p2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_2

    :cond_1
    iget v2, p0, Lcom/zui/launcher/HorizontalListView;->h:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v2

    :goto_2
    sub-int/2addr v1, v0

    iput v1, p0, Lcom/zui/launcher/HorizontalListView;->c:I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private v(II)V
    .locals 3

    :goto_0
    add-int v0, p1, p2

    iget v1, p0, Lcom/zui/launcher/HorizontalListView;->h:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/zui/launcher/HorizontalListView;->n:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/zui/launcher/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/zui/launcher/HorizontalListView;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zui/launcher/HorizontalListView;->n:I

    iget v1, p0, Lcom/zui/launcher/HorizontalListView;->m:I

    if-gez v1, :cond_0

    iput v0, p0, Lcom/zui/launcher/HorizontalListView;->m:I

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v1, p0, Lcom/zui/launcher/HorizontalListView;->n:I

    invoke-direct {p0, v1}, Lcom/zui/launcher/HorizontalListView;->y(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/HorizontalListView;->m(Landroid/view/View;I)V

    iget v1, p0, Lcom/zui/launcher/HorizontalListView;->n:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/zui/launcher/HorizontalListView;->h:I

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v1, v0

    add-int/2addr p1, v1

    invoke-direct {p0}, Lcom/zui/launcher/HorizontalListView;->o()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private w(II)I
    .locals 4

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/launcher/HorizontalListView;->f:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/zui/launcher/HorizontalListView;->f:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private x(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    iget p0, p0, Lcom/zui/launcher/HorizontalListView;->i:I

    const/4 v0, -0x1

    invoke-direct {p1, p0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    return-object p1
.end method

.method private y(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/HorizontalListView;->B(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/HorizontalListView;->d:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private z()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/launcher/HorizontalListView;->m:I

    iput v0, p0, Lcom/zui/launcher/HorizontalListView;->n:I

    iget v0, p0, Lcom/zui/launcher/HorizontalListView;->mStartOffset:I

    iput v0, p0, Lcom/zui/launcher/HorizontalListView;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/HorizontalListView;->mCurrentX:I

    iput v0, p0, Lcom/zui/launcher/HorizontalListView;->mNextX:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/zui/launcher/HorizontalListView;->l:I

    sget-object v0, Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v0}, Lcom/zui/launcher/HorizontalListView;->setCurrentScrollState(Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    return-void
.end method


# virtual methods
.method protected dampedOverScroll(F)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v1, p1, v0

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v3, v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/zui/launcher/HorizontalListView;->F(F)F

    move-result v1

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v3, v1

    :cond_1
    const v1, 0x3e0f5c29    # 0.14f

    mul-float/2addr v3, v1

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    cmpg-float p1, p1, v2

    if-gez p1, :cond_2

    iput v0, p0, Lcom/zui/launcher/HorizontalListView;->mNextX:I

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/zui/launcher/HorizontalListView;->l:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/zui/launcher/HorizontalListView;->mNextX:I

    :goto_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/zui/launcher/HorizontalListView;->s(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method protected getChild(I)Landroid/view/View;
    .locals 2

    iget v0, p0, Lcom/zui/launcher/HorizontalListView;->m:I

    if-lt p1, v0, :cond_0

    iget v1, p0, Lcom/zui/launcher/HorizontalListView;->n:I

    if-gt p1, v1, :cond_0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEndOffset()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/HorizontalListView;->mEndOffset:I

    return p0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getHorizontalFadingEdgeLength()I

    move-result v0

    iget p0, p0, Lcom/zui/launcher/HorizontalListView;->mCurrentX:I

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-ge p0, v0, :cond_1

    int-to-float p0, p0

    int-to-float v0, v0

    div-float/2addr p0, v0

    return p0

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method protected getLeftVisiableIndex()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/HorizontalListView;->m:I

    return p0
.end method

.method protected getLeftmostChild()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getHorizontalFadingEdgeLength()I

    move-result v0

    iget v1, p0, Lcom/zui/launcher/HorizontalListView;->mCurrentX:I

    iget p0, p0, Lcom/zui/launcher/HorizontalListView;->l:I

    if-ne v1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sub-int v2, p0, v1

    if-ge v2, v0, :cond_1

    sub-int/2addr p0, v1

    int-to-float p0, p0

    int-to-float v0, v0

    div-float/2addr p0, v0

    return p0

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method protected getRightVisiableIndex()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/HorizontalListView;->n:I

    return p0
.end method

.method protected getRightmostChild()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    iget v0, p0, Lcom/zui/launcher/HorizontalListView;->o:I

    invoke-virtual {p0, v0}, Lcom/zui/launcher/HorizontalListView;->getChild(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getStartOffset()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/HorizontalListView;->mStartOffset:I

    return p0
.end method

.method protected onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/zui/launcher/HorizontalListView;->v:Z

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    sget-object v0, Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v0}, Lcom/zui/launcher/HorizontalListView;->setCurrentScrollState(Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    invoke-direct {p0}, Lcom/zui/launcher/HorizontalListView;->N()V

    iget-boolean v0, p0, Lcom/zui/launcher/HorizontalListView;->v:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/HorizontalListView;->w(II)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/HorizontalListView;->g:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/widget/AdapterView;->refreshDrawableState()V

    :cond_0
    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/zui/launcher/HorizontalListView;->r(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    iget v1, p0, Lcom/zui/launcher/HorizontalListView;->mNextX:I

    neg-float p1, p3

    float-to-int v3, p1

    iget v6, p0, Lcom/zui/launcher/HorizontalListView;->l:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    sget-object p1, Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_FLING:Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, p1}, Lcom/zui/launcher/HorizontalListView;->setCurrentScrollState(Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    invoke-virtual {p0}, Landroid/widget/AdapterView;->requestLayout()V

    const/4 p0, 0x1

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->invalidate()V

    iget-boolean v0, p0, Lcom/zui/launcher/HorizontalListView;->e:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/zui/launcher/HorizontalListView;->mCurrentX:I

    invoke-direct {p0}, Lcom/zui/launcher/HorizontalListView;->z()V

    invoke-virtual {p0}, Landroid/widget/AdapterView;->removeAllViewsInLayout()V

    iput v0, p0, Lcom/zui/launcher/HorizontalListView;->mNextX:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/HorizontalListView;->e:Z

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView;->k:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/HorizontalListView;->mNextX:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/HorizontalListView;->k:Ljava/lang/Integer;

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/HorizontalListView;->mNextX:I

    :cond_3
    iget v0, p0, Lcom/zui/launcher/HorizontalListView;->mNextX:I

    const/4 v1, 0x1

    if-gez v0, :cond_4

    :goto_0
    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/HorizontalListView;->dampedOverScroll(F)V

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    sget-object v0, Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v0}, Lcom/zui/launcher/HorizontalListView;->setCurrentScrollState(Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/zui/launcher/HorizontalListView;->l:I

    if-le v0, v2, :cond_5

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_5
    :goto_1
    iget v0, p0, Lcom/zui/launcher/HorizontalListView;->mCurrentX:I

    iget v1, p0, Lcom/zui/launcher/HorizontalListView;->mNextX:I

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/zui/launcher/HorizontalListView;->E()V

    invoke-direct {p0, v0}, Lcom/zui/launcher/HorizontalListView;->J(I)V

    invoke-direct {p0, v0}, Lcom/zui/launcher/HorizontalListView;->t(I)V

    invoke-direct {p0, v0}, Lcom/zui/launcher/HorizontalListView;->G(I)V

    iget v0, p0, Lcom/zui/launcher/HorizontalListView;->mNextX:I

    iput v0, p0, Lcom/zui/launcher/HorizontalListView;->mCurrentX:I

    invoke-direct {p0}, Lcom/zui/launcher/HorizontalListView;->p()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual/range {p0 .. p5}, Lcom/zui/launcher/HorizontalListView;->onLayout(ZIIII)V

    return-void

    :cond_6
    iget-object p1, p0, Lcom/zui/launcher/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/zui/launcher/HorizontalListView;->t:Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    sget-object p2, Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_FLING:Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    if-ne p1, p2, :cond_8

    sget-object p1, Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, p1}, Lcom/zui/launcher/HorizontalListView;->setCurrentScrollState(Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/zui/launcher/HorizontalListView;->z:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_8
    :goto_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onMeasure(II)V

    iget p1, p0, Lcom/zui/launcher/HorizontalListView;->u:I

    iput p1, p0, Lcom/zui/launcher/HorizontalListView;->A:I

    iput p2, p0, Lcom/zui/launcher/HorizontalListView;->u:I

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "BUNDLE_ID_CURRENT_X"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/HorizontalListView;->k:Ljava/lang/Integer;

    const-string v0, "BUNDLE_ID_PARENT_STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "BUNDLE_ID_PARENT_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget p0, p0, Lcom/zui/launcher/HorizontalListView;->mCurrentX:I

    const-string v1, "BUNDLE_ID_CURRENT_X"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v0}, Lcom/zui/launcher/HorizontalListView;->setCurrentScrollState(Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/zui/launcher/HorizontalListView;->K(Ljava/lang/Boolean;)V

    invoke-direct {p0}, Lcom/zui/launcher/HorizontalListView;->I()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/zui/launcher/HorizontalListView;->N()V

    invoke-direct {p0}, Lcom/zui/launcher/HorizontalListView;->I()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/zui/launcher/HorizontalListView;->K(Ljava/lang/Boolean;)V

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public reComputerRightViewAdapterIndex()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/zui/launcher/HorizontalListView;->n:I

    iget-object v1, p0, Lcom/zui/launcher/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/zui/launcher/HorizontalListView;->n:I

    if-gez v0, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/zui/launcher/HorizontalListView;->n:I

    :cond_0
    iget v0, p0, Lcom/zui/launcher/HorizontalListView;->m:I

    iget-object v1, p0, Lcom/zui/launcher/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/zui/launcher/HorizontalListView;->m:I

    if-gez v0, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/zui/launcher/HorizontalListView;->m:I

    :cond_1
    return-void
.end method

.method public scrollTo(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/HorizontalListView;->scrollTo(IZ)V

    return-void
.end method

.method public scrollTo(IZ)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/zui/launcher/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    iget v1, p0, Lcom/zui/launcher/HorizontalListView;->mNextX:I

    sub-int/2addr p1, v1

    invoke-virtual {p2, v1, v0, p1, v0}, Landroid/widget/Scroller;->startScroll(IIII)V

    sget-object p1, Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_FLING:Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, p1}, Lcom/zui/launcher/HorizontalListView;->setCurrentScrollState(Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->forceFinished(Z)V

    sget-object p1, Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, p1}, Lcom/zui/launcher/HorizontalListView;->setCurrentScrollState(Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    iput v0, p0, Lcom/zui/launcher/HorizontalListView;->mNextX:I

    :goto_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->requestLayout()V

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/HorizontalListView;->y:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/HorizontalListView;->r:Z

    iput-object p1, p0, Lcom/zui/launcher/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView;->y:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/HorizontalListView;->A(I)V

    invoke-direct {p0}, Lcom/zui/launcher/HorizontalListView;->L()V

    return-void
.end method

.method public setChildWidth(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/HorizontalListView;->i:I

    return-void
.end method

.method public final setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/HorizontalListView;->j:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/zui/launcher/HorizontalListView;->setDividerWidth(I)V

    return-void
.end method

.method public final setDividerWidth(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/HorizontalListView;->h:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/AdapterView;->invalidate()V

    return-void
.end method

.method public setEndOffset(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/HorizontalListView;->mEndOffset:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->requestLayout()V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/HorizontalListView;->x:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnScrollStateChangedListener(Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/HorizontalListView;->s:Lcom/zui/launcher/HorizontalListView$OnScrollStateChangedListener;

    return-void
.end method

.method public setRunningOutOfDataListener(Lcom/zui/launcher/HorizontalListView$RunningOutOfDataListener;I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/HorizontalListView;->p:Lcom/zui/launcher/HorizontalListView$RunningOutOfDataListener;

    iput p2, p0, Lcom/zui/launcher/HorizontalListView;->q:I

    return-void
.end method

.method public setSelection(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/HorizontalListView;->o:I

    return-void
.end method

.method public setStartEndOffset(II)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/HorizontalListView;->mStartOffset:I

    iput p1, p0, Lcom/zui/launcher/HorizontalListView;->c:I

    iput p2, p0, Lcom/zui/launcher/HorizontalListView;->mEndOffset:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->requestLayout()V

    return-void
.end method

.method public setStartOffset(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/HorizontalListView;->mStartOffset:I

    iput p1, p0, Lcom/zui/launcher/HorizontalListView;->c:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->requestLayout()V

    return-void
.end method
