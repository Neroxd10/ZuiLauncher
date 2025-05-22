.class Lcom/zui/timelaweather/View/LenovoViewClockNumber$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/timelaweather/View/LenovoViewClockNumber;->getAlaphScaleAnimation(II)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/zui/timelaweather/View/LenovoViewClockNumber;


# direct methods
.method constructor <init>(Lcom/zui/timelaweather/View/LenovoViewClockNumber;I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumber$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumber;

    iput p2, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumber$b;->a:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumber$b;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumber$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumber;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumber;->c(Lcom/zui/timelaweather/View/LenovoViewClockNumber;)Landroid/widget/ImageView;

    move-result-object p1

    iget v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumber$b;->a:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumber$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumber;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumber;->a(Lcom/zui/timelaweather/View/LenovoViewClockNumber;)Landroid/widget/ImageView;

    move-result-object p1

    iget v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumber$b;->a:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumber$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumber;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumber;->a(Lcom/zui/timelaweather/View/LenovoViewClockNumber;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumber$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumber;

    invoke-static {v0}, Lcom/zui/timelaweather/View/LenovoViewClockNumber;->e(Lcom/zui/timelaweather/View/LenovoViewClockNumber;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumber$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumber;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumber;->f(Lcom/zui/timelaweather/View/LenovoViewClockNumber;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zui/timelaweather/View/LenovoViewClockNumber;->b(Lcom/zui/timelaweather/View/LenovoViewClockNumber;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumber$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumber;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumber;->e(Lcom/zui/timelaweather/View/LenovoViewClockNumber;)Landroid/widget/ImageView;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumber$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumber;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumber;->e(Lcom/zui/timelaweather/View/LenovoViewClockNumber;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zui/timelaweather/View/LenovoViewClockNumber;->b(Lcom/zui/timelaweather/View/LenovoViewClockNumber;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumber$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumber;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumber;->f(Lcom/zui/timelaweather/View/LenovoViewClockNumber;)Landroid/widget/ImageView;

    move-result-object v0

    :goto_0
    invoke-static {p1, v0}, Lcom/zui/timelaweather/View/LenovoViewClockNumber;->d(Lcom/zui/timelaweather/View/LenovoViewClockNumber;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumber$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumber;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumber;->a(Lcom/zui/timelaweather/View/LenovoViewClockNumber;)Landroid/widget/ImageView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumber$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumber;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumber;->a(Lcom/zui/timelaweather/View/LenovoViewClockNumber;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumber$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumber;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumber;->a(Lcom/zui/timelaweather/View/LenovoViewClockNumber;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v1, 0xff

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumber$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumber;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumber;->c(Lcom/zui/timelaweather/View/LenovoViewClockNumber;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumber$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumber;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumber;->c(Lcom/zui/timelaweather/View/LenovoViewClockNumber;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object p0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumber$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumber;

    invoke-static {p0}, Lcom/zui/timelaweather/View/LenovoViewClockNumber;->c(Lcom/zui/timelaweather/View/LenovoViewClockNumber;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumber$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumber;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumber;->a(Lcom/zui/timelaweather/View/LenovoViewClockNumber;)Landroid/widget/ImageView;

    move-result-object p1

    iget v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumber$b;->a:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumber$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumber;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumber;->a(Lcom/zui/timelaweather/View/LenovoViewClockNumber;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumber$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumber;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumber;->a(Lcom/zui/timelaweather/View/LenovoViewClockNumber;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumber$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumber;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumber;->a(Lcom/zui/timelaweather/View/LenovoViewClockNumber;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumber$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumber;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumber;->c(Lcom/zui/timelaweather/View/LenovoViewClockNumber;)Landroid/widget/ImageView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumber$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumber;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumber;->c(Lcom/zui/timelaweather/View/LenovoViewClockNumber;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object p0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumber$b;->b:Lcom/zui/timelaweather/View/LenovoViewClockNumber;

    invoke-static {p0}, Lcom/zui/timelaweather/View/LenovoViewClockNumber;->c(Lcom/zui/timelaweather/View/LenovoViewClockNumber;)Landroid/widget/ImageView;

    move-result-object p0

    const/16 p1, 0xff

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    return-void
.end method
