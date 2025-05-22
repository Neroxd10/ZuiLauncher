.class public Lcom/zui/launcher/util/TransformingTouchDelegate;
.super Landroid/view/TouchDelegate;
.source ""


# static fields
.field private static final g:Landroid/graphics/Rect;


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private final b:Landroid/graphics/RectF;

.field private c:F

.field private d:Z

.field private e:Landroid/view/View;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/zui/launcher/util/TransformingTouchDelegate;->g:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    sget-object v0, Lcom/zui/launcher/util/TransformingTouchDelegate;->g:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    iput-object p1, p0, Lcom/zui/launcher/util/TransformingTouchDelegate;->e:Landroid/view/View;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/util/TransformingTouchDelegate;->a:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/util/TransformingTouchDelegate;->b:Landroid/graphics/RectF;

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/util/TransformingTouchDelegate;->b:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/zui/launcher/util/TransformingTouchDelegate;->a:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/zui/launcher/util/TransformingTouchDelegate;->b:Landroid/graphics/RectF;

    iget p0, p0, Lcom/zui/launcher/util/TransformingTouchDelegate;->c:F

    neg-float v1, p0

    neg-float p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/RectF;->inset(FF)V

    return-void
.end method


# virtual methods
.method public extendTouchBounds(F)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/util/TransformingTouchDelegate;->c:F

    invoke-direct {p0}, Lcom/zui/launcher/util/TransformingTouchDelegate;->a()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/zui/launcher/util/TransformingTouchDelegate;->f:Z

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/zui/launcher/util/TransformingTouchDelegate;->f:Z

    iput-boolean v2, p0, Lcom/zui/launcher/util/TransformingTouchDelegate;->f:Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/util/TransformingTouchDelegate;->b:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/launcher/util/TransformingTouchDelegate;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/util/TransformingTouchDelegate;->a:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/zui/launcher/util/TransformingTouchDelegate;->d:Z

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-boolean v2, p0, Lcom/zui/launcher/util/TransformingTouchDelegate;->d:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/zui/launcher/util/TransformingTouchDelegate;->a:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/zui/launcher/util/TransformingTouchDelegate;->a:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/zui/launcher/util/TransformingTouchDelegate;->a:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :goto_2
    iget-object p0, p0, Lcom/zui/launcher/util/TransformingTouchDelegate;->e:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    :cond_5
    return v2
.end method

.method public setBounds(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/util/TransformingTouchDelegate;->a:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0}, Lcom/zui/launcher/util/TransformingTouchDelegate;->a()V

    return-void
.end method

.method public setDelegateView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/util/TransformingTouchDelegate;->e:Landroid/view/View;

    return-void
.end method
