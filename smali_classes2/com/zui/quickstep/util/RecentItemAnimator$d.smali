.class Lcom/zui/quickstep/util/RecentItemAnimator$d;
.super Lcom/zui/quickstep/util/RecentItemAnimator$i;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/util/RecentItemAnimator;->animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Landroidx/core/view/ViewPropertyAnimatorCompat;

.field final synthetic e:Lcom/zui/quickstep/util/RecentItemAnimator;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/util/RecentItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IILandroidx/core/view/ViewPropertyAnimatorCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/util/RecentItemAnimator$d;->e:Lcom/zui/quickstep/util/RecentItemAnimator;

    iput-object p2, p0, Lcom/zui/quickstep/util/RecentItemAnimator$d;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lcom/zui/quickstep/util/RecentItemAnimator$d;->b:I

    iput p4, p0, Lcom/zui/quickstep/util/RecentItemAnimator$d;->c:I

    iput-object p5, p0, Lcom/zui/quickstep/util/RecentItemAnimator$d;->d:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/util/RecentItemAnimator$i;-><init>(Lcom/zui/quickstep/util/RecentItemAnimator$a;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/zui/quickstep/util/RecentItemAnimator$d;->b:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    :cond_0
    iget p0, p0, Lcom/zui/quickstep/util/RecentItemAnimator$d;->c:I

    if-eqz p0, :cond_1

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/quickstep/util/RecentItemAnimator$d;->d:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget-object p1, p0, Lcom/zui/quickstep/util/RecentItemAnimator$d;->e:Lcom/zui/quickstep/util/RecentItemAnimator;

    iget-object v0, p0, Lcom/zui/quickstep/util/RecentItemAnimator$d;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object p1, p0, Lcom/zui/quickstep/util/RecentItemAnimator$d;->e:Lcom/zui/quickstep/util/RecentItemAnimator;

    invoke-static {p1}, Lcom/zui/quickstep/util/RecentItemAnimator;->h(Lcom/zui/quickstep/util/RecentItemAnimator;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/quickstep/util/RecentItemAnimator$d;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/zui/quickstep/util/RecentItemAnimator$d;->e:Lcom/zui/quickstep/util/RecentItemAnimator;

    invoke-static {p0}, Lcom/zui/quickstep/util/RecentItemAnimator;->i(Lcom/zui/quickstep/util/RecentItemAnimator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/quickstep/util/RecentItemAnimator$d;->e:Lcom/zui/quickstep/util/RecentItemAnimator;

    iget-object p0, p0, Lcom/zui/quickstep/util/RecentItemAnimator$d;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
