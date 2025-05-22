.class Lcom/zui/timelaweather/View/LenovoViewClockColon$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/timelaweather/View/LenovoViewClockColon;->startRevertAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/timelaweather/View/LenovoViewClockColon;


# direct methods
.method constructor <init>(Lcom/zui/timelaweather/View/LenovoViewClockColon;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClockColon$a;->a:Lcom/zui/timelaweather/View/LenovoViewClockColon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/zui/timelaweather/View/LenovoViewClockColon$a;->a:Lcom/zui/timelaweather/View/LenovoViewClockColon;

    invoke-static {v0}, Lcom/zui/timelaweather/View/LenovoViewClockColon;->a(Lcom/zui/timelaweather/View/LenovoViewClockColon;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object p0, p0, Lcom/zui/timelaweather/View/LenovoViewClockColon$a;->a:Lcom/zui/timelaweather/View/LenovoViewClockColon;

    invoke-static {p0}, Lcom/zui/timelaweather/View/LenovoViewClockColon;->b(Lcom/zui/timelaweather/View/LenovoViewClockColon;)Landroid/widget/ImageView;

    move-result-object p0

    const v0, 0x3fa66666    # 1.3f

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method
