.class Lcom/zui/launcher/anim/RevealOutlineAnimation$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/anim/RevealOutlineAnimation;->createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/view/ViewOutlineProvider;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:F

.field final synthetic e:Lcom/zui/launcher/anim/RevealOutlineAnimation;


# direct methods
.method constructor <init>(Lcom/zui/launcher/anim/RevealOutlineAnimation;Landroid/view/View;F)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/anim/RevealOutlineAnimation$a;->e:Lcom/zui/launcher/anim/RevealOutlineAnimation;

    iput-object p2, p0, Lcom/zui/launcher/anim/RevealOutlineAnimation$a;->c:Landroid/view/View;

    iput p3, p0, Lcom/zui/launcher/anim/RevealOutlineAnimation$a;->d:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/anim/RevealOutlineAnimation$a;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/zui/launcher/anim/RevealOutlineAnimation$a;->b:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object p1, p0, Lcom/zui/launcher/anim/RevealOutlineAnimation$a;->c:Landroid/view/View;

    iget-boolean v0, p0, Lcom/zui/launcher/anim/RevealOutlineAnimation$a;->a:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    iget-object p1, p0, Lcom/zui/launcher/anim/RevealOutlineAnimation$a;->e:Lcom/zui/launcher/anim/RevealOutlineAnimation;

    invoke-virtual {p1}, Lcom/zui/launcher/anim/RevealOutlineAnimation;->shouldRemoveElevationDuringAnimation()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/anim/RevealOutlineAnimation$a;->c:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationZ(F)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/anim/RevealOutlineAnimation$a;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getClipToOutline()Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/launcher/anim/RevealOutlineAnimation$a;->a:Z

    iget-object p1, p0, Lcom/zui/launcher/anim/RevealOutlineAnimation$a;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/anim/RevealOutlineAnimation$a;->b:Landroid/view/ViewOutlineProvider;

    iget-object p1, p0, Lcom/zui/launcher/anim/RevealOutlineAnimation$a;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/zui/launcher/anim/RevealOutlineAnimation$a;->e:Lcom/zui/launcher/anim/RevealOutlineAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object p1, p0, Lcom/zui/launcher/anim/RevealOutlineAnimation$a;->c:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    iget-object p1, p0, Lcom/zui/launcher/anim/RevealOutlineAnimation$a;->e:Lcom/zui/launcher/anim/RevealOutlineAnimation;

    invoke-virtual {p1}, Lcom/zui/launcher/anim/RevealOutlineAnimation;->shouldRemoveElevationDuringAnimation()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/anim/RevealOutlineAnimation$a;->c:Landroid/view/View;

    iget p0, p0, Lcom/zui/launcher/anim/RevealOutlineAnimation$a;->d:F

    neg-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationZ(F)V

    :cond_0
    return-void
.end method
