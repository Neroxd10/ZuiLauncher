.class Lcom/zui/launcher/dragndrop/DragLayer$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/dragndrop/DragLayer;->animateView(Lcom/zui/launcher/dragndrop/DragDeleteView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/dragndrop/DragDeleteView;

.field final synthetic b:Landroid/view/animation/Interpolator;

.field final synthetic c:Landroid/view/animation/Interpolator;

.field final synthetic d:F

.field final synthetic e:F

.field final synthetic f:F

.field final synthetic g:F

.field final synthetic h:F

.field final synthetic i:F

.field final synthetic j:F

.field final synthetic k:Landroid/graphics/Rect;

.field final synthetic l:Landroid/graphics/Rect;

.field final synthetic m:Lcom/zui/launcher/dragndrop/DragLayer;


# direct methods
.method constructor <init>(Lcom/zui/launcher/dragndrop/DragLayer;Lcom/zui/launcher/dragndrop/DragDeleteView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FFFFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragLayer$c;->m:Lcom/zui/launcher/dragndrop/DragLayer;

    iput-object p2, p0, Lcom/zui/launcher/dragndrop/DragLayer$c;->a:Lcom/zui/launcher/dragndrop/DragDeleteView;

    iput-object p3, p0, Lcom/zui/launcher/dragndrop/DragLayer$c;->b:Landroid/view/animation/Interpolator;

    iput-object p4, p0, Lcom/zui/launcher/dragndrop/DragLayer$c;->c:Landroid/view/animation/Interpolator;

    iput p5, p0, Lcom/zui/launcher/dragndrop/DragLayer$c;->d:F

    iput p6, p0, Lcom/zui/launcher/dragndrop/DragLayer$c;->e:F

    iput p7, p0, Lcom/zui/launcher/dragndrop/DragLayer$c;->f:F

    iput p8, p0, Lcom/zui/launcher/dragndrop/DragLayer$c;->g:F

    iput p9, p0, Lcom/zui/launcher/dragndrop/DragLayer$c;->h:F

    iput p10, p0, Lcom/zui/launcher/dragndrop/DragLayer$c;->i:F

    iput p11, p0, Lcom/zui/launcher/dragndrop/DragLayer$c;->j:F

    iput-object p12, p0, Lcom/zui/launcher/dragndrop/DragLayer$c;->k:Landroid/graphics/Rect;

    iput-object p13, p0, Lcom/zui/launcher/dragndrop/DragLayer$c;->l:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragLayer$c;->a:Lcom/zui/launcher/dragndrop/DragDeleteView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragLayer$c;->a:Lcom/zui/launcher/dragndrop/DragDeleteView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragLayer$c;->b:Landroid/view/animation/Interpolator;

    if-nez v2, :cond_0

    move v2, p1

    goto :goto_0

    :cond_0
    invoke-interface {v2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    :goto_0
    iget-object v3, p0, Lcom/zui/launcher/dragndrop/DragLayer$c;->c:Landroid/view/animation/Interpolator;

    if-nez v3, :cond_1

    move v3, p1

    goto :goto_1

    :cond_1
    invoke-interface {v3, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    :goto_1
    iget v4, p0, Lcom/zui/launcher/dragndrop/DragLayer$c;->d:F

    iget v5, p0, Lcom/zui/launcher/dragndrop/DragLayer$c;->e:F

    mul-float/2addr v4, v5

    iget v6, p0, Lcom/zui/launcher/dragndrop/DragLayer$c;->f:F

    mul-float/2addr v6, v5

    iget v5, p0, Lcom/zui/launcher/dragndrop/DragLayer$c;->g:F

    mul-float/2addr v5, p1

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v8, v7, p1

    mul-float v9, v4, v8

    add-float/2addr v5, v9

    iget v9, p0, Lcom/zui/launcher/dragndrop/DragLayer$c;->h:F

    mul-float/2addr v9, p1

    mul-float/2addr v8, v6

    add-float/2addr v9, v8

    iget p1, p0, Lcom/zui/launcher/dragndrop/DragLayer$c;->i:F

    mul-float/2addr p1, v2

    iget v8, p0, Lcom/zui/launcher/dragndrop/DragLayer$c;->j:F

    sub-float v2, v7, v2

    mul-float/2addr v8, v2

    add-float/2addr p1, v8

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragLayer$c;->k:Landroid/graphics/Rect;

    iget v8, v2, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    sub-float/2addr v4, v7

    int-to-float v0, v0

    mul-float/2addr v4, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v4, v0

    add-float/2addr v8, v4

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v6, v7

    int-to-float v1, v1

    mul-float/2addr v6, v1

    div-float/2addr v6, v0

    add-float/2addr v2, v6

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragLayer$c;->l:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr v0, v8

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v8, v0

    float-to-int v0, v8

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragLayer$c;->l:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    float-to-int v1, v2

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragLayer$c;->m:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-static {v2}, Lcom/zui/launcher/dragndrop/DragLayer;->d(Lcom/zui/launcher/dragndrop/DragLayer;)Lcom/zui/launcher/dragndrop/DragDeleteView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragLayer$c;->m:Lcom/zui/launcher/dragndrop/DragLayer;

    iget-object v3, v2, Lcom/zui/launcher/dragndrop/DragLayer;->k:Landroid/view/View;

    if-eqz v3, :cond_2

    iget v2, v2, Lcom/zui/launcher/dragndrop/DragLayer;->j:I

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragLayer$c;->m:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-static {v2}, Lcom/zui/launcher/dragndrop/DragLayer;->d(Lcom/zui/launcher/dragndrop/DragLayer;)Lcom/zui/launcher/dragndrop/DragDeleteView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragLayer$c;->m:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-static {v2}, Lcom/zui/launcher/dragndrop/DragLayer;->d(Lcom/zui/launcher/dragndrop/DragLayer;)Lcom/zui/launcher/dragndrop/DragDeleteView;

    move-result-object v2

    instance-of v2, v2, Lcom/zui/launcher/dragndrop/DragWidgetDeleteIcon;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragLayer$c;->m:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-static {v2}, Lcom/zui/launcher/dragndrop/DragLayer;->d(Lcom/zui/launcher/dragndrop/DragLayer;)Lcom/zui/launcher/dragndrop/DragDeleteView;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/dragndrop/DragWidgetDeleteIcon;

    invoke-virtual {v2}, Lcom/zui/launcher/dragndrop/DragWidgetDeleteIcon;->getWidthOffset()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragLayer$c;->m:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-static {v2}, Lcom/zui/launcher/dragndrop/DragLayer;->d(Lcom/zui/launcher/dragndrop/DragLayer;)Lcom/zui/launcher/dragndrop/DragDeleteView;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/dragndrop/DragWidgetDeleteIcon;

    invoke-virtual {v2}, Lcom/zui/launcher/dragndrop/DragWidgetDeleteIcon;->getHeightOffset()I

    move-result v2

    sub-int/2addr v1, v2

    :cond_3
    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragLayer$c;->m:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-static {v2}, Lcom/zui/launcher/dragndrop/DragLayer;->d(Lcom/zui/launcher/dragndrop/DragLayer;)Lcom/zui/launcher/dragndrop/DragDeleteView;

    move-result-object v2

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragLayer$c;->m:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-static {v0}, Lcom/zui/launcher/dragndrop/DragLayer;->d(Lcom/zui/launcher/dragndrop/DragLayer;)Lcom/zui/launcher/dragndrop/DragDeleteView;

    move-result-object v0

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragLayer$c;->m:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-static {v0}, Lcom/zui/launcher/dragndrop/DragLayer;->d(Lcom/zui/launcher/dragndrop/DragLayer;)Lcom/zui/launcher/dragndrop/DragDeleteView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragLayer$c;->m:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-static {v0}, Lcom/zui/launcher/dragndrop/DragLayer;->d(Lcom/zui/launcher/dragndrop/DragLayer;)Lcom/zui/launcher/dragndrop/DragDeleteView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setScaleY(F)V

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragLayer$c;->m:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-static {p0}, Lcom/zui/launcher/dragndrop/DragLayer;->d(Lcom/zui/launcher/dragndrop/DragLayer;)Lcom/zui/launcher/dragndrop/DragDeleteView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
