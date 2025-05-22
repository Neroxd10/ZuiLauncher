.class Lcom/zui/launcher/Launcher$e1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Launcher;->v0(Landroid/view/View;Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:Landroid/animation/ValueAnimator;

.field final synthetic e:Lcom/zui/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher;Landroid/view/View;FFLandroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher$e1;->e:Lcom/zui/launcher/Launcher;

    iput-object p2, p0, Lcom/zui/launcher/Launcher$e1;->a:Landroid/view/View;

    iput p3, p0, Lcom/zui/launcher/Launcher$e1;->b:F

    iput p4, p0, Lcom/zui/launcher/Launcher$e1;->c:F

    iput-object p5, p0, Lcom/zui/launcher/Launcher$e1;->d:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/zui/launcher/Launcher$e1;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher$e1;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher$e1;->a:Landroid/view/View;

    iget v1, p0, Lcom/zui/launcher/Launcher$e1;->b:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v1, v2

    mul-float/2addr v3, p1

    iget p1, p0, Lcom/zui/launcher/Launcher$e1;->c:F

    add-float/2addr v3, p1

    sub-float/2addr v3, v1

    sub-float/2addr p1, v2

    div-float/2addr v3, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/zui/launcher/Launcher$e1;->e:Lcom/zui/launcher/Launcher;

    iget-object p1, p1, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/PagedView;->isPageInTransition()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Launcher$e1;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method
