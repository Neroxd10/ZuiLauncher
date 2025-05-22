.class public Lcom/zui/launcher/XDockViewArea;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/zui/launcher/XDockView$o;
.implements Lcom/zui/launcher/Insettable;


# instance fields
.field private a:Lcom/zui/launcher/Launcher;

.field private b:Lcom/zui/launcher/dragndrop/DragLayer;

.field private c:Lcom/zui/launcher/XDockView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/animation/AnimatorSet;

.field private g:I

.field private h:Lcom/zui/launcher/XDockView$m;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/XDockViewArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/XDockViewArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/XDockViewArea;->f:Landroid/animation/AnimatorSet;

    new-instance p1, Lcom/zui/launcher/XDockViewArea$d;

    invoke-direct {p1, p0}, Lcom/zui/launcher/XDockViewArea$d;-><init>(Lcom/zui/launcher/XDockViewArea;)V

    iput-object p1, p0, Lcom/zui/launcher/XDockViewArea;->h:Lcom/zui/launcher/XDockView$m;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0708be

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/XDockViewArea;->g:I

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/XDockViewArea;)Lcom/zui/launcher/XDockView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/XDockViewArea;->c:Lcom/zui/launcher/XDockView;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/XDockViewArea;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/XDockViewArea;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcom/zui/launcher/XDockViewArea;Landroid/view/View;Z[F)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/XDockViewArea;->j(Landroid/view/View;Z[F)V

    return-void
.end method

.method static synthetic d(Lcom/zui/launcher/XDockViewArea;Landroid/view/View;Z[F)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/XDockViewArea;->k(Landroid/view/View;Z[F)V

    return-void
.end method

.method static synthetic e(Lcom/zui/launcher/XDockViewArea;Landroid/view/View;Z[FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zui/launcher/XDockViewArea;->l(Landroid/view/View;Z[FF)V

    return-void
.end method

.method static synthetic f(Lcom/zui/launcher/XDockViewArea;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/XDockViewArea;->e:Landroid/view/View;

    return-object p0
.end method

.method private g(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private h(Landroid/view/View;[FF)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p0, 0x3

    new-array p2, p0, [F

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p0

    const/4 p1, 0x0

    aput p0, p2, p1

    const/4 p0, 0x1

    aput p3, p2, p0

    const/4 p3, 0x2

    aget p1, p2, p1

    aget p0, p2, p0

    add-float/2addr p1, p0

    aput p1, p2, p3

    return-void
.end method

.method private i(Landroid/view/View;Z[FLandroid/animation/TimeInterpolator;Ljava/lang/Runnable;)Landroid/animation/ValueAnimator;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz p2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    :goto_0
    if-ne v1, v2, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p5, :cond_3

    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-object v0

    :cond_4
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-nez p4, :cond_6

    if-eqz p2, :cond_5

    new-instance p4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {p4, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    goto :goto_1

    :cond_5
    new-instance p4, Landroid/view/animation/AccelerateInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {p4, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    :cond_6
    :goto_1
    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p4, Lcom/zui/launcher/XDockViewArea$b;

    move-object v2, p4

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/zui/launcher/XDockViewArea$b;-><init>(Lcom/zui/launcher/XDockViewArea;Landroid/view/View;Z[FLjava/lang/Runnable;)V

    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p4, Lcom/zui/launcher/XDockViewArea$c;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/zui/launcher/XDockViewArea$c;-><init>(Lcom/zui/launcher/XDockViewArea;Landroid/view/View;Z[F)V

    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_7
    :goto_2
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private j(Landroid/view/View;Z[F)V
    .locals 0

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    move p2, p0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    aget p0, p3, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    const/high16 p0, 0x3f800000    # 1.0f

    instance-of p2, p1, Lcom/zui/launcher/XDockImgView;

    if-eqz p2, :cond_1

    move-object p0, p1

    check-cast p0, Lcom/zui/launcher/XDockImgView;

    invoke-virtual {p0}, Lcom/zui/launcher/XDockImgView;->getStateAlpha()F

    move-result p0

    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private k(Landroid/view/View;Z[F)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_0

    const/4 p0, 0x2

    aget p0, p3, p0

    goto :goto_0

    :cond_0
    aget p0, p3, p0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    const/high16 p0, 0x3f800000    # 1.0f

    instance-of p3, p1, Lcom/zui/launcher/XDockImgView;

    if-eqz p3, :cond_1

    move-object p0, p1

    check-cast p0, Lcom/zui/launcher/XDockImgView;

    invoke-virtual {p0}, Lcom/zui/launcher/XDockImgView;->getStateAlpha()F

    move-result p0

    :cond_1
    if-eqz p2, :cond_2

    const/4 p0, 0x0

    :cond_2
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private l(Landroid/view/View;Z[FF)V
    .locals 2

    instance-of p0, p1, Lcom/zui/launcher/XDockImgView;

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p0, :cond_0

    move-object p0, p1

    check-cast p0, Lcom/zui/launcher/XDockImgView;

    invoke-virtual {p0}, Lcom/zui/launcher/XDockImgView;->getStateAlpha()F

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    aget p2, p3, p2

    aget p3, p3, v1

    mul-float/2addr p3, p4

    sub-float/2addr p2, p3

    mul-float/2addr p4, p0

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    aget p2, p3, p2

    aget p3, p3, v1

    mul-float/2addr p3, p4

    add-float/2addr p2, p3

    sub-float/2addr v0, p4

    mul-float p4, v0, p0

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, p4}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private m(ZLandroid/animation/AnimatorSet;)V
    .locals 7

    const/4 v0, 0x3

    new-array v4, v0, [F

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/XDockViewArea;->d:Landroid/widget/TextView;

    int-to-float v0, v0

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v2

    invoke-direct {p0, v1, v4, v0}, Lcom/zui/launcher/XDockViewArea;->h(Landroid/view/View;[FF)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    aget v2, v4, v1

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_0

    aput v0, v4, v1

    const/4 v0, 0x2

    aget v1, v4, v1

    const/4 v2, 0x1

    aget v2, v4, v2

    add-float/2addr v1, v2

    aput v1, v4, v0

    :cond_0
    iget-object v2, p0, Lcom/zui/launcher/XDockViewArea;->d:Landroid/widget/TextView;

    const/4 v5, 0x0

    new-instance v6, Lcom/zui/launcher/XDockViewArea$a;

    invoke-direct {v6, p0, v4}, Lcom/zui/launcher/XDockViewArea$a;-><init>(Lcom/zui/launcher/XDockViewArea;[F)V

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/zui/launcher/XDockViewArea;->i(Landroid/view/View;Z[FLandroid/animation/TimeInterpolator;Ljava/lang/Runnable;)Landroid/animation/ValueAnimator;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p2, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_1
    return-void
.end method

.method private n(ZLandroid/animation/AnimatorSet;)V
    .locals 12

    iget-object v0, p0, Lcom/zui/launcher/XDockViewArea;->a:Lcom/zui/launcher/Launcher;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/zui/launcher/XDockViewArea;->e:Landroid/view/View;

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/XDockViewArea;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e4ccccd    # 0.2f

    if-ne p1, v0, :cond_4

    iget-object p2, p0, Lcom/zui/launcher/XDockViewArea;->e:Landroid/view/View;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lcom/zui/launcher/XDockViewArea;->e:Landroid/view/View;

    if-eqz p1, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    iget p0, p0, Lcom/zui/launcher/XDockViewArea;->g:I

    int-to-float p0, p0

    :goto_1
    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget v3, p0, Lcom/zui/launcher/XDockViewArea;->g:I

    goto :goto_2

    :cond_5
    move v3, v0

    :goto_2
    iget v4, p0, Lcom/zui/launcher/XDockViewArea;->g:I

    if-eqz p1, :cond_6

    mul-int/lit8 v4, v4, -0x1

    :cond_6
    move v10, v4

    if-eqz p1, :cond_7

    move v11, v2

    goto :goto_3

    :cond_7
    move v11, v1

    :goto_3
    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    :goto_4
    iget-object v4, p0, Lcom/zui/launcher/XDockViewArea;->e:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/zui/launcher/XDockViewArea$e;

    move-object v4, v2

    move-object v5, p0

    move v6, v11

    move v7, p1

    move v8, v3

    move v9, v10

    invoke-direct/range {v4 .. v9}, Lcom/zui/launcher/XDockViewArea$e;-><init>(Lcom/zui/launcher/XDockViewArea;FZII)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Lcom/zui/launcher/XDockViewArea$f;

    move-object v4, p1

    move v6, v3

    move v7, v10

    move v8, v1

    move v9, v11

    invoke-direct/range {v4 .. v9}, Lcom/zui/launcher/XDockViewArea$f;-><init>(Lcom/zui/launcher/XDockViewArea;IIFF)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz v0, :cond_9

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_9
    :goto_5
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a014e

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/XDockView;

    iput-object v0, p0, Lcom/zui/launcher/XDockViewArea;->c:Lcom/zui/launcher/XDockView;

    iget-object v1, p0, Lcom/zui/launcher/XDockViewArea;->h:Lcom/zui/launcher/XDockView$m;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/XDockView;->setOnControlListener(Lcom/zui/launcher/XDockView$m;)V

    const v0, 0x7f0a014c

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/launcher/XDockViewArea;->d:Landroid/widget/TextView;

    return-void
.end method

.method public onSelectCountChanged(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/XDockViewArea;->refreshDockViewHint()V

    :cond_1
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/zui/launcher/XDockViewArea;->refreshDockViewHint()V

    return-void
.end method

.method public refreshDockViewHint()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/XDockViewArea;->refreshDockViewHint(Z)V

    return-void
.end method

.method public refreshDockViewHint(Z)V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/XDockViewArea;->f:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/XDockViewArea;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/zui/launcher/XDockViewArea;->c:Lcom/zui/launcher/XDockView;

    invoke-virtual {v3}, Lcom/zui/launcher/XDockView;->getLayout()Lcom/zui/launcher/XDockViewLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-eqz v0, :cond_2

    if-ge v3, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/zui/launcher/XDockViewArea;->a:Lcom/zui/launcher/Launcher;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/zui/launcher/XDockViewArea;->e:Landroid/view/View;

    if-nez p1, :cond_3

    goto :goto_5

    :cond_3
    iget-object p1, p0, Lcom/zui/launcher/XDockViewArea;->d:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x4

    :goto_2
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewArea;->e:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewArea;->e:Landroid/view/View;

    if-eqz v1, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_5
    const v0, 0x3e4ccccd    # 0.2f

    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewArea;->e:Landroid/view/View;

    if-eqz v1, :cond_6

    const/4 p0, 0x0

    goto :goto_4

    :cond_6
    iget p0, p0, Lcom/zui/launcher/XDockViewArea;->g:I

    int-to-float p0, p0

    :goto_4
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    :cond_7
    :goto_5
    return-void

    :cond_8
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/XDockViewArea;->f:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v1, p1}, Lcom/zui/launcher/XDockViewArea;->m(ZLandroid/animation/AnimatorSet;)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewArea;->f:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v1, p1}, Lcom/zui/launcher/XDockViewArea;->n(ZLandroid/animation/AnimatorSet;)V

    iget-object p0, p0, Lcom/zui/launcher/XDockViewArea;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public refreshTextColor()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/XDockViewArea;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/XDockViewArea;->a:Lcom/zui/launcher/Launcher;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->hasWhiteBg()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06014c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x1000000

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/XDockViewArea;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/zui/launcher/XDockViewArea;->a:Lcom/zui/launcher/Launcher;

    iget-boolean v0, v0, Lcom/zui/launcher/Launcher;->isBlackWallpaper:Z

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    iget-object p0, p0, Lcom/zui/launcher/XDockViewArea;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/high16 v0, 0x40400000    # 3.0f

    const/high16 v3, 0x3a000000

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_1

    :cond_1
    const v0, 0x3affffff

    invoke-virtual {p0, v2, v1, v2, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean v0, v0, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0702ac

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v3, 0x7f0702b0

    :goto_0
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    goto :goto_1

    :cond_0
    const v0, 0x7f0702ab

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-lez v3, :cond_1

    const v3, 0x7f0702b1

    goto :goto_0

    :cond_1
    const v3, 0x7f0702af

    goto :goto_0

    :goto_1
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-lez p1, :cond_2

    const v0, 0x7f070310

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sub-int/2addr p1, v0

    :cond_2
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewArea;->c:Lcom/zui/launcher/XDockView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object p0, p0, Lcom/zui/launcher/XDockViewArea;->c:Lcom/zui/launcher/XDockView;

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method public setup(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/dragndrop/DragController;)V
    .locals 1

    iput-object p1, p0, Lcom/zui/launcher/XDockViewArea;->a:Lcom/zui/launcher/Launcher;

    iget-object v0, p0, Lcom/zui/launcher/XDockViewArea;->c:Lcom/zui/launcher/XDockView;

    invoke-virtual {v0, p1, p2}, Lcom/zui/launcher/XDockView;->setup(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/dragndrop/DragController;)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewArea;->c:Lcom/zui/launcher/XDockView;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/XDockView;->addSelectCountListener(Lcom/zui/launcher/XDockView$o;)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewArea;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/XDockViewArea;->b:Lcom/zui/launcher/dragndrop/DragLayer;

    iget-object p1, p0, Lcom/zui/launcher/XDockViewArea;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getEditViewPanel()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/XDockViewArea;->e:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setLayoutDirection(I)V

    invoke-virtual {p0}, Lcom/zui/launcher/XDockViewArea;->refreshTextColor()V

    return-void
.end method

.method public show(Z)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/XDockViewArea;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/XDockViewArea;->b:Lcom/zui/launcher/dragndrop/DragLayer;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p0}, Lcom/zui/launcher/XDockViewArea;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    :cond_0
    return-void
.end method
