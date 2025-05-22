.class public Lcom/zui/launcher/globalsearch/OverSmoothUpView;
.super Landroid/view/View;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/graphics/Paint;

.field private c:I

.field private d:I

.field private e:Landroid/graphics/Path;

.field private f:I

.field private g:Lcom/zui/launcher/Launcher;

.field private h:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/globalsearch/OverSmoothUpView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->e(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/globalsearch/OverSmoothUpView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->e(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "ydl"

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->a:Ljava/lang/String;

    const/4 p2, 0x0

    iput p2, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->f:I

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    invoke-direct {p0, p1}, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->e(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/globalsearch/OverSmoothUpView;I)I
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->f:I

    return p1
.end method

.method static synthetic b(Lcom/zui/launcher/globalsearch/OverSmoothUpView;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->f()V

    return-void
.end method

.method static synthetic c(Lcom/zui/launcher/globalsearch/OverSmoothUpView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->a:Ljava/lang/String;

    return-object p0
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->e:Landroid/graphics/Path;

    iget v1, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->d:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget v0, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->c:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->f:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->d:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->d:I

    add-int/2addr v1, v2

    if-le v1, v2, :cond_1

    move v1, v2

    :cond_1
    if-gez v1, :cond_2

    const/4 v1, 0x0

    :cond_2
    :goto_0
    iget v2, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->c:I

    iget v3, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->d:I

    iget-object v4, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->e:Landroid/graphics/Path;

    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->e:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 1

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->b:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->b:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->b:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->e:Landroid/graphics/Path;

    return-void
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->h:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->g:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public handleHideView()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ObjectAnimatorBinding"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    iget v1, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->d:I

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string v1, "translationY"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->h:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->h:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->h:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/zui/launcher/globalsearch/OverSmoothUpView$a;

    invoke-direct {v1, p0}, Lcom/zui/launcher/globalsearch/OverSmoothUpView$a;-><init>(Lcom/zui/launcher/globalsearch/OverSmoothUpView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->h:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/zui/launcher/globalsearch/OverSmoothUpView$b;

    invoke-direct {v1, p0}, Lcom/zui/launcher/globalsearch/OverSmoothUpView$b;-><init>(Lcom/zui/launcher/globalsearch/OverSmoothUpView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const-string v0, "OverSmoothUpView"

    const-string v1, "OverSmoothUpView onDraw "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->d(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const-string p0, "OverSmoothUpView"

    const-string v0, "OverSmoothUpView onFinishInflate "

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    const-string p1, "OverSmoothUpView"

    const-string p2, "OverSmoothUpView onLayout "

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->c:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->d:I

    iget p0, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->c:I

    div-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public setMotionEvent(Landroid/view/MotionEvent;IF)V
    .locals 0

    float-to-int p1, p3

    iput p1, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->f:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setUp(Lcom/zui/launcher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->g:Lcom/zui/launcher/Launcher;

    return-void
.end method
