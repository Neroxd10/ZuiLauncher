.class Lcom/zui/quickstep/OverviewCommandHelper$e;
.super Lcom/zui/quickstep/OverviewCommandHelper$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/OverviewCommandHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field private final g:Z


# direct methods
.method constructor <init>(Lcom/zui/quickstep/OverviewCommandHelper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/OverviewCommandHelper$c;-><init>(Lcom/zui/quickstep/OverviewCommandHelper;)V

    iput-boolean p2, p0, Lcom/zui/quickstep/OverviewCommandHelper$e;->g:Z

    return-void
.end method


# virtual methods
.method protected c(J)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/OverviewCommandHelper$c;->a:Lcom/zui/quickstep/ActivityControlHelper;

    invoke-interface {p0}, Lcom/zui/quickstep/ActivityControlHelper;->getVisibleRecentsView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected e()V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/quickstep/OverviewCommandHelper$e;->g:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/zui/quickstep/OverviewCommandHelper$c;->a:Lcom/zui/quickstep/ActivityControlHelper;

    invoke-interface {p0}, Lcom/zui/quickstep/ActivityControlHelper;->getVisibleRecentsView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/views/RecentsView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getNextTaskView()Lcom/zui/quickstep/views/TaskView;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestFocus()Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestFocus()Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    :cond_3
    :goto_0
    return-void
.end method
