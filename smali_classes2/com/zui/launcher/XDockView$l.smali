.class Lcom/zui/launcher/XDockView$l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/XDockView;->dropToCurrentScreen(Lcom/zui/launcher/dragndrop/DragView;Lcom/zui/launcher/ItemInfo;[ILandroid/graphics/Rect;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:[I

.field final synthetic d:Lcom/zui/launcher/dragndrop/DragView;

.field final synthetic e:Lcom/zui/launcher/XDockView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/XDockView;Landroid/view/View;Landroid/view/View;[ILcom/zui/launcher/dragndrop/DragView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/XDockView$l;->e:Lcom/zui/launcher/XDockView;

    iput-object p2, p0, Lcom/zui/launcher/XDockView$l;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/zui/launcher/XDockView$l;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/zui/launcher/XDockView$l;->c:[I

    iput-object p5, p0, Lcom/zui/launcher/XDockView$l;->d:Lcom/zui/launcher/dragndrop/DragView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/XDockView$l;->e:Lcom/zui/launcher/XDockView;

    invoke-static {v0}, Lcom/zui/launcher/XDockView;->q(Lcom/zui/launcher/XDockView;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/XDockView$l;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/zui/launcher/XDockView$l;->e:Lcom/zui/launcher/XDockView;

    invoke-static {v0}, Lcom/zui/launcher/XDockView;->q(Lcom/zui/launcher/XDockView;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/XDockView$l;->e:Lcom/zui/launcher/XDockView;

    invoke-static {v0}, Lcom/zui/launcher/XDockView;->q(Lcom/zui/launcher/XDockView;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/XDockView$l;->e:Lcom/zui/launcher/XDockView;

    invoke-static {v1}, Lcom/zui/launcher/XDockView;->q(Lcom/zui/launcher/XDockView;)Lcom/zui/launcher/Launcher;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/XDockView$l;->b:Landroid/view/View;

    iget-object v3, p0, Lcom/zui/launcher/XDockView$l;->a:Landroid/view/View;

    invoke-virtual {v1, v0, v2, v3}, Lcom/zui/launcher/Launcher;->getFolderTargetPosition(Lcom/zui/launcher/folder/Folder;Landroid/view/View;Landroid/view/View;)[I

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    iget-object v4, p0, Lcom/zui/launcher/XDockView$l;->e:Lcom/zui/launcher/XDockView;

    invoke-static {v4}, Lcom/zui/launcher/XDockView;->q(Lcom/zui/launcher/XDockView;)Lcom/zui/launcher/Launcher;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lcom/zui/launcher/Launcher;->getFolderCenterPos(Lcom/zui/launcher/folder/Folder;[I)V

    const/4 v0, 0x0

    aget v4, v1, v0

    const/4 v5, 0x1

    if-lez v4, :cond_0

    aget v4, v1, v5

    if-gtz v4, :cond_2

    :cond_0
    aget v4, v3, v0

    iget-object v6, p0, Lcom/zui/launcher/XDockView$l;->a:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/2addr v6, v2

    sub-int/2addr v4, v6

    aput v4, v1, v0

    aget v0, v3, v5

    iget-object v3, p0, Lcom/zui/launcher/XDockView$l;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/2addr v3, v2

    sub-int/2addr v0, v3

    aput v0, v1, v5

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/XDockView$l;->e:Lcom/zui/launcher/XDockView;

    invoke-static {v0}, Lcom/zui/launcher/XDockView;->q(Lcom/zui/launcher/XDockView;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/XDockView$l;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/zui/launcher/XDockView$l;->a:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/Launcher;->getWorkspaceTargetPosition(Landroid/view/View;Landroid/view/View;)[I

    move-result-object v1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/zui/launcher/XDockView$l;->e:Lcom/zui/launcher/XDockView;

    invoke-static {v0}, Lcom/zui/launcher/XDockView;->i(Lcom/zui/launcher/XDockView;)Lcom/zui/launcher/XDockViewAnimUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/launcher/XDockView$l;->c:[I

    iget-object v3, p0, Lcom/zui/launcher/XDockView$l;->d:Lcom/zui/launcher/dragndrop/DragView;

    iget-object v4, p0, Lcom/zui/launcher/XDockView$l;->b:Landroid/view/View;

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/zui/launcher/XDockViewAnimUtil;->startDragViewAnim([ILandroid/view/View;[ILandroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/XDockView$l;->e:Lcom/zui/launcher/XDockView;

    iget-object p0, p0, Lcom/zui/launcher/XDockView;->mAnimatorSet:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
