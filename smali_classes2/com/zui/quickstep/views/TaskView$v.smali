.class Lcom/zui/quickstep/views/TaskView$v;
.super Landroid/view/ViewOutlineProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/views/TaskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "v"
.end annotation


# instance fields
.field final a:Landroid/view/View;

.field final b:Landroid/view/ViewOutlineProvider;

.field final c:Landroid/view/ViewOutlineProvider;

.field final d:I

.field final e:I

.field f:I

.field g:I

.field final synthetic h:Lcom/zui/quickstep/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/zui/quickstep/views/TaskView;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/zui/quickstep/views/TaskView$v;->h:Lcom/zui/quickstep/views/TaskView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/quickstep/views/TaskView$v;->f:I

    iput p1, p0, Lcom/zui/quickstep/views/TaskView$v;->g:I

    iput-object p2, p0, Lcom/zui/quickstep/views/TaskView$v;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/quickstep/views/TaskView$v;->b:Landroid/view/ViewOutlineProvider;

    if-nez p1, :cond_0

    sget-object p1, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    :cond_0
    iput-object p1, p0, Lcom/zui/quickstep/views/TaskView$v;->c:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x3fffffff    # 1.9999999f

    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p2, p1, p1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/zui/quickstep/views/TaskView$v;->d:I

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    iput p1, p0, Lcom/zui/quickstep/views/TaskView$v;->e:I

    iget-object p1, p0, Lcom/zui/quickstep/views/TaskView$v;->b:Landroid/view/ViewOutlineProvider;

    if-eqz p1, :cond_2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Landroid/view/View;->setClipToOutline(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/zui/quickstep/views/o1;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/views/o1;-><init>(Lcom/zui/quickstep/views/TaskView$v;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public synthetic b(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/zui/quickstep/views/TaskView$v;->d:I

    iget-object v1, p0, Lcom/zui/quickstep/views/TaskView$v;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr p1, v1

    iget v1, p0, Lcom/zui/quickstep/views/TaskView$v;->e:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/zui/quickstep/views/TaskView$v;->g:I

    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskView$v;->e()V

    return-void
.end method

.method c()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskView$v;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/zui/quickstep/views/TaskView$v;->b:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/TaskView$v;->d(I)V

    return-void
.end method

.method public d(I)V
    .locals 4

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskView$v;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/zui/quickstep/views/TaskView$v;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/zui/quickstep/views/TaskView$v;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget p0, p0, Lcom/zui/quickstep/views/TaskView$v;->e:I

    add-int/2addr p0, p1

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method e()V
    .locals 4

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskView$v;->h:Lcom/zui/quickstep/views/TaskView;

    invoke-static {v0}, Lcom/zui/quickstep/views/TaskView;->x(Lcom/zui/quickstep/views/TaskView;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/zui/quickstep/views/TaskView$v;->h:Lcom/zui/quickstep/views/TaskView;

    invoke-static {v1}, Lcom/zui/quickstep/views/TaskView;->z(Lcom/zui/quickstep/views/TaskView;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/zui/quickstep/views/TaskView$v;->f:I

    iget-object v1, p0, Lcom/zui/quickstep/views/TaskView$v;->a:Landroid/view/View;

    iget v2, p0, Lcom/zui/quickstep/views/TaskView$v;->g:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lcom/zui/quickstep/views/TaskView$v;->h:Lcom/zui/quickstep/views/TaskView;

    iget-object v2, v2, Lcom/zui/quickstep/views/TaskView;->mCurrentFullscreenParams:Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;

    iget-object v2, v2, Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnInsets:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskView$v;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    return-void
.end method

.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskView$v;->c:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewOutlineProvider;->getOutline(Landroid/view/View;Landroid/graphics/Outline;)V

    iget p1, p0, Lcom/zui/quickstep/views/TaskView$v;->f:I

    neg-int p1, p1

    iget p0, p0, Lcom/zui/quickstep/views/TaskView$v;->g:I

    sub-int/2addr p1, p0

    const/4 p0, 0x0

    invoke-virtual {p2, p0, p1}, Landroid/graphics/Outline;->offset(II)V

    return-void
.end method
