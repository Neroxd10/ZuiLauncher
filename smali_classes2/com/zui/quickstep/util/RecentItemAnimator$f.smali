.class Lcom/zui/quickstep/util/RecentItemAnimator$f;
.super Lcom/zui/quickstep/util/RecentItemAnimator$i;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/util/RecentItemAnimator;->j(Lcom/zui/quickstep/util/RecentItemAnimator$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/util/RecentItemAnimator$g;

.field final synthetic b:Landroidx/core/view/ViewPropertyAnimatorCompat;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/zui/quickstep/util/RecentItemAnimator;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/util/RecentItemAnimator;Lcom/zui/quickstep/util/RecentItemAnimator$g;Landroidx/core/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/util/RecentItemAnimator$f;->d:Lcom/zui/quickstep/util/RecentItemAnimator;

    iput-object p2, p0, Lcom/zui/quickstep/util/RecentItemAnimator$f;->a:Lcom/zui/quickstep/util/RecentItemAnimator$g;

    iput-object p3, p0, Lcom/zui/quickstep/util/RecentItemAnimator$f;->b:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iput-object p4, p0, Lcom/zui/quickstep/util/RecentItemAnimator$f;->c:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/util/RecentItemAnimator$i;-><init>(Lcom/zui/quickstep/util/RecentItemAnimator$a;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/zui/quickstep/util/RecentItemAnimator$f;->b:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget-object p1, p0, Lcom/zui/quickstep/util/RecentItemAnimator$f;->c:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/zui/quickstep/util/RecentItemAnimator$f;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/zui/quickstep/util/RecentItemAnimator$f;->c:Landroid/view/View;

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/zui/quickstep/util/RecentItemAnimator$f;->d:Lcom/zui/quickstep/util/RecentItemAnimator;

    iget-object v0, p0, Lcom/zui/quickstep/util/RecentItemAnimator$f;->a:Lcom/zui/quickstep/util/RecentItemAnimator$g;

    iget-object v0, v0, Lcom/zui/quickstep/util/RecentItemAnimator$g;->b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    iget-object p1, p0, Lcom/zui/quickstep/util/RecentItemAnimator$f;->d:Lcom/zui/quickstep/util/RecentItemAnimator;

    invoke-static {p1}, Lcom/zui/quickstep/util/RecentItemAnimator;->c(Lcom/zui/quickstep/util/RecentItemAnimator;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/quickstep/util/RecentItemAnimator$f;->a:Lcom/zui/quickstep/util/RecentItemAnimator$g;

    iget-object v0, v0, Lcom/zui/quickstep/util/RecentItemAnimator$g;->b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/zui/quickstep/util/RecentItemAnimator$f;->d:Lcom/zui/quickstep/util/RecentItemAnimator;

    invoke-static {p0}, Lcom/zui/quickstep/util/RecentItemAnimator;->i(Lcom/zui/quickstep/util/RecentItemAnimator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/quickstep/util/RecentItemAnimator$f;->d:Lcom/zui/quickstep/util/RecentItemAnimator;

    iget-object p0, p0, Lcom/zui/quickstep/util/RecentItemAnimator$f;->a:Lcom/zui/quickstep/util/RecentItemAnimator$g;

    iget-object p0, p0, Lcom/zui/quickstep/util/RecentItemAnimator$g;->b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method
