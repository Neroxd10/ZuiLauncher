.class Lcom/zui/launcher/XDockViewAnimUtil$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/XDockViewAnimUtil;->getFolderItemScaleAnim(Lcom/zui/launcher/folder/FolderIcon;Landroid/view/View;[IJ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Landroid/view/View;

.field final synthetic c:[I


# direct methods
.method constructor <init>(Lcom/zui/launcher/XDockViewAnimUtil;FLandroid/view/View;[I)V
    .locals 0

    iput p2, p0, Lcom/zui/launcher/XDockViewAnimUtil$d;->a:F

    iput-object p3, p0, Lcom/zui/launcher/XDockViewAnimUtil$d;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/zui/launcher/XDockViewAnimUtil$d;->c:[I

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

    iget v0, p0, Lcom/zui/launcher/XDockViewAnimUtil$d;->a:F

    mul-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float/2addr v2, v0

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$d;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v2, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v2, p1

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$d;->b:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$d;->b:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$d;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/zui/launcher/XDockViewAnimUtil$d;->c:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    add-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$d;->b:Landroid/view/View;

    iget-object p0, p0, Lcom/zui/launcher/XDockViewAnimUtil$d;->c:[I

    const/4 v0, 0x1

    aget p0, p0, v0

    int-to-float p0, p0

    add-float/2addr p0, v2

    invoke-virtual {p1, p0}, Landroid/view/View;->setY(F)V

    return-void
.end method
