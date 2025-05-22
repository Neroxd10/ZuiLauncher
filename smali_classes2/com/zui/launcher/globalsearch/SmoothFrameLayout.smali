.class public Lcom/zui/launcher/globalsearch/SmoothFrameLayout;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String; = "SmoothFrameLayout"


# instance fields
.field private a:Lcom/zui/launcher/globalsearch/DrawPathViewNew;

.field private b:Landroid/widget/ImageView;

.field private c:I

.field private d:I

.field private e:Landroid/content/Context;

.field private f:F

.field g:F

.field h:Z

.field i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->i:Z

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07028b

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    iget-object p2, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->e:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07048c

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    iget-object p2, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->e:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07028a

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->f:F

    invoke-static {}, Lcom/zui/launcher/util/SettingsValue;->getStatusBarHeight()I

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->hasNavigationBar(Landroid/content/Context;)Z

    return-void
.end method


# virtual methods
.method public getShowGlobal()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->h:Z

    return p0
.end method

.method public getViewState()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->i:Z

    return p0
.end method

.method public handleBackAnimator()V
    .locals 4

    const-string v0, "Enter"

    const-string v1, "EnterGSGesture"

    const-string v2, "\u4e0a\u6ed1\u624b\u52bf"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/zui/launcher/XReaperGlobal;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->i:Z

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->a:Lcom/zui/launcher/globalsearch/DrawPathViewNew;

    invoke-virtual {v1}, Lcom/zui/launcher/globalsearch/DrawPathViewNew;->getDiff()F

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput v1, v2, v0

    const/4 v0, 0x0

    aput v0, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    new-instance v1, Lcom/zui/launcher/globalsearch/SmoothFrameLayout$a;

    invoke-direct {v1, p0}, Lcom/zui/launcher/globalsearch/SmoothFrameLayout$a;-><init>(Lcom/zui/launcher/globalsearch/SmoothFrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/zui/launcher/globalsearch/SmoothFrameLayout$b;

    invoke-direct {v1, p0}, Lcom/zui/launcher/globalsearch/SmoothFrameLayout$b;-><init>(Lcom/zui/launcher/globalsearch/SmoothFrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    const v0, 0x7f0a0153

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/globalsearch/DrawPathViewNew;

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->a:Lcom/zui/launcher/globalsearch/DrawPathViewNew;

    const v0, 0x7f0a01df

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->c:I

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->a:Lcom/zui/launcher/globalsearch/DrawPathViewNew;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->d:I

    return-void
.end method

.method public setMoveEvent(F)V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->i:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->a:Lcom/zui/launcher/globalsearch/DrawPathViewNew;

    invoke-virtual {v2, p1}, Lcom/zui/launcher/globalsearch/DrawPathViewNew;->setDiff(F)V

    iget v2, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->d:I

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, p1, v2

    const/4 v4, 0x0

    cmpg-float v4, p1, v4

    const v5, 0x7f0802eb

    if-gez v4, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v6, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->d:I

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->b:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->e:Landroid/content/Context;

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-boolean v0, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->h:Z

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->d:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v4, 0x3ff3333340000000L    # 1.2000000476837158

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    mul-double/2addr v0, v4

    const-wide v4, 0x407f400000000000L    # 500.0

    div-double/2addr v0, v4

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    const-string v0, "SmoothFrameLayout"

    const-string v1, "start  show globalSearchView  "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->b:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->e:Landroid/content/Context;

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-boolean v1, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->h:Z

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->h:Z

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->e:Landroid/content/Context;

    invoke-static {v1, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->d:I

    int-to-float v4, v1

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    int-to-float v0, v1

    iget v1, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->f:F

    add-float/2addr v0, v1

    add-float/2addr v0, p1

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setY(F)V

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->g:F

    iget v0, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->c:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    div-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->b:Landroid/widget/ImageView;

    iget p0, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->f:F

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setY(F)V

    :goto_1
    return-void
.end method
