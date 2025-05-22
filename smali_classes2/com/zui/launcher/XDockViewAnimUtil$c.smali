.class Lcom/zui/launcher/XDockViewAnimUtil$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/XDockViewAnimUtil;->getFolderItemScaleAnim(Lcom/zui/launcher/folder/FolderIcon;Landroid/view/View;[IJ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/folder/FolderIcon;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:F

.field final synthetic d:[I


# direct methods
.method constructor <init>(Lcom/zui/launcher/XDockViewAnimUtil;Lcom/zui/launcher/folder/FolderIcon;Landroid/view/View;F[I)V
    .locals 0

    iput-object p2, p0, Lcom/zui/launcher/XDockViewAnimUtil$c;->a:Lcom/zui/launcher/folder/FolderIcon;

    iput-object p3, p0, Lcom/zui/launcher/XDockViewAnimUtil$c;->b:Landroid/view/View;

    iput p4, p0, Lcom/zui/launcher/XDockViewAnimUtil$c;->c:F

    iput-object p5, p0, Lcom/zui/launcher/XDockViewAnimUtil$c;->d:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$c;->a:Lcom/zui/launcher/folder/FolderIcon;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setPivotX(F)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$c;->a:Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setPivotY(F)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$c;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$c;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$c;->b:Landroid/view/View;

    iget v0, p0, Lcom/zui/launcher/XDockViewAnimUtil$c;->c:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$c;->b:Landroid/view/View;

    iget v0, p0, Lcom/zui/launcher/XDockViewAnimUtil$c;->c:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$c;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/zui/launcher/XDockViewAnimUtil$c;->d:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$c;->b:Landroid/view/View;

    iget-object p0, p0, Lcom/zui/launcher/XDockViewAnimUtil$c;->d:[I

    const/4 v0, 0x1

    aget p0, p0, v0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setY(F)V

    return-void
.end method
