.class Lcom/zui/launcher/XDockViewAnimUtil$k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/XDockViewAnimUtil;->startDragViewAnim([ILandroid/view/View;[ILandroid/view/View;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:Landroid/view/View;

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:I

.field final synthetic h:Lcom/zui/launcher/XDockViewAnimUtil;


# direct methods
.method constructor <init>(Lcom/zui/launcher/XDockViewAnimUtil;FFLandroid/view/View;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$k;->h:Lcom/zui/launcher/XDockViewAnimUtil;

    iput p2, p0, Lcom/zui/launcher/XDockViewAnimUtil$k;->a:F

    iput p3, p0, Lcom/zui/launcher/XDockViewAnimUtil$k;->b:F

    iput-object p4, p0, Lcom/zui/launcher/XDockViewAnimUtil$k;->c:Landroid/view/View;

    iput p5, p0, Lcom/zui/launcher/XDockViewAnimUtil$k;->d:I

    iput p6, p0, Lcom/zui/launcher/XDockViewAnimUtil$k;->e:I

    iput p7, p0, Lcom/zui/launcher/XDockViewAnimUtil$k;->f:I

    iput p8, p0, Lcom/zui/launcher/XDockViewAnimUtil$k;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/zui/launcher/XDockViewAnimUtil$k;->a:F

    mul-float v1, v0, p1

    iget v2, p0, Lcom/zui/launcher/XDockViewAnimUtil$k;->b:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p1

    mul-float v4, v2, v3

    add-float/2addr v1, v4

    mul-float/2addr v0, p1

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/zui/launcher/XDockViewAnimUtil$k;->c:Landroid/view/View;

    iget v3, p0, Lcom/zui/launcher/XDockViewAnimUtil$k;->d:I

    int-to-float v3, v3

    iget v4, p0, Lcom/zui/launcher/XDockViewAnimUtil$k;->e:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    iget-object v2, p0, Lcom/zui/launcher/XDockViewAnimUtil$k;->c:Landroid/view/View;

    iget v3, p0, Lcom/zui/launcher/XDockViewAnimUtil$k;->f:I

    int-to-float v3, v3

    iget v4, p0, Lcom/zui/launcher/XDockViewAnimUtil$k;->g:I

    int-to-float v4, v4

    mul-float/2addr p1, v4

    add-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$k;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotX(F)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$k;->c:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$k;->c:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$k;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$k;->h:Lcom/zui/launcher/XDockViewAnimUtil;

    invoke-static {p1}, Lcom/zui/launcher/XDockViewAnimUtil;->c(Lcom/zui/launcher/XDockViewAnimUtil;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$k;->h:Lcom/zui/launcher/XDockViewAnimUtil;

    invoke-static {p1}, Lcom/zui/launcher/XDockViewAnimUtil;->c(Lcom/zui/launcher/XDockViewAnimUtil;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/XDockViewAnimUtil$k;->h:Lcom/zui/launcher/XDockViewAnimUtil;

    invoke-static {p0}, Lcom/zui/launcher/XDockViewAnimUtil;->c(Lcom/zui/launcher/XDockViewAnimUtil;)Lcom/zui/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method
