.class Lcom/zui/launcher/dragndrop/DragView$g$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/dragndrop/DragView$g;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/dragndrop/DragView$g;


# direct methods
.method constructor <init>(Lcom/zui/launcher/dragndrop/DragView$g;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragView$g$a;->a:Lcom/zui/launcher/dragndrop/DragView$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {}, Lcom/zui/launcher/dragndrop/DragView;->l()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragView$g$a;->a:Lcom/zui/launcher/dragndrop/DragView$g;

    iget-object v1, v1, Lcom/zui/launcher/dragndrop/DragView$g;->e:Lcom/zui/launcher/dragndrop/DragView;

    invoke-static {}, Lcom/zui/launcher/dragndrop/DragView;->l()F

    move-result v3

    sub-float/2addr v3, v2

    mul-float/2addr v3, v0

    add-float/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/zui/launcher/dragndrop/DragView;->setAlpha(F)V

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragView$g$a;->a:Lcom/zui/launcher/dragndrop/DragView$g;

    iget-object v1, v1, Lcom/zui/launcher/dragndrop/DragView$g;->e:Lcom/zui/launcher/dragndrop/DragView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragView$g$a;->a:Lcom/zui/launcher/dragndrop/DragView$g;

    iget-object v1, p1, Lcom/zui/launcher/dragndrop/DragView$g;->e:Lcom/zui/launcher/dragndrop/DragView;

    iget v2, p1, Lcom/zui/launcher/dragndrop/DragView$g;->a:I

    int-to-float v2, v2

    iget p1, p1, Lcom/zui/launcher/dragndrop/DragView$g;->b:I

    int-to-float p1, p1

    mul-float/2addr p1, v0

    add-float/2addr v2, p1

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragView$g$a;->a:Lcom/zui/launcher/dragndrop/DragView$g;

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragView$g;->e:Lcom/zui/launcher/dragndrop/DragView;

    iget v1, p0, Lcom/zui/launcher/dragndrop/DragView$g;->c:I

    int-to-float v1, v1

    iget p0, p0, Lcom/zui/launcher/dragndrop/DragView$g;->d:I

    int-to-float p0, p0

    mul-float/2addr v0, p0

    add-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    return-void
.end method
