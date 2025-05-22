.class Lcom/zui/launcher/dragndrop/DragDeleteView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/dragndrop/DragDeleteView;-><init>(Lcom/zui/launcher/Launcher;IIIF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:Lcom/zui/launcher/dragndrop/DragDeleteView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/dragndrop/DragDeleteView;FF)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView$a;->c:Lcom/zui/launcher/dragndrop/DragDeleteView;

    iput p2, p0, Lcom/zui/launcher/dragndrop/DragDeleteView$a;->a:F

    iput p3, p0, Lcom/zui/launcher/dragndrop/DragDeleteView$a;->b:F

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

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView$a;->c:Lcom/zui/launcher/dragndrop/DragDeleteView;

    iget v2, v1, Lcom/zui/launcher/dragndrop/DragDeleteView;->mTargetOffsetX:F

    mul-float/2addr v2, v0

    invoke-static {v1}, Lcom/zui/launcher/dragndrop/DragDeleteView;->a(Lcom/zui/launcher/dragndrop/DragDeleteView;)F

    move-result v1

    sub-float/2addr v2, v1

    float-to-int v1, v2

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragDeleteView$a;->c:Lcom/zui/launcher/dragndrop/DragDeleteView;

    iget v3, v2, Lcom/zui/launcher/dragndrop/DragDeleteView;->mTargetOffsetY:F

    mul-float/2addr v3, v0

    invoke-static {v2}, Lcom/zui/launcher/dragndrop/DragDeleteView;->d(Lcom/zui/launcher/dragndrop/DragDeleteView;)F

    move-result v2

    sub-float/2addr v3, v2

    float-to-int v2, v3

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/DragDeleteView$a;->c:Lcom/zui/launcher/dragndrop/DragDeleteView;

    int-to-float v1, v1

    invoke-static {v3, v1}, Lcom/zui/launcher/dragndrop/DragDeleteView;->c(Lcom/zui/launcher/dragndrop/DragDeleteView;F)F

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/DragDeleteView$a;->c:Lcom/zui/launcher/dragndrop/DragDeleteView;

    int-to-float v2, v2

    invoke-static {v3, v2}, Lcom/zui/launcher/dragndrop/DragDeleteView;->f(Lcom/zui/launcher/dragndrop/DragDeleteView;F)F

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/DragDeleteView$a;->c:Lcom/zui/launcher/dragndrop/DragDeleteView;

    iget v4, p0, Lcom/zui/launcher/dragndrop/DragDeleteView$a;->a:F

    iget v5, p0, Lcom/zui/launcher/dragndrop/DragDeleteView$a;->b:F

    sub-float/2addr v5, v4

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleX(F)V

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/DragDeleteView$a;->c:Lcom/zui/launcher/dragndrop/DragDeleteView;

    iget v4, p0, Lcom/zui/launcher/dragndrop/DragDeleteView$a;->a:F

    iget v5, p0, Lcom/zui/launcher/dragndrop/DragDeleteView$a;->b:F

    sub-float/2addr v5, v4

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleY(F)V

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/DragDeleteView$a;->c:Lcom/zui/launcher/dragndrop/DragDeleteView;

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v0

    const/high16 v5, 0x42960000    # 75.0f

    mul-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/zui/launcher/dragndrop/DragDeleteView;->g(Lcom/zui/launcher/dragndrop/DragDeleteView;F)F

    const v3, 0x3e4ccccd    # 0.2f

    cmpg-float v4, v0, v3

    if-gez v4, :cond_0

    iget-object v4, p0, Lcom/zui/launcher/dragndrop/DragDeleteView$a;->c:Lcom/zui/launcher/dragndrop/DragDeleteView;

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v0, v5

    div-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v4, v0}, Lcom/zui/launcher/dragndrop/DragDeleteView;->h(Lcom/zui/launcher/dragndrop/DragDeleteView;I)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView$a;->c:Lcom/zui/launcher/dragndrop/DragDeleteView;

    const/16 v3, 0xff

    invoke-static {v0, v3}, Lcom/zui/launcher/dragndrop/DragDeleteView;->h(Lcom/zui/launcher/dragndrop/DragDeleteView;I)I

    :goto_0
    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView$a;->c:Lcom/zui/launcher/dragndrop/DragDeleteView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView$a;->c:Lcom/zui/launcher/dragndrop/DragDeleteView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView$a;->c:Lcom/zui/launcher/dragndrop/DragDeleteView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    add-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView$a;->c:Lcom/zui/launcher/dragndrop/DragDeleteView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_1
    return-void
.end method
