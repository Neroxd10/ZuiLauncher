.class Lcom/zui/timelaweather/View/LenovoViewClockNumberOne$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/timelaweather/View/LenovoViewClockNumberOne;->getFlipAnimation(II)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/timelaweather/View/LenovoViewClockNumberOne;


# direct methods
.method constructor <init>(Lcom/zui/timelaweather/View/LenovoViewClockNumberOne;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberOne$c;->a:Lcom/zui/timelaweather/View/LenovoViewClockNumberOne;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberOne$c;->a:Lcom/zui/timelaweather/View/LenovoViewClockNumberOne;

    invoke-static {v0}, Lcom/zui/timelaweather/View/LenovoViewClockNumberOne;->a(Lcom/zui/timelaweather/View/LenovoViewClockNumberOne;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberOne$c;->a:Lcom/zui/timelaweather/View/LenovoViewClockNumberOne;

    invoke-static {v1}, Lcom/zui/timelaweather/View/LenovoViewClockNumberOne;->g(Lcom/zui/timelaweather/View/LenovoViewClockNumberOne;)F

    move-result v1

    sub-float v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object p0, p0, Lcom/zui/timelaweather/View/LenovoViewClockNumberOne$c;->a:Lcom/zui/timelaweather/View/LenovoViewClockNumberOne;

    invoke-static {p0}, Lcom/zui/timelaweather/View/LenovoViewClockNumberOne;->c(Lcom/zui/timelaweather/View/LenovoViewClockNumberOne;)Lcom/zui/timelaweather/View/WidgetTextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void
.end method
