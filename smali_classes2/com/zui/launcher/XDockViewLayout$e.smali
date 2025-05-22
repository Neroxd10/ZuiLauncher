.class Lcom/zui/launcher/XDockViewLayout$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/XDockViewLayout;->n(Landroid/view/View;Lcom/zui/launcher/ItemInfo;IIIZ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/zui/launcher/ItemInfo;

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:Lcom/zui/launcher/XDockViewLayout;


# direct methods
.method constructor <init>(Lcom/zui/launcher/XDockViewLayout;Landroid/view/View;Lcom/zui/launcher/ItemInfo;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/XDockViewLayout$e;->e:Lcom/zui/launcher/XDockViewLayout;

    iput-object p2, p0, Lcom/zui/launcher/XDockViewLayout$e;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/zui/launcher/XDockViewLayout$e;->b:Lcom/zui/launcher/ItemInfo;

    iput p4, p0, Lcom/zui/launcher/XDockViewLayout$e;->c:I

    iput-boolean p5, p0, Lcom/zui/launcher/XDockViewLayout$e;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/zui/launcher/XDockViewLayout$e;->e:Lcom/zui/launcher/XDockViewLayout;

    iget-object v0, p0, Lcom/zui/launcher/XDockViewLayout$e;->a:Landroid/view/View;

    iget v1, p0, Lcom/zui/launcher/XDockViewLayout$e;->c:I

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/zui/launcher/XDockViewLayout;->b(Lcom/zui/launcher/XDockViewLayout;Landroid/view/View;F)V

    iget-boolean p1, p0, Lcom/zui/launcher/XDockViewLayout$e;->d:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/XDockViewLayout$e;->e:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {p1}, Lcom/zui/launcher/XDockViewLayout;->adjustLayout()V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewLayout$e;->e:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    iget-object p0, p0, Lcom/zui/launcher/XDockViewLayout$e;->e:Lcom/zui/launcher/XDockViewLayout;

    invoke-static {p0}, Lcom/zui/launcher/XDockViewLayout;->f(Lcom/zui/launcher/XDockViewLayout;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/XDockViewLayout$e;->e:Lcom/zui/launcher/XDockViewLayout;

    iget-object v0, p0, Lcom/zui/launcher/XDockViewLayout$e;->a:Landroid/view/View;

    iget-object p0, p0, Lcom/zui/launcher/XDockViewLayout$e;->b:Lcom/zui/launcher/ItemInfo;

    iget p0, p0, Lcom/zui/launcher/ItemInfo;->dockCellX:I

    invoke-static {p1, v0, p0}, Lcom/zui/launcher/XDockViewLayout;->i(Lcom/zui/launcher/XDockViewLayout;Landroid/view/View;I)V

    return-void
.end method
