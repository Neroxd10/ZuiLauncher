.class Lcom/zui/timelaweather/View/LenovoViewClockNumber$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/timelaweather/View/LenovoViewClockNumber;->getAlaphScaleAnimation(II)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/timelaweather/View/LenovoViewClockNumber;


# direct methods
.method constructor <init>(Lcom/zui/timelaweather/View/LenovoViewClockNumber;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumber$a;->a:Lcom/zui/timelaweather/View/LenovoViewClockNumber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v2, v0, v1

    float-to-int v2, v2

    int-to-float v2, v2

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v2, v3

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    const v4, 0x3f333333    # 0.7f

    add-float v5, v2, v4

    sub-float v2, v1, v2

    iget-object v6, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumber$a;->a:Lcom/zui/timelaweather/View/LenovoViewClockNumber;

    invoke-static {v6}, Lcom/zui/timelaweather/View/LenovoViewClockNumber;->a(Lcom/zui/timelaweather/View/LenovoViewClockNumber;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    cmpl-float p1, v5, v1

    if-lez p1, :cond_0

    move v5, v1

    :cond_0
    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumber$a;->a:Lcom/zui/timelaweather/View/LenovoViewClockNumber;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumber;->a(Lcom/zui/timelaweather/View/LenovoViewClockNumber;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumber$a;->a:Lcom/zui/timelaweather/View/LenovoViewClockNumber;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumber;->a(Lcom/zui/timelaweather/View/LenovoViewClockNumber;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setScaleY(F)V

    const p1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, p1

    sub-float/2addr v3, v0

    cmpg-float p1, v3, v1

    if-gez p1, :cond_1

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumber$a;->a:Lcom/zui/timelaweather/View/LenovoViewClockNumber;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumber;->c(Lcom/zui/timelaweather/View/LenovoViewClockNumber;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumber$a;->a:Lcom/zui/timelaweather/View/LenovoViewClockNumber;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumber;->c(Lcom/zui/timelaweather/View/LenovoViewClockNumber;)Landroid/widget/ImageView;

    move-result-object p1

    float-to-int v0, v3

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    cmpg-float p1, v2, v4

    if-gtz p1, :cond_2

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumber$a;->a:Lcom/zui/timelaweather/View/LenovoViewClockNumber;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClockNumber;->c(Lcom/zui/timelaweather/View/LenovoViewClockNumber;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object p0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumber$a;->a:Lcom/zui/timelaweather/View/LenovoViewClockNumber;

    invoke-static {p0}, Lcom/zui/timelaweather/View/LenovoViewClockNumber;->c(Lcom/zui/timelaweather/View/LenovoViewClockNumber;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method
