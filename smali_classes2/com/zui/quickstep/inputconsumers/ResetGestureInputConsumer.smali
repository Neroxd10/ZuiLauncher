.class public Lcom/zui/quickstep/inputconsumers/ResetGestureInputConsumer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/quickstep/inputconsumers/InputConsumer;


# instance fields
.field private final a:Lcom/zui/quickstep/SwipeSharedState;


# direct methods
.method public constructor <init>(Lcom/zui/quickstep/SwipeSharedState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/inputconsumers/ResetGestureInputConsumer;->a:Lcom/zui/quickstep/SwipeSharedState;

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 0

    const/16 p0, 0x100

    return p0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zui/quickstep/inputconsumers/ResetGestureInputConsumer;->a:Lcom/zui/quickstep/SwipeSharedState;

    invoke-virtual {p1}, Lcom/zui/quickstep/SwipeSharedState;->getActiveListener()Lcom/zui/quickstep/util/RecentsAnimationListenerSet;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/ResetGestureInputConsumer;->a:Lcom/zui/quickstep/SwipeSharedState;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/SwipeSharedState;->clearAllState(Z)V

    :cond_0
    return-void
.end method
