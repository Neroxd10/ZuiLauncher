.class public Lcom/zui/launcher/views/RecyclerViewLettersScroller;
.super Lcom/zui/launcher/views/RecyclerViewFastScroller;
.source ""


# static fields
.field private static final m0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final F:I

.field private final G:I

.field private H:I

.field private final I:F

.field private final J:Landroid/view/ViewConfiguration;

.field private final K:Landroid/graphics/Paint;

.field private final L:Landroid/graphics/RectF;

.field private final M:Landroid/graphics/Point;

.field private final N:Landroid/graphics/Paint;

.field private O:Z

.field private P:Z

.field private final Q:Z

.field private R:Z

.field private S:Landroid/widget/TextView;

.field private T:Z

.field private U:Ljava/lang/String;

.field private V:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private W:I

.field private X:I

.field private Y:I

.field private Z:[Ljava/lang/String;

.field private a0:[Ljava/lang/String;

.field private b0:[Ljava/lang/String;

.field private c0:I

.field private d0:I

.field private e0:I

.field private f0:I

.field private g0:I

.field private h0:I

.field private i0:F

.field private j0:I

.field private k0:Z

.field private l0:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->m0:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/views/RecyclerViewLettersScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/views/RecyclerViewLettersScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 30

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p3}, Lcom/zui/launcher/views/RecyclerViewFastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x0

    iput v1, v0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->H:I

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->L:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, v0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->M:Landroid/graphics/Point;

    const-string v3, "A"

    const-string v4, "B"

    const-string v5, "C"

    const-string v6, "D"

    const-string v7, "E"

    const-string v8, "F"

    const-string v9, "G"

    const-string v10, "H"

    const-string v11, "I"

    const-string v12, "J"

    const-string v13, "K"

    const-string v14, "L"

    const-string v15, "M"

    const-string v16, "N"

    const-string v17, "O"

    const-string v18, "P"

    const-string v19, "Q"

    const-string v20, "R"

    const-string v21, "S"

    const-string v22, "T"

    const-string v23, "U"

    const-string v24, "V"

    const-string v25, "W"

    const-string v26, "X"

    const-string v27, "Y"

    const-string v28, "Z"

    const-string v29, "#"

    filled-new-array/range {v3 .. v29}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->a0:[Ljava/lang/String;

    const-string v3, "A"

    const-string v4, "."

    const-string v5, "D"

    const-string v6, "."

    const-string v7, "G"

    const-string v8, "."

    const-string v9, "J"

    const-string v10, "."

    const-string v11, "M"

    const-string v12, "."

    const-string v13, "P"

    const-string v14, "."

    const-string v15, "S"

    const-string v16, "."

    const-string v17, "V"

    const-string v18, "."

    const-string v19, "Z"

    const-string v20, "#"

    filled-new-array/range {v3 .. v20}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->b0:[Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->N:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, v0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->N:Landroid/graphics/Paint;

    const v5, 0x7f06017d

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->K:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v3, 0x7f06017f

    invoke-virtual {v2, v3, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    iput v3, v0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->d0:I

    const v3, 0x7f06017e

    invoke-virtual {v2, v3, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    iput v3, v0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->c0:I

    iget-object v3, v0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->K:Landroid/graphics/Paint;

    iget v4, v0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->d0:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->K:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v3, 0x7f07034b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->e0:I

    iget-object v4, v0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->K:Landroid/graphics/Paint;

    int-to-float v3, v3

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    const v3, 0x7f070361

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->F:I

    const v3, 0x7f07035f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->G:I

    const v3, 0x7f07034a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->f0:I

    const v3, 0x7f07035b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    const v3, 0x7f070349

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    iput v3, v0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mThumbHeight:I

    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    iput-object v3, v0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->J:Landroid/view/ViewConfiguration;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v3, v4

    iput v3, v0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->I:F

    const v3, 0x7f070436

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->l0:I

    sget-object v2, Lcom/zui/launcher/R$styleable;->RecyclerViewFastScroller:[I

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual {v3, v4, v2, v5, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->Q:Z

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->n(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private d(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->T:Z

    if-eq v0, p1, :cond_3

    iput-boolean p1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->T:Z

    iget-object v0, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->S:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->S:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_1

    const-wide/16 v1, 0x96

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0xc8

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/views/RecyclerViewLettersScroller$b;

    invoke-direct {v1, p0, p1}, Lcom/zui/launcher/views/RecyclerViewLettersScroller$b;-><init>(Lcom/zui/launcher/views/RecyclerViewLettersScroller;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x0

    goto :goto_2

    :cond_2
    const-wide/16 v0, 0x514

    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    return-void
.end method

.method private e(II)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->O:Z

    iput-boolean v0, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->k0:Z

    iget-boolean v1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->Q:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->P:Z

    :cond_0
    iget v1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mTouchOffsetY:I

    sub-int/2addr p2, p1

    add-int/2addr v1, p2

    iput v1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mTouchOffsetY:I

    invoke-direct {p0, v0}, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->d(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/AbstractFloatingView;->closeAllOpenViews(Lcom/zui/launcher/views/ActivityContext;)V

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

.method static synthetic k(Lcom/zui/launcher/views/RecyclerViewLettersScroller;I)I
    .locals 0

    iput p1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->H:I

    return p1
.end method

.method static synthetic l(Lcom/zui/launcher/views/RecyclerViewLettersScroller;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->S:Landroid/widget/TextView;

    return-object p0
.end method

.method private m(Landroid/graphics/Canvas;)V
    .locals 13

    iget-object v0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mRv:Lcom/zui/launcher/BaseRecyclerView;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseRecyclerView;->getScrollBarTop()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mRv:Lcom/zui/launcher/BaseRecyclerView;

    iget v2, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->i0:F

    invoke-virtual {v0, v2}, Lcom/zui/launcher/BaseRecyclerView;->getPositionAtProgress(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->U:Ljava/lang/String;

    iget v0, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->j0:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->h0:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->Z:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_5

    iget-object v5, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->K:Landroid/graphics/Paint;

    aget-object v4, v4, v3

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    iget-object v5, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->K:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    div-int/lit8 v6, v0, 0x2

    int-to-float v7, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    sub-float v4, v7, v4

    mul-int v8, v1, v3

    add-int/2addr v8, v1

    int-to-float v8, v8

    iget-object v9, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->Z:[Ljava/lang/String;

    aget-object v9, v9, v3

    iget-object v10, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->U:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-direct {p0, v3}, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->o(I)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    :cond_0
    move v9, v2

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v9, 0x1

    :goto_2
    if-eqz v9, :cond_2

    iget v10, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->F:I

    div-int/lit8 v11, v10, 0x2

    sub-int/2addr v6, v11

    add-int/2addr v10, v6

    iget v11, v5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float v11, v11

    add-float/2addr v11, v8

    float-to-int v11, v11

    iget v12, v5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float v12, v12

    add-float/2addr v12, v8

    float-to-int v12, v12

    add-int/2addr v6, v10

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f070349

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v6, v6

    int-to-float v11, v11

    int-to-float v10, v10

    iget-object v12, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->N:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v11, v10, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    iget-object v6, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->K:Landroid/graphics/Paint;

    if-eqz v9, :cond_3

    iget v9, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->c0:I

    goto :goto_3

    :cond_3
    iget v9, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->d0:I

    :goto_3
    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->Z:[Ljava/lang/String;

    aget-object v6, v6, v3

    const-string v9, "."

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget v4, v5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float v4, v4

    add-float/2addr v4, v8

    float-to-int v4, v4

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float v5, v5

    add-float/2addr v5, v8

    float-to-int v5, v5

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->f0:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->K:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_4
    iget-object v5, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->Z:[Ljava/lang/String;

    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->K:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v4, v8, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private n(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initData, grid.isVerticalBarLayout()==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecyclerViewLettersScroller"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initData, configuration.orientation==="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->b0:[Ljava/lang/String;

    iput-object p1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->Z:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->a0:[Ljava/lang/String;

    iput-object p1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->Z:[Ljava/lang/String;

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070435

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->g0:I

    iget v0, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->l0:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->Z:[Ljava/lang/String;

    array-length v0, v0

    div-int/2addr p1, v0

    iput p1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->h0:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070363

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->g0:I

    invoke-direct {v0, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    :cond_1
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget p1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->g0:I

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    iget-boolean p1, p1, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0700af

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0700ae

    :goto_2
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070437

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->j0:I

    iget-object p1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->Z:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->U:Ljava/lang/String;

    return-void
.end method

.method private o(I)Z
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->Z:[Ljava/lang/String;

    iget-object v1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->b0:[Ljava/lang/String;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    aget-object v0, v0, p1

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->U:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->U:Ljava/lang/String;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZ#"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->U:Ljava/lang/String;

    const-string v1, "A.D.G.J.M.P.S.V.Z#"

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    if-eq v0, v1, :cond_1

    div-int/lit8 p0, v0, 0x3

    const/4 v1, 0x1

    add-int/2addr p0, v1

    mul-int/lit8 p0, p0, 0x2

    sub-int/2addr p0, v1

    if-eq p0, p1, :cond_0

    const/16 p0, 0x18

    if-ne v0, p0, :cond_1

    const/16 p0, 0xf

    if-ne p1, p0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2
.end method

.method private p(II)V
    .locals 1

    iget p1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->g0:I

    iget-object v0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mRv:Lcom/zui/launcher/BaseRecyclerView;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseRecyclerView;->getScrollBarTop()I

    move-result v0

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->j0:I

    sub-int/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mRv:Lcom/zui/launcher/BaseRecyclerView;

    int-to-float p1, p1

    div-float/2addr p2, p1

    invoke-virtual {v0, p2}, Lcom/zui/launcher/BaseRecyclerView;->scrollToPositionAtProgress(F)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->U:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->U:Ljava/lang/String;

    invoke-direct {p0}, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->r()V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->S:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->d(Z)V

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mRv:Lcom/zui/launcher/BaseRecyclerView;

    invoke-virtual {p1}, Lcom/zui/launcher/BaseRecyclerView;->getAvailableScrollBarHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->setThumbOffsetY(I)V

    return-void
.end method

.method private q()V
    .locals 7

    iget-boolean v0, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->T:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v2, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->g0:I

    iget v3, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->l0:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->S:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->S:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v5, v4, Lcom/zui/launcher/allapps/AllAppsContainerView;

    if-eqz v5, :cond_1

    new-array v5, v0, [I

    check-cast v4, Lcom/zui/launcher/allapps/AllAppsContainerView;

    const v6, 0x7f0a032e

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v5, v4

    iget-object p0, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->S:Landroid/widget/TextView;

    aget v1, v1, v6

    sub-int/2addr v1, v5

    sub-int/2addr v2, v3

    div-int/2addr v2, v0

    add-int/2addr v1, v2

    int-to-float v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method private r()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->hasDualVibrator()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    const/16 v0, 0x1d

    const/16 v1, 0xa

    const/16 v2, 0x32

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/zui/launcher/LauncherAppState;->startVibrationOrFail(IIIZ)Z

    :cond_0
    return-void
.end method

.method private setLetterOffsePercent(F)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->i0:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->q()V

    iput p1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->i0:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z
    .locals 4

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

    move-result p1

    if-eqz p1, :cond_4

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eq p1, p2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    goto/16 :goto_2

    :cond_0
    iput v1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->Y:I

    iget-boolean p1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->R:Z

    iget v2, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->X:I

    sub-int v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v3, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->J:Landroid/view/ViewConfiguration;

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    if-le v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->R:Z

    iget-boolean p2, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->O:Z

    if-nez p2, :cond_2

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mRv:Lcom/zui/launcher/BaseRecyclerView;

    invoke-virtual {p1}, Lcom/zui/launcher/BaseRecyclerView;->supportsFastScrolling()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->W:I

    iget p2, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->Y:I

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->f(II)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->X:I

    sub-int p1, v1, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object p2, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->J:Landroid/view/ViewConfiguration;

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    if-le p1, p2, :cond_2

    iget p1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->X:I

    iget p2, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->Y:I

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->e(II)V

    :cond_2
    iget-boolean p1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->O:Z

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mRv:Lcom/zui/launcher/BaseRecyclerView;

    invoke-virtual {p1}, Lcom/zui/launcher/BaseRecyclerView;->onFastScrollCompleted()V

    iput v0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mTouchOffsetY:I

    iput-boolean v0, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->R:Z

    iput-boolean v0, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->k0:Z

    goto :goto_2

    :cond_4
    iput v0, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->W:I

    iput v1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->Y:I

    iput v1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->X:I

    iget-object p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mRv:Lcom/zui/launcher/BaseRecyclerView;

    invoke-virtual {p1}, Lcom/zui/launcher/BaseRecyclerView;->onFastScrollStarted()V

    iget p1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->H:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->I:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_5

    iget-object p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mRv:Lcom/zui/launcher/BaseRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mRv:Lcom/zui/launcher/BaseRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    :cond_5
    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->f(II)Z

    move-result p1

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->X:I

    iget p2, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mThumbOffsetY:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mTouchOffsetY:I

    :cond_6
    iget-object p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mRv:Lcom/zui/launcher/BaseRecyclerView;

    invoke-virtual {p1}, Lcom/zui/launcher/BaseRecyclerView;->supportsFastScrolling()Z

    move-result p1

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->W:I

    invoke-virtual {p0, p1}, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->isNearScrollBar(I)Z

    move-result p1

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->X:I

    iget p2, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->Y:I

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->e(II)V

    :goto_1
    iget p1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->Y:I

    invoke-direct {p0, p1, v1}, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->p(II)V

    :cond_7
    :goto_2
    iget-boolean p0, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->O:Z

    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDraggingThumb()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->O:Z

    return p0
.end method

.method public isHitInParent(FFLandroid/graphics/Point;)Z
    .locals 1

    sget-object v0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->C:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    if-eqz p3, :cond_0

    sget-object p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->C:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3, v0, p0}, Landroid/graphics/Point;->set(II)V

    :cond_0
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

    iget v1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->G:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isThumbDetached()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->P:Z

    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    const-string v0, "RecyclerViewLettersScroller"

    const-string v1, "onApplyWindowInsets----"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->n(Landroid/content/res/Configuration;)V

    invoke-super {p0, p1}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0, p1}, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->n(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDraggingCompleted()V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->O:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->k0:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->O:Z

    invoke-direct {p0, v0}, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->d(Z)V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->M:Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mRv:Lcom/zui/launcher/BaseRecyclerView;

    invoke-virtual {v3}, Lcom/zui/launcher/BaseRecyclerView;->getScrollBarTop()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    iget-object v1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->M:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->j0:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->y:I

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->G:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->L:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->g0:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    sget-boolean v1, Lcom/zui/launcher/Utilities;->ATLEAST_Q:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->L:Landroid/graphics/RectF;

    sget-object v2, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->m0:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    sget-object v1, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->m0:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->M:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    sget-object v1, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->m0:Ljava/util/List;

    invoke-virtual {p0, v1}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->m(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public reattachThumbToScroll()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->P:Z

    return-void
.end method

.method public setMarginEnd(ZILandroid/graphics/Rect;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/zui/launcher/views/RecyclerViewFastScroller;->setMarginEnd(ZILandroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070363

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->g0:I

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_0
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v0, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->g0:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :goto_0
    if-eqz p1, :cond_1

    iget p1, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iput p2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    iget-boolean p1, p1, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700af

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700ae

    :goto_2
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setRecyclerView(Lcom/zui/launcher/BaseRecyclerView;Landroid/widget/TextView;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mRv:Lcom/zui/launcher/BaseRecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->V:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    iput-object p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mRv:Lcom/zui/launcher/BaseRecyclerView;

    new-instance v0, Lcom/zui/launcher/views/RecyclerViewLettersScroller$a;

    invoke-direct {v0, p0}, Lcom/zui/launcher/views/RecyclerViewLettersScroller$a;-><init>(Lcom/zui/launcher/views/RecyclerViewLettersScroller;)V

    iput-object v0, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->V:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iput-object p2, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->S:Landroid/widget/TextView;

    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance p2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {p2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06017d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070352

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    new-instance v0, Landroid/graphics/Rect;

    div-int/lit8 p2, p2, 0x2

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->S:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setThumbOffsetY(I)V
    .locals 2

    iget v0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mThumbOffsetY:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mThumbOffsetY:I

    iget-object v0, p0, Lcom/zui/launcher/views/RecyclerViewFastScroller;->mRv:Lcom/zui/launcher/BaseRecyclerView;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseRecyclerView;->getAvailableScrollBarHeight()I

    move-result v0

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->setLetterOffsePercent(F)V

    return-void
.end method

.method public shouldBlockIntercept(II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/views/RecyclerViewLettersScroller;->f(II)Z

    move-result p0

    return p0
.end method
