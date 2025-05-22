.class Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$d;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->getFlipAnimation(II)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;


# direct methods
.method constructor <init>(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$d;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;

    iput p2, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$d;->a:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$d;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$d;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->a(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$d;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->c(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$d;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;

    invoke-static {v0}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->g(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$d;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->c(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object p1

    iget v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$d;->a:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$d;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->a(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$d;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;

    invoke-static {v0}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->e(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$d;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->f(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->b(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;Lcom/zui/timelaweather/View/WidgetTextView;)Lcom/zui/timelaweather/View/WidgetTextView;

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$d;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->e(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$d;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->e(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->b(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;Lcom/zui/timelaweather/View/WidgetTextView;)Lcom/zui/timelaweather/View/WidgetTextView;

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$d;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->f(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object v0

    :goto_0
    invoke-static {p1, v0}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->d(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;Lcom/zui/timelaweather/View/WidgetTextView;)Lcom/zui/timelaweather/View/WidgetTextView;

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$d;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->a(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    iget-object p0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$d;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;

    invoke-static {p0}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->c(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$d;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->a(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object p1

    iget p0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$d;->a:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
