.class Lcom/zui/quickstep/OverviewCommandHelper$b;
.super Lcom/zui/quickstep/OverviewCommandHelper$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/OverviewCommandHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# direct methods
.method private constructor <init>(Lcom/zui/quickstep/OverviewCommandHelper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/OverviewCommandHelper$c;-><init>(Lcom/zui/quickstep/OverviewCommandHelper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/quickstep/OverviewCommandHelper;Lcom/zui/quickstep/OverviewCommandHelper$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/OverviewCommandHelper$b;-><init>(Lcom/zui/quickstep/OverviewCommandHelper;)V

    return-void
.end method


# virtual methods
.method protected c(J)Z
    .locals 1

    iget-object p0, p0, Lcom/zui/quickstep/OverviewCommandHelper$c;->a:Lcom/zui/quickstep/ActivityControlHelper;

    invoke-interface {p0}, Lcom/zui/quickstep/ActivityControlHelper;->getVisibleRecentsView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/views/RecentsView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result p1

    const/4 p2, 0x1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {p0, p2}, Lcom/zui/quickstep/views/TaskView;->launchTask(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->startHome()V

    :goto_0
    return p2
.end method
