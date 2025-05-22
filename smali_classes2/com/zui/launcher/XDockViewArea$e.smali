.class Lcom/zui/launcher/XDockViewArea$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/XDockViewArea;->n(ZLandroid/animation/AnimatorSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/zui/launcher/XDockViewArea;


# direct methods
.method constructor <init>(Lcom/zui/launcher/XDockViewArea;FZII)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/XDockViewArea$e;->e:Lcom/zui/launcher/XDockViewArea;

    iput p2, p0, Lcom/zui/launcher/XDockViewArea$e;->a:F

    iput-boolean p3, p0, Lcom/zui/launcher/XDockViewArea$e;->b:Z

    iput p4, p0, Lcom/zui/launcher/XDockViewArea$e;->c:I

    iput p5, p0, Lcom/zui/launcher/XDockViewArea$e;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    iget-object p1, p0, Lcom/zui/launcher/XDockViewArea$e;->e:Lcom/zui/launcher/XDockViewArea;

    invoke-static {p1}, Lcom/zui/launcher/XDockViewArea;->f(Lcom/zui/launcher/XDockViewArea;)Landroid/view/View;

    move-result-object p1

    iget-boolean v0, p0, Lcom/zui/launcher/XDockViewArea$e;->b:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e4ccccd    # 0.2f

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewArea$e;->e:Lcom/zui/launcher/XDockViewArea;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    iget-object v4, p0, Lcom/zui/launcher/XDockViewArea$e;->e:Lcom/zui/launcher/XDockViewArea;

    invoke-static {v4}, Lcom/zui/launcher/XDockViewArea;->a(Lcom/zui/launcher/XDockViewArea;)Lcom/zui/launcher/XDockView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zui/launcher/XDockView;->getLayout()Lcom/zui/launcher/XDockViewLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-eqz p1, :cond_2

    if-ge v4, v3, :cond_2

    move v0, v3

    :cond_2
    iget-object v3, p0, Lcom/zui/launcher/XDockViewArea$e;->e:Lcom/zui/launcher/XDockViewArea;

    invoke-static {v3}, Lcom/zui/launcher/XDockViewArea;->f(Lcom/zui/launcher/XDockViewArea;)Landroid/view/View;

    move-result-object v3

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/zui/launcher/XDockViewArea$e;->e:Lcom/zui/launcher/XDockViewArea;

    invoke-static {v1}, Lcom/zui/launcher/XDockViewArea;->f(Lcom/zui/launcher/XDockViewArea;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/zui/launcher/XDockViewArea$e;->e:Lcom/zui/launcher/XDockViewArea;

    invoke-static {p1}, Lcom/zui/launcher/XDockViewArea;->f(Lcom/zui/launcher/XDockViewArea;)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/zui/launcher/XDockViewArea$e;->c:I

    iget p0, p0, Lcom/zui/launcher/XDockViewArea$e;->d:I

    add-int/2addr v0, p0

    int-to-float p0, v0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_3

    :cond_4
    iget-object p0, p0, Lcom/zui/launcher/XDockViewArea$e;->e:Lcom/zui/launcher/XDockViewArea;

    invoke-static {p0}, Lcom/zui/launcher/XDockViewArea;->f(Lcom/zui/launcher/XDockViewArea;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :goto_3
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/XDockViewArea$e;->e:Lcom/zui/launcher/XDockViewArea;

    invoke-static {p1}, Lcom/zui/launcher/XDockViewArea;->f(Lcom/zui/launcher/XDockViewArea;)Landroid/view/View;

    move-result-object p1

    iget p0, p0, Lcom/zui/launcher/XDockViewArea$e;->a:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
