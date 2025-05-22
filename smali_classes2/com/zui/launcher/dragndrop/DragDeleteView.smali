.class public Lcom/zui/launcher/dragndrop/DragDeleteView;
.super Landroid/view/View;
.source ""


# instance fields
.field private a:Lcom/zui/launcher/dragndrop/DragLayer;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:I

.field private d:I

.field private e:I

.field private final f:Landroid/graphics/Paint;

.field g:Landroid/animation/AnimatorSet;

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field protected mBg:Landroid/graphics/drawable/Drawable;

.field protected mHeight:I

.field protected mPadding:I

.field protected mRegistrationX:I

.field protected mRegistrationY:I

.field protected mTargetOffsetX:F

.field protected mTargetOffsetY:F

.field protected mWidth:I

.field private n:I

.field private o:F

.field private p:Landroid/view/animation/Interpolator;

.field private final q:[I


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;IIIF)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->h:F

    iput v0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->i:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->l:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mPadding:I

    iput v0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mTargetOffsetX:F

    iput v0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mTargetOffsetY:F

    const/high16 v3, 0x42960000    # 75.0f

    iput v3, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->m:F

    iput v2, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->n:I

    iput v1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->o:F

    new-instance v2, Lcom/zui/launcher/effect/QuadInterpolator;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/zui/launcher/effect/QuadInterpolator;-><init>(B)V

    iput-object v2, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->p:Landroid/view/animation/Interpolator;

    const/4 v2, 0x2

    new-array v4, v2, [I

    iput-object v4, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->q:[I

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v4

    iput-object v4, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->a:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080242

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->b:Landroid/graphics/drawable/Drawable;

    iput p5, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->l:F

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0702fd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->c:I

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0702fe

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->d:I

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060152

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->e:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput p3, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mRegistrationX:I

    iput p4, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mRegistrationY:I

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "registration : ( "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mRegistrationX:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " , "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mRegistrationY:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " )"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/zui/launcher/dragndrop/DeleteInfo;->printDeleteInfo(Ljava/lang/String;)V

    const p3, 0x7f0702ba

    invoke-virtual {v4, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    int-to-float p1, p2

    add-float/2addr v0, p1

    div-float/2addr v0, p1

    invoke-virtual {p0, p5}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, p5}, Landroid/view/View;->setScaleY(F)V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->g:Landroid/animation/AnimatorSet;

    new-array p1, v2, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Lcom/zui/launcher/effect/QuadInterpolator;

    invoke-direct {p2, v3}, Lcom/zui/launcher/effect/QuadInterpolator;-><init>(B)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p2, 0x12c

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p4, Lcom/zui/launcher/dragndrop/DragDeleteView$a;

    invoke-direct {p4, p0, p5, v0}, Lcom/zui/launcher/dragndrop/DragDeleteView$a;-><init>(Lcom/zui/launcher/dragndrop/DragDeleteView;FF)V

    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p4, v2, [F

    fill-array-data p4, :array_1

    invoke-static {p4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->p:Landroid/view/animation/Interpolator;

    invoke-virtual {p4, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/zui/launcher/dragndrop/DragDeleteView$b;

    invoke-direct {p2, p0}, Lcom/zui/launcher/dragndrop/DragDeleteView$b;-><init>(Lcom/zui/launcher/dragndrop/DragDeleteView;)V

    invoke-virtual {p4, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->g:Landroid/animation/AnimatorSet;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->g:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, p4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->g:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/zui/launcher/dragndrop/DragDeleteView$c;

    invoke-direct {p2, p0, v0}, Lcom/zui/launcher/dragndrop/DragDeleteView$c;-><init>(Lcom/zui/launcher/dragndrop/DragDeleteView;F)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->f:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->f:Landroid/graphics/Paint;

    iget p2, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->e:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0702bc

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    add-float/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    return-void

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

.method static synthetic a(Lcom/zui/launcher/dragndrop/DragDeleteView;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->h:F

    return p0
.end method

.method static synthetic b(Lcom/zui/launcher/dragndrop/DragDeleteView;F)F
    .locals 0

    iput p1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->h:F

    return p1
.end method

.method static synthetic c(Lcom/zui/launcher/dragndrop/DragDeleteView;F)F
    .locals 1

    iget v0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->h:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->h:F

    return v0
.end method

.method static synthetic d(Lcom/zui/launcher/dragndrop/DragDeleteView;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->i:F

    return p0
.end method

.method static synthetic e(Lcom/zui/launcher/dragndrop/DragDeleteView;F)F
    .locals 0

    iput p1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->i:F

    return p1
.end method

.method static synthetic f(Lcom/zui/launcher/dragndrop/DragDeleteView;F)F
    .locals 1

    iget v0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->i:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->i:F

    return v0
.end method

.method static synthetic g(Lcom/zui/launcher/dragndrop/DragDeleteView;F)F
    .locals 0

    iput p1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->m:F

    return p1
.end method

.method static synthetic h(Lcom/zui/launcher/dragndrop/DragDeleteView;I)I
    .locals 0

    iput p1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->n:I

    return p1
.end method

.method static synthetic i(Lcom/zui/launcher/dragndrop/DragDeleteView;F)F
    .locals 0

    iput p1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->o:F

    return p1
.end method


# virtual methods
.method public animateTo(IILjava/lang/Runnable;I)V
    .locals 9

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->q:[I

    iget v0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mRegistrationX:I

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    aput p1, v2, v0

    iget p1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mRegistrationY:I

    sub-int/2addr p2, p1

    const/4 p1, 0x1

    aput p2, v2, p1

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->a:Lcom/zui/launcher/dragndrop/DragLayer;

    iget v5, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->l:F

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v1, p0

    move v4, v5

    move-object v7, p3

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/zui/launcher/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/zui/launcher/dragndrop/DragDeleteView;[IFFFILjava/lang/Runnable;I)V

    return-void
.end method

.method public cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->g:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->g:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method public isContainerExits()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->a:Lcom/zui/launcher/dragndrop/DragLayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isContainerExits  indexOfChild-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Launcher"

    invoke-static {v2, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->a:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method j(II)Z
    .locals 4

    iget v0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mRegistrationX:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->h:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    iget v0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mRegistrationY:I

    sub-int v0, p2, v0

    iget v1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->i:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    int-to-float p1, p1

    iget v0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->j:F

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    int-to-float p1, p2

    iget p2, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->k:F

    sub-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-int p1, p1

    const/16 p2, 0x19

    if-le p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/dragndrop/DragDeleteView;->remove()V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mBg:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mWidth:I

    iget v3, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mHeight:I

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget v0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->c:I

    const/4 v2, 0x1

    ushr-int/2addr v0, v2

    iget v3, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->d:I

    ushr-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v5, v3, 0x1

    iget-object v6, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1, v1, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->save(I)I

    iget v1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mPadding:I

    add-int v3, v1, v0

    int-to-float v3, v3

    add-int/2addr v1, v0

    int-to-float v1, v1

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->m:F

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->save(I)I

    iget v1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->o:F

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    int-to-float v0, v0

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->f:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    iget v1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->n:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    neg-int v0, v4

    int-to-float v0, v0

    neg-int v1, v5

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public remove()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/dragndrop/DragDeleteView;->cancelAnimation()V

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->a:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove dragdeleteview : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/dragndrop/DeleteInfo;->printDeleteInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public resetLayoutParams()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->i:F

    iput v0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->h:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public show(II)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->a:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {v0}, Lcom/zui/launcher/dragndrop/DragLayer;->removeAllDragDeleteView()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Lcom/zui/launcher/AbstractFloatingView;->closeOpenContainer(Lcom/zui/launcher/views/ActivityContext;I)V

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->a:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show dragdeleteview : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getZ()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/dragndrop/DeleteInfo;->printDeleteInfo(Ljava/lang/String;)V

    new-instance v0, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;-><init>(II)V

    iget v2, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mWidth:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mHeight:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->customPosition:Z

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mRegistrationX:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    iget v0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mRegistrationY:I

    sub-int v0, p2, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    int-to-float p1, p1

    iput p1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->j:F

    int-to-float p1, p2

    iput p1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->k:F

    iget p1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mWidth:I

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    iget p1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->mHeight:I

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotY(F)V

    const/high16 p1, 0x42960000    # 75.0f

    iput p1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->m:F

    iput v1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->n:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView;->o:F

    new-instance p1, Lcom/zui/launcher/dragndrop/DragDeleteView$d;

    invoke-direct {p1, p0}, Lcom/zui/launcher/dragndrop/DragDeleteView$d;-><init>(Lcom/zui/launcher/dragndrop/DragDeleteView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
