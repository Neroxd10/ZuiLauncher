.class Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->getAlaphScaleAnimation(Ljava/lang/String;I)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;


# direct methods
.method constructor <init>(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;

    iput-object p2, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$b;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->c(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->a(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->a(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;

    invoke-static {v0}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->e(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->f(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->b(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;Lcom/zui/timelaweather/View/WidgetTextView;)Lcom/zui/timelaweather/View/WidgetTextView;

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->e(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->e(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->b(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;Lcom/zui/timelaweather/View/WidgetTextView;)Lcom/zui/timelaweather/View/WidgetTextView;

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->f(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object v0

    :goto_0
    invoke-static {p1, v0}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->d(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;Lcom/zui/timelaweather/View/WidgetTextView;)Lcom/zui/timelaweather/View/WidgetTextView;

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->a(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setScaleX(F)V

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->a(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setScaleY(F)V

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->a(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object p1

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->c(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->c(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setScaleX(F)V

    iget-object p0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;

    invoke-static {p0}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->c(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setScaleY(F)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->a(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->a(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->a(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object p1

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setScaleX(F)V

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->a(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setScaleY(F)V

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->c(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setScaleX(F)V

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->c(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setScaleY(F)V

    iget-object p0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;

    invoke-static {p0}, Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;->c(Lcom/zui/timelaweather/View/LenovoViewClockNumberNew;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object p0

    const/high16 p1, 0x437f0000    # 255.0f

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method
