.class Lcom/zui/launcher/XDockViewAnimUtil$h;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/XDockViewAnimUtil;->getToFolderIconAnim(Landroid/view/View;Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/folder/FolderIcon;Landroid/view/View;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:[I

.field final synthetic d:Lcom/zui/launcher/folder/FolderIcon;

.field final synthetic e:[I

.field final synthetic f:Lcom/zui/launcher/XDockViewAnimUtil;


# direct methods
.method constructor <init>(Lcom/zui/launcher/XDockViewAnimUtil;Landroid/view/View;Landroid/view/View;[ILcom/zui/launcher/folder/FolderIcon;[I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$h;->f:Lcom/zui/launcher/XDockViewAnimUtil;

    iput-object p2, p0, Lcom/zui/launcher/XDockViewAnimUtil$h;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/zui/launcher/XDockViewAnimUtil$h;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/zui/launcher/XDockViewAnimUtil$h;->c:[I

    iput-object p5, p0, Lcom/zui/launcher/XDockViewAnimUtil$h;->d:Lcom/zui/launcher/folder/FolderIcon;

    iput-object p6, p0, Lcom/zui/launcher/XDockViewAnimUtil$h;->e:[I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$h;->b:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$h;->f:Lcom/zui/launcher/XDockViewAnimUtil;

    invoke-static {p1}, Lcom/zui/launcher/XDockViewAnimUtil;->a(Lcom/zui/launcher/XDockViewAnimUtil;)Lcom/zui/launcher/XDockView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$h;->f:Lcom/zui/launcher/XDockViewAnimUtil;

    invoke-static {p1}, Lcom/zui/launcher/XDockViewAnimUtil;->a(Lcom/zui/launcher/XDockViewAnimUtil;)Lcom/zui/launcher/XDockView;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/XDockViewAnimUtil$h;->b:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/zui/launcher/XDockView;->removeDockItem(Landroid/view/View;Z)V

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$h;->f:Lcom/zui/launcher/XDockViewAnimUtil;

    invoke-static {p1}, Lcom/zui/launcher/XDockViewAnimUtil;->c(Lcom/zui/launcher/XDockViewAnimUtil;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/XDockViewAnimUtil$h;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$h;->d:Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$h;->f:Lcom/zui/launcher/XDockViewAnimUtil;

    invoke-static {p1}, Lcom/zui/launcher/XDockViewAnimUtil;->c(Lcom/zui/launcher/XDockViewAnimUtil;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    iget-object p0, p0, Lcom/zui/launcher/XDockViewAnimUtil$h;->f:Lcom/zui/launcher/XDockViewAnimUtil;

    invoke-static {p0}, Lcom/zui/launcher/XDockViewAnimUtil;->c(Lcom/zui/launcher/XDockViewAnimUtil;)Lcom/zui/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$h;->a:Landroid/view/View;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/XDockViewAnimUtil$h;->b:Landroid/view/View;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$h;->f:Lcom/zui/launcher/XDockViewAnimUtil;

    invoke-static {p1}, Lcom/zui/launcher/XDockViewAnimUtil;->a(Lcom/zui/launcher/XDockViewAnimUtil;)Lcom/zui/launcher/XDockView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/XDockView;->isStackMode()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$h;->f:Lcom/zui/launcher/XDockViewAnimUtil;

    invoke-static {p1}, Lcom/zui/launcher/XDockViewAnimUtil;->a(Lcom/zui/launcher/XDockViewAnimUtil;)Lcom/zui/launcher/XDockView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/XDockView;->getLayout()Lcom/zui/launcher/XDockViewLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/XDockViewLayout;->getStackPosition()[I

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$h;->f:Lcom/zui/launcher/XDockViewAnimUtil;

    invoke-static {p1}, Lcom/zui/launcher/XDockViewAnimUtil;->c(Lcom/zui/launcher/XDockViewAnimUtil;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    iget-object v1, p0, Lcom/zui/launcher/XDockViewAnimUtil$h;->b:Landroid/view/View;

    invoke-virtual {p1, v1}, Lcom/zui/launcher/Launcher;->getLocationPosition(Landroid/view/View;)[I

    move-result-object p1

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/XDockViewAnimUtil$h;->c:[I

    aget v2, p1, v0

    aput v2, v1, v0

    const/4 v2, 0x1

    aget p1, p1, v2

    aput p1, v1, v2

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$h;->f:Lcom/zui/launcher/XDockViewAnimUtil;

    invoke-static {p1}, Lcom/zui/launcher/XDockViewAnimUtil;->c(Lcom/zui/launcher/XDockViewAnimUtil;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    iget-object v1, p0, Lcom/zui/launcher/XDockViewAnimUtil$h;->d:Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p1, v1}, Lcom/zui/launcher/Launcher;->getLocationPosition(Landroid/view/View;)[I

    move-result-object p1

    iget-object v1, p0, Lcom/zui/launcher/XDockViewAnimUtil$h;->e:[I

    aget v3, p1, v0

    aput v3, v1, v0

    aget p1, p1, v2

    aput p1, v1, v2

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$h;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/zui/launcher/XDockViewAnimUtil$h;->c:[I

    aget v1, v1, v0

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setX(F)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$h;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/zui/launcher/XDockViewAnimUtil$h;->c:[I

    aget v1, v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setY(F)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$h;->f:Lcom/zui/launcher/XDockViewAnimUtil;

    invoke-static {p1}, Lcom/zui/launcher/XDockViewAnimUtil;->a(Lcom/zui/launcher/XDockViewAnimUtil;)Lcom/zui/launcher/XDockView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$h;->f:Lcom/zui/launcher/XDockViewAnimUtil;

    invoke-static {p1}, Lcom/zui/launcher/XDockViewAnimUtil;->a(Lcom/zui/launcher/XDockViewAnimUtil;)Lcom/zui/launcher/XDockView;

    move-result-object p1

    iget-object v1, p0, Lcom/zui/launcher/XDockViewAnimUtil$h;->b:Landroid/view/View;

    invoke-virtual {p1, v1, v2}, Lcom/zui/launcher/XDockView;->removeDockItem(Landroid/view/View;Z)V

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$h;->c:[I

    aget p1, p1, v0

    iget-object v0, p0, Lcom/zui/launcher/XDockViewAnimUtil$h;->f:Lcom/zui/launcher/XDockViewAnimUtil;

    invoke-static {v0}, Lcom/zui/launcher/XDockViewAnimUtil;->c(Lcom/zui/launcher/XDockViewAnimUtil;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    if-le p1, v0, :cond_3

    iget-object p0, p0, Lcom/zui/launcher/XDockViewAnimUtil$h;->f:Lcom/zui/launcher/XDockViewAnimUtil;

    invoke-static {p0}, Lcom/zui/launcher/XDockViewAnimUtil;->c(Lcom/zui/launcher/XDockViewAnimUtil;)Lcom/zui/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->dismissDockView()V

    :cond_3
    :goto_1
    return-void
.end method
