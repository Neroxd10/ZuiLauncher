.class Lcom/zui/launcher/allapps/FloatingHeaderView$a;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/allapps/FloatingHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/allapps/FloatingHeaderView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/allapps/FloatingHeaderView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView$a;->a:Lcom/zui/launcher/allapps/FloatingHeaderView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    iget-object p2, p0, Lcom/zui/launcher/allapps/FloatingHeaderView$a;->a:Lcom/zui/launcher/allapps/FloatingHeaderView;

    invoke-static {p2}, Lcom/zui/launcher/allapps/FloatingHeaderView;->a(Lcom/zui/launcher/allapps/FloatingHeaderView;)Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    move-result-object p2

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView$a;->a:Lcom/zui/launcher/allapps/FloatingHeaderView;

    invoke-static {p1}, Lcom/zui/launcher/allapps/FloatingHeaderView;->b(Lcom/zui/launcher/allapps/FloatingHeaderView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView$a;->a:Lcom/zui/launcher/allapps/FloatingHeaderView;

    invoke-static {p1}, Lcom/zui/launcher/allapps/FloatingHeaderView;->b(Lcom/zui/launcher/allapps/FloatingHeaderView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/allapps/FloatingHeaderView$a;->a:Lcom/zui/launcher/allapps/FloatingHeaderView;

    invoke-static {p1}, Lcom/zui/launcher/allapps/FloatingHeaderView;->a(Lcom/zui/launcher/allapps/FloatingHeaderView;)Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->getCurrentScrollY()I

    move-result p1

    neg-int p1, p1

    iget-object p2, p0, Lcom/zui/launcher/allapps/FloatingHeaderView$a;->a:Lcom/zui/launcher/allapps/FloatingHeaderView;

    invoke-static {p2, p1}, Lcom/zui/launcher/allapps/FloatingHeaderView;->c(Lcom/zui/launcher/allapps/FloatingHeaderView;I)V

    iget-object p0, p0, Lcom/zui/launcher/allapps/FloatingHeaderView$a;->a:Lcom/zui/launcher/allapps/FloatingHeaderView;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/FloatingHeaderView;->applyVerticalMove()V

    return-void
.end method
