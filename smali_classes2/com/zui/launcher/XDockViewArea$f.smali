.class Lcom/zui/launcher/XDockViewArea$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/XDockViewArea;->n(ZLandroid/animation/AnimatorSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:Lcom/zui/launcher/XDockViewArea;


# direct methods
.method constructor <init>(Lcom/zui/launcher/XDockViewArea;IIFF)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/XDockViewArea$f;->e:Lcom/zui/launcher/XDockViewArea;

    iput p2, p0, Lcom/zui/launcher/XDockViewArea$f;->a:I

    iput p3, p0, Lcom/zui/launcher/XDockViewArea$f;->b:I

    iput p4, p0, Lcom/zui/launcher/XDockViewArea$f;->c:F

    iput p5, p0, Lcom/zui/launcher/XDockViewArea$f;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/zui/launcher/XDockViewArea$f;->e:Lcom/zui/launcher/XDockViewArea;

    invoke-static {v0}, Lcom/zui/launcher/XDockViewArea;->f(Lcom/zui/launcher/XDockViewArea;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/zui/launcher/XDockViewArea$f;->a:I

    int-to-float v1, v1

    iget v2, p0, Lcom/zui/launcher/XDockViewArea$f;->b:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/zui/launcher/XDockViewArea$f;->e:Lcom/zui/launcher/XDockViewArea;

    invoke-static {v0}, Lcom/zui/launcher/XDockViewArea;->f(Lcom/zui/launcher/XDockViewArea;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/zui/launcher/XDockViewArea$f;->c:F

    iget p0, p0, Lcom/zui/launcher/XDockViewArea$f;->d:F

    sub-float/2addr v1, p0

    mul-float/2addr v1, p1

    add-float/2addr v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
