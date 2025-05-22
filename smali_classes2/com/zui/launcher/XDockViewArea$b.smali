.class Lcom/zui/launcher/XDockViewArea$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/XDockViewArea;->i(Landroid/view/View;Z[FLandroid/animation/TimeInterpolator;Ljava/lang/Runnable;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Z

.field final synthetic c:[F

.field final synthetic d:Ljava/lang/Runnable;

.field final synthetic e:Lcom/zui/launcher/XDockViewArea;


# direct methods
.method constructor <init>(Lcom/zui/launcher/XDockViewArea;Landroid/view/View;Z[FLjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/XDockViewArea$b;->e:Lcom/zui/launcher/XDockViewArea;

    iput-object p2, p0, Lcom/zui/launcher/XDockViewArea$b;->a:Landroid/view/View;

    iput-boolean p3, p0, Lcom/zui/launcher/XDockViewArea$b;->b:Z

    iput-object p4, p0, Lcom/zui/launcher/XDockViewArea$b;->c:[F

    iput-object p5, p0, Lcom/zui/launcher/XDockViewArea$b;->d:Ljava/lang/Runnable;

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

    iget-object p0, p0, Lcom/zui/launcher/XDockViewArea$b;->d:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/zui/launcher/XDockViewArea$b;->e:Lcom/zui/launcher/XDockViewArea;

    iget-object v0, p0, Lcom/zui/launcher/XDockViewArea$b;->a:Landroid/view/View;

    iget-boolean v1, p0, Lcom/zui/launcher/XDockViewArea$b;->b:Z

    iget-object p0, p0, Lcom/zui/launcher/XDockViewArea$b;->c:[F

    invoke-static {p1, v0, v1, p0}, Lcom/zui/launcher/XDockViewArea;->d(Lcom/zui/launcher/XDockViewArea;Landroid/view/View;Z[F)V

    return-void
.end method
