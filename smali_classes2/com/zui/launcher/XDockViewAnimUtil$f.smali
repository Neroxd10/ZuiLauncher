.class Lcom/zui/launcher/XDockViewAnimUtil$f;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/XDockViewAnimUtil;->getToWorkSpaceAnim(Landroid/view/View;Landroid/view/View;Landroid/view/View;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:[I

.field final synthetic d:Landroid/view/View;

.field final synthetic e:[I

.field final synthetic f:Lcom/zui/launcher/XDockViewAnimUtil;


# direct methods
.method constructor <init>(Lcom/zui/launcher/XDockViewAnimUtil;Landroid/view/View;Landroid/view/View;[ILandroid/view/View;[I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$f;->f:Lcom/zui/launcher/XDockViewAnimUtil;

    iput-object p2, p0, Lcom/zui/launcher/XDockViewAnimUtil$f;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/zui/launcher/XDockViewAnimUtil$f;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/zui/launcher/XDockViewAnimUtil$f;->c:[I

    iput-object p5, p0, Lcom/zui/launcher/XDockViewAnimUtil$f;->d:Landroid/view/View;

    iput-object p6, p0, Lcom/zui/launcher/XDockViewAnimUtil$f;->e:[I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/XDockViewAnimUtil$f;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$f;->f:Lcom/zui/launcher/XDockViewAnimUtil;

    invoke-static {p1}, Lcom/zui/launcher/XDockViewAnimUtil;->c(Lcom/zui/launcher/XDockViewAnimUtil;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$f;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$f;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/XDockViewAnimUtil$f;->f:Lcom/zui/launcher/XDockViewAnimUtil;

    invoke-static {v0}, Lcom/zui/launcher/XDockViewAnimUtil;->c(Lcom/zui/launcher/XDockViewAnimUtil;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->getCurrentDropLayout()Lcom/zui/launcher/CellLayout;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$f;->d:Landroid/view/View;

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$f;->d:Landroid/view/View;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$f;->f:Lcom/zui/launcher/XDockViewAnimUtil;

    invoke-static {p1}, Lcom/zui/launcher/XDockViewAnimUtil;->c(Lcom/zui/launcher/XDockViewAnimUtil;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/XDockViewAnimUtil$f;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$f;->f:Lcom/zui/launcher/XDockViewAnimUtil;

    invoke-static {p1}, Lcom/zui/launcher/XDockViewAnimUtil;->c(Lcom/zui/launcher/XDockViewAnimUtil;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    iget-object p0, p0, Lcom/zui/launcher/XDockViewAnimUtil$f;->f:Lcom/zui/launcher/XDockViewAnimUtil;

    invoke-static {p0}, Lcom/zui/launcher/XDockViewAnimUtil;->c(Lcom/zui/launcher/XDockViewAnimUtil;)Lcom/zui/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 7

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$f;->a:Landroid/view/View;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/XDockViewAnimUtil$f;->b:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/zui/launcher/XDockViewAnimUtil$f;->f:Lcom/zui/launcher/XDockViewAnimUtil;

    iget-object v2, p0, Lcom/zui/launcher/XDockViewAnimUtil$f;->b:Landroid/view/View;

    iget-object v3, p0, Lcom/zui/launcher/XDockViewAnimUtil$f;->c:[I

    iget-object v4, p0, Lcom/zui/launcher/XDockViewAnimUtil$f;->d:Landroid/view/View;

    iget-object v5, p0, Lcom/zui/launcher/XDockViewAnimUtil$f;->e:[I

    iget-object v6, p0, Lcom/zui/launcher/XDockViewAnimUtil$f;->a:Landroid/view/View;

    invoke-static/range {v1 .. v6}, Lcom/zui/launcher/XDockViewAnimUtil;->b(Lcom/zui/launcher/XDockViewAnimUtil;Landroid/view/View;[ILandroid/view/View;[ILandroid/view/View;)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$f;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/zui/launcher/XDockViewAnimUtil$f;->c:[I

    aget v1, v1, v0

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setX(F)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$f;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/zui/launcher/XDockViewAnimUtil$f;->c:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setY(F)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$f;->f:Lcom/zui/launcher/XDockViewAnimUtil;

    invoke-static {p1}, Lcom/zui/launcher/XDockViewAnimUtil;->a(Lcom/zui/launcher/XDockViewAnimUtil;)Lcom/zui/launcher/XDockView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$f;->f:Lcom/zui/launcher/XDockViewAnimUtil;

    invoke-static {p1}, Lcom/zui/launcher/XDockViewAnimUtil;->a(Lcom/zui/launcher/XDockViewAnimUtil;)Lcom/zui/launcher/XDockView;

    move-result-object p1

    iget-object v1, p0, Lcom/zui/launcher/XDockViewAnimUtil$f;->b:Landroid/view/View;

    invoke-virtual {p1, v1, v2}, Lcom/zui/launcher/XDockView;->removeDockItem(Landroid/view/View;Z)V

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$f;->c:[I

    aget p1, p1, v0

    iget-object v0, p0, Lcom/zui/launcher/XDockViewAnimUtil$f;->f:Lcom/zui/launcher/XDockViewAnimUtil;

    invoke-static {v0}, Lcom/zui/launcher/XDockViewAnimUtil;->c(Lcom/zui/launcher/XDockViewAnimUtil;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    if-le p1, v0, :cond_2

    iget-object p0, p0, Lcom/zui/launcher/XDockViewAnimUtil$f;->f:Lcom/zui/launcher/XDockViewAnimUtil;

    invoke-static {p0}, Lcom/zui/launcher/XDockViewAnimUtil;->c(Lcom/zui/launcher/XDockViewAnimUtil;)Lcom/zui/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->dismissDockView()V

    :cond_2
    :goto_0
    return-void
.end method
