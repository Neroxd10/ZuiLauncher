.class public final Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;
.super Ljava/lang/Object;
.source ""


# instance fields
.field a:Lcom/zui/quickstep/views/RecentsView;

.field b:Lcom/zui/quickstep/views/RecentsViewForPad;

.field c:Lcom/zui/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Lcom/zui/quickstep/views/RecentsView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/zui/quickstep/views/RecentsView;

    iput-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;->a:Lcom/zui/quickstep/views/RecentsView;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/zui/quickstep/views/RecentsViewForPad;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/zui/quickstep/views/RecentsViewForPad;

    iput-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;->b:Lcom/zui/quickstep/views/RecentsViewForPad;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method a(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;->a:Lcom/zui/quickstep/views/RecentsView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zui/quickstep/views/RecentsView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;->a:Lcom/zui/quickstep/views/RecentsView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;->b:Lcom/zui/quickstep/views/RecentsViewForPad;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zui/quickstep/views/RecentsViewForPad;->isInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_2
    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;->c:Lcom/zui/launcher/Launcher;

    invoke-static {p0, p1}, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;->isTouchOverHotseat(Lcom/zui/launcher/Launcher;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method b(J)Lcom/zui/launcher/util/PendingAnimation;
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;->a:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/PagedView;->setCurrentPage(I)V

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;->a:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;->a:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/zui/quickstep/views/RecentsView;->createTaskLauncherAnimation(Lcom/zui/quickstep/views/TaskView;J)Lcom/zui/launcher/util/PendingAnimation;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "There is no task view to animate to."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method c()Z
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;->a:Lcom/zui/quickstep/views/RecentsView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;->a:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->shouldSwipeDownLaunchApp()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
