.class public Lcom/zui/quickstep/inputconsumers/OverviewInputConsumer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/quickstep/inputconsumers/InputConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/zui/launcher/BaseDraggingActivity;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/zui/quickstep/inputconsumers/InputConsumer;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/android/systemui/shared/system/InputMonitorCompat;

.field private final c:[I

.field private final d:Z

.field private final e:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Z

.field private g:Z

.field private h:Lcom/zui/quickstep/RecentsAnimationDeviceState;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/BaseDraggingActivity;Lcom/android/systemui/shared/system/InputMonitorCompat;ZLcom/zui/quickstep/RecentsAnimationDeviceState;)V
    .locals 1
    .param p2    # Lcom/android/systemui/shared/system/InputMonitorCompat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/systemui/shared/system/InputMonitorCompat;",
            "Z",
            "Lcom/zui/quickstep/RecentsAnimationDeviceState;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/zui/quickstep/inputconsumers/OverviewInputConsumer;->c:[I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zui/quickstep/inputconsumers/OverviewInputConsumer;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/zui/quickstep/inputconsumers/OverviewInputConsumer;->b:Lcom/android/systemui/shared/system/InputMonitorCompat;

    iput-boolean p3, p0, Lcom/zui/quickstep/inputconsumers/OverviewInputConsumer;->f:Z

    iput-object p4, p0, Lcom/zui/quickstep/inputconsumers/OverviewInputConsumer;->h:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/BaseDraggingActivity;

    invoke-interface {p1}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object p1

    new-instance p2, Lcom/zui/quickstep/inputconsumers/ZuiPredicate;

    invoke-direct {p2, p1, p3}, Lcom/zui/quickstep/inputconsumers/ZuiPredicate;-><init>(Lcom/zui/launcher/views/BaseDragLayer;Z)V

    iput-object p2, p0, Lcom/zui/quickstep/inputconsumers/OverviewInputConsumer;->e:Ljava/util/function/Predicate;

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/zui/quickstep/inputconsumers/OverviewInputConsumer;->c:[I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    iget-object p2, p0, Lcom/zui/quickstep/inputconsumers/OverviewInputConsumer;->h:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p1, p2}, Lcom/zui/launcher/views/BaseDragLayer;->prepareProxyEventStarting(Lcom/zui/quickstep/RecentsAnimationDeviceState;)Z

    move-result p1

    :goto_0
    iput-boolean p1, p0, Lcom/zui/quickstep/inputconsumers/OverviewInputConsumer;->d:Z

    return-void
.end method


# virtual methods
.method public allowInterceptByParent()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/quickstep/inputconsumers/OverviewInputConsumer;->g:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1

    sget-object v0, Lcom/zui/launcher/config/BaseFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {v0}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/OverviewInputConsumer;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/BaseDraggingActivity;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_0
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 6

    iget-boolean v0, p0, Lcom/zui/quickstep/inputconsumers/OverviewInputConsumer;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/OverviewInputConsumer;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/BaseDraggingActivity;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v1

    iget-boolean v2, p0, Lcom/zui/quickstep/inputconsumers/OverviewInputConsumer;->f:Z

    if-nez v2, :cond_2

    or-int/lit16 v2, v1, 0x100

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    :cond_2
    iget-object v2, p0, Lcom/zui/quickstep/inputconsumers/OverviewInputConsumer;->c:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    neg-int v4, v4

    int-to-float v4, v4

    const/4 v5, 0x1

    aget v2, v2, v5

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v4, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v2, p0, Lcom/zui/quickstep/inputconsumers/OverviewInputConsumer;->e:Ljava/util/function/Predicate;

    invoke-interface {v2, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    iget-object v4, p0, Lcom/zui/quickstep/inputconsumers/OverviewInputConsumer;->c:[I

    aget v3, v4, v3

    int-to-float v3, v3

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    iget-boolean p1, p0, Lcom/zui/quickstep/inputconsumers/OverviewInputConsumer;->g:Z

    if-nez p1, :cond_4

    if-eqz v2, :cond_4

    iput-boolean v5, p0, Lcom/zui/quickstep/inputconsumers/OverviewInputConsumer;->g:Z

    iget-boolean p1, p0, Lcom/zui/quickstep/inputconsumers/OverviewInputConsumer;->f:Z

    if-nez p1, :cond_3

    invoke-static {v0}, Lcom/zui/quickstep/OverviewCallbacks;->get(Landroid/content/Context;)Lcom/zui/quickstep/OverviewCallbacks;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/quickstep/OverviewCallbacks;->closeAllWindows()V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p1

    const-string v0, "recentapps"

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->closeSystemWindows(Ljava/lang/String;)V

    sget-object p1, Lcom/zui/quickstep/TouchInteractionService;->TOUCH_INTERACTION_LOG:Lcom/zui/launcher/logging/EventLogArray;

    const-string v0, "startQuickstep"

    invoke-virtual {p1, v0}, Lcom/zui/launcher/logging/EventLogArray;->addLog(Ljava/lang/String;)V

    :cond_3
    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/OverviewInputConsumer;->b:Lcom/android/systemui/shared/system/InputMonitorCompat;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/InputMonitorCompat;->pilferPointers()V

    :cond_4
    return-void
.end method
