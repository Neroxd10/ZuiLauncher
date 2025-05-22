.class Lcom/zui/launcher/XDockViewAnimUtil$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/XDockViewAnimUtil;->getSpreadFolderAnim(Landroid/view/View;Lcom/zui/launcher/folder/FolderIcon;Landroid/view/View;[I[IJ)Landroid/animation/ValueAnimator;
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

.field final synthetic e:Landroid/view/View;

.field final synthetic f:Lcom/zui/launcher/XDockViewAnimUtil;


# direct methods
.method constructor <init>(Lcom/zui/launcher/XDockViewAnimUtil;Lcom/zui/launcher/folder/FolderIcon;Landroid/view/View;F[ILandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$a;->f:Lcom/zui/launcher/XDockViewAnimUtil;

    iput-object p2, p0, Lcom/zui/launcher/XDockViewAnimUtil$a;->a:Lcom/zui/launcher/folder/FolderIcon;

    iput-object p3, p0, Lcom/zui/launcher/XDockViewAnimUtil$a;->b:Landroid/view/View;

    iput p4, p0, Lcom/zui/launcher/XDockViewAnimUtil$a;->c:F

    iput-object p5, p0, Lcom/zui/launcher/XDockViewAnimUtil$a;->d:[I

    iput-object p6, p0, Lcom/zui/launcher/XDockViewAnimUtil$a;->e:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$a;->e:Landroid/view/View;

    instance-of v0, p1, Lcom/zui/launcher/WorkspaceIconCompat;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/zui/launcher/WorkspaceIconCompat;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/zui/launcher/WorkspaceIconCompat;->setShadowsEnabled(Z)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$a;->e:Landroid/view/View;

    check-cast p1, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {p1, v0}, Lcom/zui/launcher/WorkspaceIconCompat;->setTextVisibility(Z)V

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$a;->e:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$a;->f:Lcom/zui/launcher/XDockViewAnimUtil;

    invoke-static {p1}, Lcom/zui/launcher/XDockViewAnimUtil;->c(Lcom/zui/launcher/XDockViewAnimUtil;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/XDockViewAnimUtil$a;->b:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$a;->a:Lcom/zui/launcher/folder/FolderIcon;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setPivotX(F)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$a;->a:Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setPivotY(F)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$a;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$a;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    iget p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$a;->c:F

    iget-object v0, p0, Lcom/zui/launcher/XDockViewAnimUtil$a;->f:Lcom/zui/launcher/XDockViewAnimUtil;

    invoke-static {v0}, Lcom/zui/launcher/XDockViewAnimUtil;->a(Lcom/zui/launcher/XDockViewAnimUtil;)Lcom/zui/launcher/XDockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/XDockView;->getItemScale()F

    move-result v0

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcom/zui/launcher/XDockViewAnimUtil$a;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/zui/launcher/XDockViewAnimUtil$a;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$a;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/zui/launcher/XDockViewAnimUtil$a;->d:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$a;->b:Landroid/view/View;

    iget-object p0, p0, Lcom/zui/launcher/XDockViewAnimUtil$a;->d:[I

    const/4 v0, 0x1

    aget p0, p0, v0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setY(F)V

    return-void
.end method
