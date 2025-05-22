.class Lcom/zui/launcher/dragndrop/DragView$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/dragndrop/DragView;-><init>(Lcom/zui/launcher/Launcher;Landroid/graphics/Bitmap;IIIIIIFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:Lcom/zui/launcher/dragndrop/DragView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/dragndrop/DragView;FFFF)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragView$f;->e:Lcom/zui/launcher/dragndrop/DragView;

    iput p2, p0, Lcom/zui/launcher/dragndrop/DragView$f;->a:F

    iput p3, p0, Lcom/zui/launcher/dragndrop/DragView$f;->b:F

    iput p4, p0, Lcom/zui/launcher/dragndrop/DragView$f;->c:F

    iput p5, p0, Lcom/zui/launcher/dragndrop/DragView$f;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/zui/launcher/dragndrop/DragView$f;->a:F

    mul-float/2addr v1, v0

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragView$f;->e:Lcom/zui/launcher/dragndrop/DragView;

    invoke-static {v2}, Lcom/zui/launcher/dragndrop/DragView;->h(Lcom/zui/launcher/dragndrop/DragView;)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/zui/launcher/dragndrop/DragView$f;->b:F

    mul-float/2addr v2, v0

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/DragView$f;->e:Lcom/zui/launcher/dragndrop/DragView;

    invoke-static {v3}, Lcom/zui/launcher/dragndrop/DragView;->j(Lcom/zui/launcher/dragndrop/DragView;)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/DragView$f;->e:Lcom/zui/launcher/dragndrop/DragView;

    int-to-float v1, v1

    invoke-static {v3, v1}, Lcom/zui/launcher/dragndrop/DragView;->i(Lcom/zui/launcher/dragndrop/DragView;F)F

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/DragView$f;->e:Lcom/zui/launcher/dragndrop/DragView;

    int-to-float v2, v2

    invoke-static {v3, v2}, Lcom/zui/launcher/dragndrop/DragView;->k(Lcom/zui/launcher/dragndrop/DragView;F)F

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/DragView$f;->e:Lcom/zui/launcher/dragndrop/DragView;

    iget v4, p0, Lcom/zui/launcher/dragndrop/DragView$f;->c:F

    iget v5, p0, Lcom/zui/launcher/dragndrop/DragView$f;->d:F

    sub-float/2addr v5, v4

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleX(F)V

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/DragView$f;->e:Lcom/zui/launcher/dragndrop/DragView;

    iget v4, p0, Lcom/zui/launcher/dragndrop/DragView$f;->c:F

    iget v5, p0, Lcom/zui/launcher/dragndrop/DragView$f;->d:F

    sub-float/2addr v5, v4

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleY(F)V

    invoke-static {}, Lcom/zui/launcher/dragndrop/DragView;->l()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/DragView$f;->e:Lcom/zui/launcher/dragndrop/DragView;

    invoke-static {}, Lcom/zui/launcher/dragndrop/DragView;->l()F

    move-result v5

    mul-float/2addr v5, v0

    sub-float/2addr v4, v0

    add-float/2addr v5, v4

    invoke-virtual {v3, v5}, Lcom/zui/launcher/dragndrop/DragView;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragView$f;->e:Lcom/zui/launcher/dragndrop/DragView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragView$f;->e:Lcom/zui/launcher/dragndrop/DragView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragView$f;->e:Lcom/zui/launcher/dragndrop/DragView;

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p1

    add-float/2addr p1, v2

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    return-void
.end method
