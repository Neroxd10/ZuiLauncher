.class public Lcom/zui/timelaweather/View/LenovoViewClockColon;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field c:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/zui/timelaweather/View/LenovoViewClockColon;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/View/LenovoViewClockColon;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/timelaweather/View/LenovoViewClockColon;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/View/LenovoViewClockColon;->a:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/zui/timelaweather/R$layout;->clock_colon_view:I

    invoke-static {v0, v1, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/zui/timelaweather/R$id;->colonTop:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zui/timelaweather/View/LenovoViewClockColon;->b:Landroid/widget/ImageView;

    sget v1, Lcom/zui/timelaweather/R$id;->colonBottom:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockColon;->a:Landroid/widget/ImageView;

    return-void
.end method

.method public setConlonColor(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockColon;->a:Landroid/widget/ImageView;

    sget v0, Lcom/zui/timelaweather/R$drawable;->dot_black:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/zui/timelaweather/View/LenovoViewClockColon;->b:Landroid/widget/ImageView;

    sget p1, Lcom/zui/timelaweather/R$drawable;->dot_black:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockColon;->a:Landroid/widget/ImageView;

    sget v0, Lcom/zui/timelaweather/R$drawable;->dot:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/zui/timelaweather/View/LenovoViewClockColon;->b:Landroid/widget/ImageView;

    sget p1, Lcom/zui/timelaweather/R$drawable;->dot:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public startRevertAnim()V
    .locals 4

    iget-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockColon;->c:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/timelaweather/View/LenovoViewClockColon;->c:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/zui/timelaweather/View/LenovoViewClockColon;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockColon;->c:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockColon;->c:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/zui/timelaweather/View/LenovoViewClockColon$a;

    invoke-direct {v1, p0}, Lcom/zui/timelaweather/View/LenovoViewClockColon$a;-><init>(Lcom/zui/timelaweather/View/LenovoViewClockColon;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/zui/timelaweather/View/LenovoViewClockColon;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public stopRevertAnim()V
    .locals 1

    iget-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockColon;->c:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockColon;->c:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method
