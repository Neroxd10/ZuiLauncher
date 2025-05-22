.class public Lcom/zui/quickstep/util/RecentItemAnimator$DefaultAddVpaListener;
.super Lcom/zui/quickstep/util/RecentItemAnimator$i;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/util/RecentItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DefaultAddVpaListener"
.end annotation


# instance fields
.field a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic b:Lcom/zui/quickstep/util/RecentItemAnimator;


# direct methods
.method public constructor <init>(Lcom/zui/quickstep/util/RecentItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/util/RecentItemAnimator$DefaultAddVpaListener;->b:Lcom/zui/quickstep/util/RecentItemAnimator;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/util/RecentItemAnimator$i;-><init>(Lcom/zui/quickstep/util/RecentItemAnimator$a;)V

    iput-object p2, p0, Lcom/zui/quickstep/util/RecentItemAnimator$DefaultAddVpaListener;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Lcom/zui/quickstep/util/RecentItemAnimator;->clear(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Lcom/zui/quickstep/util/RecentItemAnimator;->clear(Landroid/view/View;)V

    iget-object p1, p0, Lcom/zui/quickstep/util/RecentItemAnimator$DefaultAddVpaListener;->b:Lcom/zui/quickstep/util/RecentItemAnimator;

    iget-object v0, p0, Lcom/zui/quickstep/util/RecentItemAnimator$DefaultAddVpaListener;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object p1, p0, Lcom/zui/quickstep/util/RecentItemAnimator$DefaultAddVpaListener;->b:Lcom/zui/quickstep/util/RecentItemAnimator;

    iget-object p1, p1, Lcom/zui/quickstep/util/RecentItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/zui/quickstep/util/RecentItemAnimator$DefaultAddVpaListener;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/zui/quickstep/util/RecentItemAnimator$DefaultAddVpaListener;->b:Lcom/zui/quickstep/util/RecentItemAnimator;

    invoke-static {p0}, Lcom/zui/quickstep/util/RecentItemAnimator;->i(Lcom/zui/quickstep/util/RecentItemAnimator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/quickstep/util/RecentItemAnimator$DefaultAddVpaListener;->b:Lcom/zui/quickstep/util/RecentItemAnimator;

    iget-object p0, p0, Lcom/zui/quickstep/util/RecentItemAnimator$DefaultAddVpaListener;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
