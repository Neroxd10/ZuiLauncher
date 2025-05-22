.class Lcom/zui/launcher/XDockViewAnimUtil$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/XDockViewAnimUtil;->getSpreadFolderAnim(Landroid/view/View;Lcom/zui/launcher/folder/FolderIcon;Landroid/view/View;[I[IJ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:F

.field final synthetic c:[I

.field final synthetic d:[I

.field final synthetic e:Lcom/zui/launcher/XDockViewAnimUtil;


# direct methods
.method constructor <init>(Lcom/zui/launcher/XDockViewAnimUtil;Landroid/view/View;F[I[I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$b;->e:Lcom/zui/launcher/XDockViewAnimUtil;

    iput-object p2, p0, Lcom/zui/launcher/XDockViewAnimUtil$b;->a:Landroid/view/View;

    iput p3, p0, Lcom/zui/launcher/XDockViewAnimUtil$b;->b:F

    iput-object p4, p0, Lcom/zui/launcher/XDockViewAnimUtil$b;->c:[I

    iput-object p5, p0, Lcom/zui/launcher/XDockViewAnimUtil$b;->d:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/XDockViewAnimUtil$b;->a:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    iget-object v1, p0, Lcom/zui/launcher/XDockViewAnimUtil$b;->a:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    iget v1, p0, Lcom/zui/launcher/XDockViewAnimUtil$b;->b:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iget-object v0, p0, Lcom/zui/launcher/XDockViewAnimUtil$b;->e:Lcom/zui/launcher/XDockViewAnimUtil;

    invoke-static {v0}, Lcom/zui/launcher/XDockViewAnimUtil;->a(Lcom/zui/launcher/XDockViewAnimUtil;)Lcom/zui/launcher/XDockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/XDockView;->getItemScale()F

    move-result v0

    mul-float/2addr v1, v0

    iget-object v0, p0, Lcom/zui/launcher/XDockViewAnimUtil$b;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/zui/launcher/XDockViewAnimUtil$b;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/zui/launcher/XDockViewAnimUtil$b;->e:Lcom/zui/launcher/XDockViewAnimUtil;

    iget-object v1, p0, Lcom/zui/launcher/XDockViewAnimUtil$b;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/zui/launcher/XDockViewAnimUtil$b;->c:[I

    iget-object p0, p0, Lcom/zui/launcher/XDockViewAnimUtil$b;->d:[I

    invoke-static {v0, v1, v2, p0, p1}, Lcom/zui/launcher/XDockViewAnimUtil;->d(Lcom/zui/launcher/XDockViewAnimUtil;Landroid/view/View;[I[ILandroid/animation/ValueAnimator;)V

    return-void
.end method
