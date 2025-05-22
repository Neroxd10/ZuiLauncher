.class Lcom/zui/timelaweather/View/LenovoViewClockNumberThree$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/timelaweather/View/LenovoViewClockNumberThree;->getAlaphScaleAnimation(Ljava/lang/String;I)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/timelaweather/View/LenovoViewClockNumberThree;


# direct methods
.method constructor <init>(Lcom/zui/timelaweather/View/LenovoViewClockNumberThree;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberThree$a;->a:Lcom/zui/timelaweather/View/LenovoViewClockNumberThree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v1, p1, v0

    float-to-int v1, v1

    int-to-float v1, v1

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const v3, 0x3f333333    # 0.7f

    add-float v4, v1, v3

    sub-float v1, v0, v1

    iget-object v5, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberThree$a;->a:Lcom/zui/timelaweather/View/LenovoViewClockNumberThree;

    invoke-static {v5}, Lcom/zui/timelaweather/View/LenovoViewClockNumberThree;->a(Lcom/zui/timelaweather/View/LenovoViewClockNumberThree;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setAlpha(F)V

    cmpl-float v5, v4, v0

    if-lez v5, :cond_0

    move v4, v0

    :cond_0
    iget-object v5, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberThree$a;->a:Lcom/zui/timelaweather/View/LenovoViewClockNumberThree;

    invoke-static {v5}, Lcom/zui/timelaweather/View/LenovoViewClockNumberThree;->a(Lcom/zui/timelaweather/View/LenovoViewClockNumberThree;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setScaleX(F)V

    iget-object v5, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberThree$a;->a:Lcom/zui/timelaweather/View/LenovoViewClockNumberThree;

    invoke-static {v5}, Lcom/zui/timelaweather/View/LenovoViewClockNumberThree;->a(Lcom/zui/timelaweather/View/LenovoViewClockNumberThree;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setScaleY(F)V

    const v4, 0x3f99999a    # 1.2f

    mul-float/2addr p1, v4

    sub-float/2addr v2, p1

    cmpg-float p1, v2, v0

    if-gez p1, :cond_1

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberThree$a;->a:Lcom/zui/timelaweather/View/LenovoViewClockNumberThree;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumberThree;->c(Lcom/zui/timelaweather/View/LenovoViewClockNumberThree;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberThree$a;->a:Lcom/zui/timelaweather/View/LenovoViewClockNumberThree;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumberThree;->c(Lcom/zui/timelaweather/View/LenovoViewClockNumberThree;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object p1

    float-to-int v0, v2

    int-to-float v0, v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    cmpg-float p1, v1, v3

    if-gtz p1, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberThree$a;->a:Lcom/zui/timelaweather/View/LenovoViewClockNumberThree;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumberThree;->c(Lcom/zui/timelaweather/View/LenovoViewClockNumberThree;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setScaleX(F)V

    iget-object p0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberThree$a;->a:Lcom/zui/timelaweather/View/LenovoViewClockNumberThree;

    invoke-static {p0}, Lcom/zui/timelaweather/View/LenovoViewClockNumberThree;->c(Lcom/zui/timelaweather/View/LenovoViewClockNumberThree;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setScaleY(F)V

    return-void
.end method
