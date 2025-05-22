.class Lcom/zui/launcher/GlobalSearchView$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/GlobalSearchView;->onScrollUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/zui/launcher/GlobalSearchView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/GlobalSearchView;I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/GlobalSearchView$c;->b:Lcom/zui/launcher/GlobalSearchView;

    iput p2, p0, Lcom/zui/launcher/GlobalSearchView$c;->a:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView$c;->b:Lcom/zui/launcher/GlobalSearchView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/launcher/GlobalSearchView;->k(Lcom/zui/launcher/GlobalSearchView;Z)Z

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView$c;->b:Lcom/zui/launcher/GlobalSearchView;

    invoke-static {p1}, Lcom/zui/launcher/GlobalSearchView;->v(Lcom/zui/launcher/GlobalSearchView;)Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;->setIsAnim(Z)V

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView$c;->b:Lcom/zui/launcher/GlobalSearchView;

    invoke-static {p0}, Lcom/zui/launcher/GlobalSearchView;->l(Lcom/zui/launcher/GlobalSearchView;)Lcom/zui/launcher/globalsearch/PullScrollView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/globalsearch/PullScrollView;->setIsAlreadyTop(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView$c;->b:Lcom/zui/launcher/GlobalSearchView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/launcher/GlobalSearchView;->k(Lcom/zui/launcher/GlobalSearchView;Z)Z

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView$c;->b:Lcom/zui/launcher/GlobalSearchView;

    invoke-static {p1}, Lcom/zui/launcher/GlobalSearchView;->m(Lcom/zui/launcher/GlobalSearchView;)I

    move-result v1

    iget v2, p0, Lcom/zui/launcher/GlobalSearchView$c;->a:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/zui/launcher/GlobalSearchView$c;->b:Lcom/zui/launcher/GlobalSearchView;

    invoke-static {v2}, Lcom/zui/launcher/GlobalSearchView;->o(Lcom/zui/launcher/GlobalSearchView;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/zui/launcher/GlobalSearchView;->setMarginTop(I)V

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView$c;->b:Lcom/zui/launcher/GlobalSearchView;

    invoke-static {p1}, Lcom/zui/launcher/GlobalSearchView;->v(Lcom/zui/launcher/GlobalSearchView;)Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;->setIsAnim(Z)V

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView$c;->b:Lcom/zui/launcher/GlobalSearchView;

    invoke-static {p1}, Lcom/zui/launcher/GlobalSearchView;->p(Lcom/zui/launcher/GlobalSearchView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView$c;->b:Lcom/zui/launcher/GlobalSearchView;

    invoke-static {p0}, Lcom/zui/launcher/GlobalSearchView;->l(Lcom/zui/launcher/GlobalSearchView;)Lcom/zui/launcher/globalsearch/PullScrollView;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/globalsearch/PullScrollView;->setIsAlreadyTop(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView$c;->b:Lcom/zui/launcher/GlobalSearchView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/zui/launcher/GlobalSearchView;->k(Lcom/zui/launcher/GlobalSearchView;Z)Z

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView$c;->b:Lcom/zui/launcher/GlobalSearchView;

    invoke-static {p0}, Lcom/zui/launcher/GlobalSearchView;->l(Lcom/zui/launcher/GlobalSearchView;)Lcom/zui/launcher/globalsearch/PullScrollView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/globalsearch/PullScrollView;->setIsAlreadyTop(Z)V

    return-void
.end method
