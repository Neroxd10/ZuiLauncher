.class public Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$CycleInterpolator2;
    }
.end annotation


# instance fields
.field private a:Lcom/zui/timelaweather/View/WidgetTextView;

.field private b:Lcom/zui/timelaweather/View/WidgetTextView;

.field private c:Lcom/zui/timelaweather/View/WidgetTextView;

.field private d:Lcom/zui/timelaweather/View/WidgetTextView;

.field private e:F

.field private f:Landroid/animation/ValueAnimator;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->f:Landroid/animation/ValueAnimator;

    const-string p1, ""

    iput-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)Lcom/zui/timelaweather/View/WidgetTextView;
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->d:Lcom/zui/timelaweather/View/WidgetTextView;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;Lcom/zui/timelaweather/View/WidgetTextView;)Lcom/zui/timelaweather/View/WidgetTextView;
    .locals 0

    iput-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->d:Lcom/zui/timelaweather/View/WidgetTextView;

    return-object p1
.end method

.method static synthetic c(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)Lcom/zui/timelaweather/View/WidgetTextView;
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->c:Lcom/zui/timelaweather/View/WidgetTextView;

    return-object p0
.end method

.method static synthetic d(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;Lcom/zui/timelaweather/View/WidgetTextView;)Lcom/zui/timelaweather/View/WidgetTextView;
    .locals 0

    iput-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->c:Lcom/zui/timelaweather/View/WidgetTextView;

    return-object p1
.end method

.method static synthetic e(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)Lcom/zui/timelaweather/View/WidgetTextView;
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->a:Lcom/zui/timelaweather/View/WidgetTextView;

    return-object p0
.end method

.method static synthetic f(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)Lcom/zui/timelaweather/View/WidgetTextView;
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->b:Lcom/zui/timelaweather/View/WidgetTextView;

    return-object p0
.end method

.method static synthetic g(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)F
    .locals 0

    iget p0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->e:F

    return p0
.end method


# virtual methods
.method public getAlaphScaleAnimation(Ljava/lang/String;I)Landroid/animation/ValueAnimator;
    .locals 3

    iget-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->f:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    mul-int/lit8 p2, p2, 0x19

    const/4 v0, 0x2

    mul-int/2addr p2, v0

    iget-object v1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->g:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->f:Landroid/animation/ValueAnimator;

    add-int/lit16 v1, p2, 0x1f4

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->f:Landroid/animation/ValueAnimator;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p2, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->f:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$a;

    invoke-direct {v0, p0}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$a;-><init>(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->f:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$b;

    invoke-direct {v0, p0, p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$b;-><init>(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->g:Ljava/lang/String;

    iget-object p0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->f:Landroid/animation/ValueAnimator;

    return-object p0

    nop

    :array_0
    .array-data 4
        0x1
        0xff
    .end array-data
.end method

.method public getFlipAnimation(II)Landroid/animation/ValueAnimator;
    .locals 3

    mul-int/lit8 p2, p2, 0x19

    mul-int/lit8 p2, p2, 0x3

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    iget v1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->e:F

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    add-int/lit16 v1, p2, 0x320

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance p2, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$CycleInterpolator2;

    invoke-direct {p2, p0}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$CycleInterpolator2;-><init>(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$c;

    invoke-direct {p2, p0}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$c;-><init>(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$d;

    invoke-direct {p2, p0, p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$d;-><init>(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;I)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/zui/timelaweather/R$layout;->clock_number_view_new:I

    invoke-static {v0, v1, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    sget v1, Lcom/zui/timelaweather/R$id;->number1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zui/timelaweather/View/WidgetTextView;

    iput-object v1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->a:Lcom/zui/timelaweather/View/WidgetTextView;

    sget v1, Lcom/zui/timelaweather/R$id;->number2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/timelaweather/View/WidgetTextView;

    iput-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->b:Lcom/zui/timelaweather/View/WidgetTextView;

    iput-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->c:Lcom/zui/timelaweather/View/WidgetTextView;

    iget-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->a:Lcom/zui/timelaweather/View/WidgetTextView;

    iput-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->d:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zui/timelaweather/R$dimen;->clock_time_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->e:F

    return-void
.end method

.method public setImageResource(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->c:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->d:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->d:Lcom/zui/timelaweather/View/WidgetTextView;

    const/high16 v0, 0x437f0000    # 255.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->c:Lcom/zui/timelaweather/View/WidgetTextView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method public setTextNumberColor(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 p1, -0x4d000000

    goto :goto_0

    :cond_0
    const p1, -0x19000001

    :goto_0
    iget-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->c:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-virtual {v0, p1}, Lcom/zui/timelaweather/View/WidgetTextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->d:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/View/WidgetTextView;->setTextColor(I)V

    return-void
.end method

.method public setTypeFace(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->c:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->d:Lcom/zui/timelaweather/View/WidgetTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
