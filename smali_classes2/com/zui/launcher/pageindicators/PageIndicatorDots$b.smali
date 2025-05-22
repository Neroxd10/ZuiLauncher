.class Lcom/zui/launcher/pageindicators/PageIndicatorDots$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/pageindicators/PageIndicatorDots;->playEntryAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/zui/launcher/pageindicators/PageIndicatorDots;


# direct methods
.method constructor <init>(Lcom/zui/launcher/pageindicators/PageIndicatorDots;I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots$b;->b:Lcom/zui/launcher/pageindicators/PageIndicatorDots;

    iput p2, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots$b;->b:Lcom/zui/launcher/pageindicators/PageIndicatorDots;

    invoke-static {v0}, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->c(Lcom/zui/launcher/pageindicators/PageIndicatorDots;)[F

    move-result-object v0

    iget v1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots$b;->a:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    aput p1, v0, v1

    iget-object p0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots$b;->b:Lcom/zui/launcher/pageindicators/PageIndicatorDots;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
