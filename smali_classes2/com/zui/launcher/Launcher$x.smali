.class Lcom/zui/launcher/Launcher$x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Launcher;->x0(Landroid/view/View;Landroid/view/View;Lcom/zui/launcher/ItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Landroid/view/View;

.field final synthetic f:Landroid/view/View;

.field final synthetic g:F

.field final synthetic h:Landroid/view/View;

.field final synthetic i:Lcom/zui/launcher/ItemInfo;

.field final synthetic j:Lcom/zui/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher;[IIIILandroid/view/View;Landroid/view/View;FLandroid/view/View;Lcom/zui/launcher/ItemInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher$x;->j:Lcom/zui/launcher/Launcher;

    iput-object p2, p0, Lcom/zui/launcher/Launcher$x;->a:[I

    iput p3, p0, Lcom/zui/launcher/Launcher$x;->b:I

    iput p4, p0, Lcom/zui/launcher/Launcher$x;->c:I

    iput p5, p0, Lcom/zui/launcher/Launcher$x;->d:I

    iput-object p6, p0, Lcom/zui/launcher/Launcher$x;->e:Landroid/view/View;

    iput-object p7, p0, Lcom/zui/launcher/Launcher$x;->f:Landroid/view/View;

    iput p8, p0, Lcom/zui/launcher/Launcher$x;->g:F

    iput-object p9, p0, Lcom/zui/launcher/Launcher$x;->h:Landroid/view/View;

    iput-object p10, p0, Lcom/zui/launcher/Launcher$x;->i:Lcom/zui/launcher/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v0, p0, Lcom/zui/launcher/Launcher$x;->j:Lcom/zui/launcher/Launcher;

    iget-object v1, p0, Lcom/zui/launcher/Launcher$x;->a:[I

    iget v2, p0, Lcom/zui/launcher/Launcher$x;->b:I

    iget v3, p0, Lcom/zui/launcher/Launcher$x;->c:I

    iget v4, p0, Lcom/zui/launcher/Launcher$x;->d:I

    iget-object v5, p0, Lcom/zui/launcher/Launcher$x;->e:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/Launcher;->getWorkspaceSourcePosition([IIIILandroid/view/View;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/Launcher$x;->j:Lcom/zui/launcher/Launcher;

    iget-object v2, p0, Lcom/zui/launcher/Launcher$x;->f:Landroid/view/View;

    iget-object v3, p0, Lcom/zui/launcher/Launcher$x;->e:Landroid/view/View;

    invoke-virtual {v1, v2, v3}, Lcom/zui/launcher/Launcher;->getDockViewTargetPosition(Landroid/view/View;Landroid/view/View;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/Launcher$x;->j:Lcom/zui/launcher/Launcher;

    invoke-static {v2}, Lcom/zui/launcher/Launcher;->x(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/XDockView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/XDockView;->isStackMode()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zui/launcher/Launcher$x;->j:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zui/launcher/Launcher$x;->j:Lcom/zui/launcher/Launcher;

    invoke-static {v2}, Lcom/zui/launcher/Launcher;->x(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/XDockView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/XDockView;->getDisplayWidth()I

    move-result v2

    iget-object v5, p0, Lcom/zui/launcher/Launcher$x;->j:Lcom/zui/launcher/Launcher;

    invoke-static {v5}, Lcom/zui/launcher/Launcher;->x(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/XDockView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/launcher/XDockView;->getLayout()Lcom/zui/launcher/XDockViewLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/launcher/XDockViewLayout;->getStackPaddingLeft()I

    move-result v5

    sub-int/2addr v2, v5

    iget-object v5, p0, Lcom/zui/launcher/Launcher$x;->j:Lcom/zui/launcher/Launcher;

    invoke-static {v5}, Lcom/zui/launcher/Launcher;->x(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/XDockView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/launcher/XDockView;->getLayout()Lcom/zui/launcher/XDockViewLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/launcher/XDockViewLayout;->getCellWidth()I

    move-result v5

    iget-object v6, p0, Lcom/zui/launcher/Launcher$x;->e:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/zui/launcher/Launcher$x;->g:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    sub-int/2addr v5, v6

    div-int/2addr v5, v4

    sub-int/2addr v2, v5

    iget-object v5, p0, Lcom/zui/launcher/Launcher$x;->e:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/zui/launcher/Launcher$x;->g:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int/2addr v2, v5

    aput v2, v1, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/zui/launcher/Launcher$x;->j:Lcom/zui/launcher/Launcher;

    invoke-static {v2}, Lcom/zui/launcher/Launcher;->x(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/XDockView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/XDockView;->getLayout()Lcom/zui/launcher/XDockViewLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/XDockViewLayout;->getStackPaddingLeft()I

    move-result v2

    iget-object v5, p0, Lcom/zui/launcher/Launcher$x;->j:Lcom/zui/launcher/Launcher;

    invoke-static {v5}, Lcom/zui/launcher/Launcher;->x(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/XDockView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/launcher/XDockView;->getLayout()Lcom/zui/launcher/XDockViewLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/launcher/XDockViewLayout;->getCellWidth()I

    move-result v5

    iget-object v6, p0, Lcom/zui/launcher/Launcher$x;->e:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/zui/launcher/Launcher$x;->g:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    sub-int/2addr v5, v6

    div-int/2addr v5, v4

    add-int/2addr v2, v5

    aput v2, v1, v3

    :cond_1
    :goto_0
    aget v2, v0, v3

    const/4 v5, 0x1

    aget v6, v0, v5

    aget v7, v1, v3

    aget v3, v0, v3

    sub-int/2addr v7, v3

    aget v3, v1, v5

    aget v0, v0, v5

    sub-int/2addr v3, v0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v8, v4, [F

    fill-array-data v8, :array_0

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    const-wide/16 v9, 0xfa

    invoke-virtual {v8, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v9, Lcom/zui/launcher/effect/CubicInterpolator;

    invoke-direct {v9, v4}, Lcom/zui/launcher/effect/CubicInterpolator;-><init>(B)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v9, Lcom/zui/launcher/Launcher$x$a;

    invoke-direct {v9, p0, v2, v7}, Lcom/zui/launcher/Launcher$x$a;-><init>(Lcom/zui/launcher/Launcher$x;II)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-array v2, v4, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v7, 0x1c2

    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/zui/launcher/effect/SeriesInterpolator;

    new-instance v8, Lcom/zui/launcher/effect/CubicInterpolator;

    invoke-direct {v8, v4}, Lcom/zui/launcher/effect/CubicInterpolator;-><init>(B)V

    new-instance v4, Lcom/zui/launcher/effect/QuadInterpolator;

    invoke-direct {v4, v5}, Lcom/zui/launcher/effect/QuadInterpolator;-><init>(B)V

    const v9, 0x3f0e38e4

    aget v10, v1, v5

    add-int/lit8 v10, v10, 0x12

    int-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v10, v11

    aget v1, v1, v5

    int-to-float v1, v1

    div-float/2addr v10, v1

    invoke-direct {v7, v8, v4, v9, v10}, Lcom/zui/launcher/effect/SeriesInterpolator;-><init>(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FF)V

    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/zui/launcher/Launcher$x$b;

    invoke-direct {v1, p0, v6, v3}, Lcom/zui/launcher/Launcher$x$b;-><init>(Lcom/zui/launcher/Launcher$x;II)V

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v1, Lcom/zui/launcher/Launcher$x$c;

    invoke-direct {v1, p0}, Lcom/zui/launcher/Launcher$x$c;-><init>(Lcom/zui/launcher/Launcher$x;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
