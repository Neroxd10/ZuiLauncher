.class Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;->animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$a;->c:Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$a;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$a;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$a;->c:Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$a;->b:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;->a(Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;Landroid/view/View;)V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$a;->b:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$a;->c:Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;->b(Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$a;->c:Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$a;->b:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;->a(Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;Landroid/view/View;)V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$a;->c:Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;->c(Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$a;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$a;->b:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$a;->c:Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$a;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$a;->c:Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;

    invoke-virtual {p1}, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$a;->c:Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationsFinished()V

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$a;->c:Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;->b(Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$a;->c:Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$a;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
