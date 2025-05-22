.class Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;->f(Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$d;

.field final synthetic b:I

.field final synthetic c:Landroid/view/View;

.field final synthetic d:I

.field final synthetic e:Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$d;ILandroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$b;->e:Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$b;->a:Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$d;

    iput p3, p0, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$b;->b:I

    iput-object p4, p0, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$b;->c:Landroid/view/View;

    iput p5, p0, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$b;->d:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$b;->b:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$b;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    iget p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$b;->d:I

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$b;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$b;->e:Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$b;->a:Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$d;

    invoke-static {v0}, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$d;->a(Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$d;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$b;->e:Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;->d(Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$b;->a:Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$d;

    invoke-static {v0}, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$d;->a(Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$d;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$b;->e:Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;

    invoke-virtual {p1}, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$b;->e:Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationsFinished()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$b;->e:Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$b;->a:Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$d;

    invoke-static {p0}, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$d;->a(Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator$d;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
