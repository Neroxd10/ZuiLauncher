.class public Lcom/zui/launcher/views/RecyclerViewFastScroller;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/views/RecyclerViewFastScroller$OnFastScrollChangeListener;
    }
.end annotation


# static fields
.field static final C:Landroid/graphics/Rect;

.field private static final D:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/zui/launcher/views/RecyclerViewFastScroller;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:I

.field private B:I

.field private final a:I

.field private final b:I

.field private final c:I

.field private d:I

.field private final e:F

.field private final f:Landroid/view/ViewConfiguration;

.field private g:I

.field private h:Landroid/animation/ObjectAnimator;

.field private final i:Landroid/graphics/Paint;

.field private final j:Landroid/graphics/RectF;

.field private final k:Landroid/graphics/Point;

.field private final l:Landroid/graphics/Paint;

.field private m:F

.field protected mRv:Lcom/zui/launcher/BaseRecyclerView;

.field protected mRvOffsetY:I

.field protected mThumbHeight:I

.field protected mThumbOffsetY:I

.field protected mTouchOffsetY:I

.field private n:Z

.field private o:Z

.field private final p:Z

.field private q:Z

.field private r:Z

.field private s:J

.field private t:Landroid/widget/TextView;

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:Landroid/graphics/Insets;

.field private x:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private y:Lcom/zui/launcher/views/RecyclerViewFastScroller$OnFastScrollChangeListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->C:Landroid/graphics/Rect;

    new-instance v0, Lcom/zui/launcher/views/RecyclerViewFastScroller$a;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "width"

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/views/RecyclerViewFastScroller$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->D:Landroid/util/Property;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->E:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/views/RecyclerViewFastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/views/RecyclerViewFastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->d:I

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->j:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->k:Landroid/graphics/Point;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->r:Z

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->l:Landroid/graphics/Paint;

    const v3, 0x1010036

    invoke-static {p1, v3}, Lcom/zui/launcher/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->l:Landroid/graphics/Paint;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->i:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->i:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/zui/launcher/util/Themes;->getColorAccent(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->i:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070360

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->a:I

    iput v2, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->g:I

    const v2, 0x7f07035e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->b:I

    const v2, 0x7f07035a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->c:I

    const v2, 0x7f070357

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mThumbHeight:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->f:Landroid/view/ViewConfiguration;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->e:F

    sget-object v1, Lcom/zui/launcher/R$styleable;->RecyclerViewFastScroller:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->p:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/views/RecyclerViewFastScroller;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->g:I

    return p0
.end method

.method static synthetic b(Lcom/zui/launcher/views/RecyclerViewFastScroller;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->setTrackWidth(I)V

    return-void
.end method

.method static synthetic c(Lcom/zui/launcher/views/RecyclerViewFastScroller;I)I
    .locals 0

    iput p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->d:I

    return p1
.end method

.method private d(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->u:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->u:Z

    iget-object v0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->t:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->t:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p1, :cond_1

    const-wide/16 v0, 0xc8

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x96

    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    return-void
.end method

.method private e(II)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->n:Z

    iget-boolean v1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->p:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->o:Z

    :cond_0
    iget v1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mTouchOffsetY:I

    sub-int/2addr p2, p1

    add-int/2addr v1, p2

    iput v1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mTouchOffsetY:I

    invoke-direct {p0, v0}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->d(Z)V

    invoke-direct {p0, v0}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->h(Z)V

    return-void
.end method

.method private f(II)Z
    .locals 1

    iget v0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mThumbOffsetY:I

    sub-int/2addr p2, v0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget p0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mThumbHeight:I

    if-gt p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private g()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->y:Lcom/zui/launcher/views/RecyclerViewFastScroller$OnFastScrollChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/zui/launcher/views/RecyclerViewFastScroller$OnFastScrollChangeListener;->onScrollChanged()V

    :cond_0
    return-void
.end method

.method private getScrollThumbRadius()F
    .locals 1

    iget v0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->g:I

    iget p0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->c:I

    add-int/2addr v0, p0

    add-int/2addr v0, p0

    int-to-float p0, v0

    return p0
.end method

.method private h(Z)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->h:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    sget-object v0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->D:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->b:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->a:I

    :goto_0
    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->h:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private i(I)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mRv:Lcom/zui/launcher/BaseRecyclerView;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseRecyclerView;->getScrollbarTrackHeight()I

    move-result v0

    iget v1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mThumbHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mTouchOffsetY:I

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mRv:Lcom/zui/launcher/BaseRecyclerView;

    int-to-float v0, v0

    div-float v0, p1, v0

    invoke-virtual {v1, v0}, Lcom/zui/launcher/BaseRecyclerView;->scrollToPositionAtProgress(F)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->v:Ljava/lang/String;

    iget-object v1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->t:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->d(Z)V

    iput p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->m:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    return-void
.end method

.method private j(I)V
    .locals 4

    iget-boolean v0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->u:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->t:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mRv:Lcom/zui/launcher/BaseRecyclerView;

    invoke-virtual {v1}, Lcom/zui/launcher/BaseRecyclerView;->getScrollBarTop()I

    move-result v1

    add-int/2addr v1, p1

    int-to-float p1, v1

    invoke-direct {p0}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->getScrollThumbRadius()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr p1, v1

    int-to-float v1, v0

    div-float/2addr v1, v2

    sub-float/2addr p1, v1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mRv:Lcom/zui/launcher/BaseRecyclerView;

    invoke-virtual {v3}, Lcom/zui/launcher/BaseRecyclerView;->getScrollBarTop()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mRv:Lcom/zui/launcher/BaseRecyclerView;

    invoke-virtual {v3}, Lcom/zui/launcher/BaseRecyclerView;->getScrollbarTrackHeight()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    int-to-float v0, v2

    invoke-static {p1, v1, v0}, Lcom/zui/launcher/Utilities;->boundToRange(FFF)F

    move-result p1

    iget-object p0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->t:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void
.end method

.method private setTrackWidth(I)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->g:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->g:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public getThumbHeight()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mThumbHeight:I

    return p0
.end method

.method public getThumbOffsetY()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mThumbOffsetY:I

    return p0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget p2, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p2, v2, :cond_5

    const/4 v4, 0x2

    if-eq p2, v4, :cond_0

    const/4 p1, 0x3

    if-eq p2, p1, :cond_5

    goto/16 :goto_1

    :cond_0
    iput v1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->B:I

    iget p2, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->A:I

    sub-int p2, v1, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v4, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->z:I

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-boolean v4, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->q:Z

    iget-object v5, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->f:Landroid/view/ViewConfiguration;

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v5

    if-le p2, v5, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    or-int/2addr v2, v4

    iput-boolean v2, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->q:Z

    iget-boolean v3, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->n:Z

    if-nez v3, :cond_4

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mRv:Lcom/zui/launcher/BaseRecyclerView;

    invoke-virtual {v2}, Lcom/zui/launcher/BaseRecyclerView;->supportsFastScrolling()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->z:I

    iget v3, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->B:I

    invoke-direct {p0, v2, v3}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->f(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->f:Landroid/view/ViewConfiguration;

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    if-le p2, v2, :cond_2

    if-gt p2, v0, :cond_3

    :cond_2
    iget p2, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->z:I

    invoke-virtual {p0, p2}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->isNearScrollBar(I)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide p1

    iget-wide v2, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->s:J

    sub-long/2addr p1, v2

    const-wide/16 v2, 0xc8

    cmp-long p1, p1, v2

    if-lez p1, :cond_4

    :cond_3
    iget p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->A:I

    iget p2, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->B:I

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->e(II)V

    :cond_4
    iget-boolean p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->n:Z

    if-eqz p1, :cond_8

    invoke-direct {p0, v1}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->i(I)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mRv:Lcom/zui/launcher/BaseRecyclerView;

    invoke-virtual {p1}, Lcom/zui/launcher/BaseRecyclerView;->onFastScrollCompleted()V

    iput v3, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mTouchOffsetY:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->m:F

    iput-boolean v3, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->q:Z

    iget-boolean p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->n:Z

    if-eqz p1, :cond_8

    iput-boolean v3, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->n:Z

    invoke-direct {p0, v3}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->d(Z)V

    invoke-direct {p0, v3}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->h(Z)V

    goto :goto_1

    :cond_6
    iput v0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->z:I

    iput v1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->B:I

    iput v1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->A:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->s:J

    iget p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->d:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->e:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_7

    iget-object p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mRv:Lcom/zui/launcher/BaseRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mRv:Lcom/zui/launcher/BaseRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    :cond_7
    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->f(II)Z

    move-result p1

    if-eqz p1, :cond_8

    iget p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->A:I

    iget p2, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mThumbOffsetY:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mTouchOffsetY:I

    :cond_8
    :goto_1
    iget-boolean p0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->n:Z

    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDraggingThumb()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->n:Z

    return p0
.end method

.method public isHitInParent(FFLandroid/graphics/Point;)Z
    .locals 2

    iget v0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mThumbOffsetY:I

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->C:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->r:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->C:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mRv:Lcom/zui/launcher/BaseRecyclerView;

    invoke-virtual {p0}, Lcom/zui/launcher/BaseRecyclerView;->getScrollBarTop()I

    move-result p0

    add-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :cond_1
    if-eqz p3, :cond_2

    sget-object p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->C:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3, v0, p0}, Landroid/graphics/Point;->set(II)V

    :cond_2
    sget-object p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->C:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public isNearScrollBar(I)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->b:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget p0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->b:I

    add-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    if-gt p1, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isThumbDetached()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->o:Z

    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    sget-boolean v0, Lcom/zui/launcher/Utilities;->ATLEAST_Q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->w:Landroid/graphics/Insets;

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public onDraggingCompleted()V
    .locals 0

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    iget v0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mThumbOffsetY:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mRv:Lcom/zui/launcher/BaseRecyclerView;

    invoke-virtual {v2}, Lcom/zui/launcher/BaseRecyclerView;->getScrollBarTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->k:Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mRv:Lcom/zui/launcher/BaseRecyclerView;

    invoke-virtual {v3}, Lcom/zui/launcher/BaseRecyclerView;->getScrollBarTop()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    iget v1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->g:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    neg-float v3, v1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mRv:Lcom/zui/launcher/BaseRecyclerView;

    invoke-virtual {v2}, Lcom/zui/launcher/BaseRecyclerView;->getScrollbarTrackHeight()I

    move-result v2

    int-to-float v6, v2

    iget v2, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->g:I

    int-to-float v7, v2

    int-to-float v8, v2

    iget-object v9, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->l:Landroid/graphics/Paint;

    move-object v2, p1

    move v5, v1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget v2, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mThumbOffsetY:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->k:Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mThumbOffsetY:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->c:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-direct {p0}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->getScrollThumbRadius()F

    move-result v2

    iget-object v4, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->j:Landroid/graphics/RectF;

    neg-float v5, v1

    iget v6, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mThumbHeight:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v3, v1, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->j:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    sget-boolean v1, Lcom/zui/launcher/Utilities;->ATLEAST_Q:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->j:Landroid/graphics/RectF;

    sget-object v2, Lcom/zui/launcher/views/RecyclerViewFastScroller;->E:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    sget-object v1, Lcom/zui/launcher/views/RecyclerViewFastScroller;->E:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->k:Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Rect;->offset(II)V

    sget-boolean v1, Lcom/zui/launcher/Utilities;->ATLEAST_Q:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->w:Landroid/graphics/Insets;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/zui/launcher/views/RecyclerViewFastScroller;->E:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    sget-object v2, Lcom/zui/launcher/views/RecyclerViewFastScroller;->E:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->w:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->right:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    :cond_1
    sget-object v1, Lcom/zui/launcher/views/RecyclerViewFastScroller;->E:Ljava/util/List;

    invoke-virtual {p0, v1}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    :cond_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public reattachThumbToScroll()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->o:Z

    return-void
.end method

.method public setIsRecyclerViewFirstChildInParent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->r:Z

    return-void
.end method

.method public setMarginEnd(ZILandroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public setOnFastScrollChangeListener(Lcom/zui/launcher/views/RecyclerViewFastScroller$OnFastScrollChangeListener;)V
    .locals 0
    .param p1    # Lcom/zui/launcher/views/RecyclerViewFastScroller$OnFastScrollChangeListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->y:Lcom/zui/launcher/views/RecyclerViewFastScroller$OnFastScrollChangeListener;

    return-void
.end method

.method public setRecyclerView(Lcom/zui/launcher/BaseRecyclerView;Landroid/widget/TextView;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mRv:Lcom/zui/launcher/BaseRecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->x:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    iput-object p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mRv:Lcom/zui/launcher/BaseRecyclerView;

    new-instance v0, Lcom/zui/launcher/views/RecyclerViewFastScroller$b;

    invoke-direct {v0, p0}, Lcom/zui/launcher/views/RecyclerViewFastScroller$b;-><init>(Lcom/zui/launcher/views/RecyclerViewFastScroller;)V

    iput-object v0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->x:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iput-object p2, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->t:Landroid/widget/TextView;

    new-instance p1, Lcom/zui/launcher/graphics/FastScrollThumbDrawable;

    iget-object v0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->i:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    invoke-direct {p1, v0, p0}, Lcom/zui/launcher/graphics/FastScrollThumbDrawable;-><init>(Landroid/graphics/Paint;Z)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setThumbOffsetY(I)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mThumbOffsetY:I

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mRv:Lcom/zui/launcher/BaseRecyclerView;

    invoke-virtual {p1}, Lcom/zui/launcher/BaseRecyclerView;->getCurrentScrollY()I

    move-result p1

    iget v0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mRvOffsetY:I

    if-eq v0, p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mRv:Lcom/zui/launcher/BaseRecyclerView;

    invoke-virtual {p1}, Lcom/zui/launcher/BaseRecyclerView;->getCurrentScrollY()I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mRvOffsetY:I

    invoke-direct {p0}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->g()V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->j(I)V

    iput p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mThumbOffsetY:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mRv:Lcom/zui/launcher/BaseRecyclerView;

    invoke-virtual {p1}, Lcom/zui/launcher/BaseRecyclerView;->getCurrentScrollY()I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mRvOffsetY:I

    invoke-direct {p0}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->g()V

    return-void
.end method

.method public shouldBlockIntercept(II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->f(II)Z

    move-result p0

    return p0
.end method
