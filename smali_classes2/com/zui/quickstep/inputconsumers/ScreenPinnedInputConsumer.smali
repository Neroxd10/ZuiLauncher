.class public Lcom/zui/quickstep/inputconsumers/ScreenPinnedInputConsumer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/quickstep/inputconsumers/InputConsumer;


# instance fields
.field private final a:F

.field private final b:Lcom/zui/quickstep/util/MotionPauseDetector;

.field private c:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zui/quickstep/ActivityControlHelper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07048f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/zui/quickstep/inputconsumers/ScreenPinnedInputConsumer;->a:F

    new-instance v0, Lcom/zui/quickstep/util/MotionPauseDetector;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/zui/quickstep/util/MotionPauseDetector;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/zui/quickstep/inputconsumers/ScreenPinnedInputConsumer;->b:Lcom/zui/quickstep/util/MotionPauseDetector;

    new-instance v1, Lcom/zui/quickstep/inputconsumers/k;

    invoke-direct {v1, p0, p1, p2}, Lcom/zui/quickstep/inputconsumers/k;-><init>(Lcom/zui/quickstep/inputconsumers/ScreenPinnedInputConsumer;Landroid/content/Context;Lcom/zui/quickstep/ActivityControlHelper;)V

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/util/MotionPauseDetector;->setOnMotionPauseListener(Lcom/zui/quickstep/util/MotionPauseDetector$OnMotionPauseListener;)V

    return-void
.end method


# virtual methods
.method public synthetic b(Landroid/content/Context;Lcom/zui/quickstep/ActivityControlHelper;Z)V
    .locals 0

    if-eqz p3, :cond_1

    sget-object p3, Lcom/zui/quickstep/SystemUiProxy;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p3, p1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/quickstep/SystemUiProxy;

    invoke-virtual {p1}, Lcom/zui/quickstep/SystemUiProxy;->stopScreenPinning()V

    invoke-interface {p2}, Lcom/zui/quickstep/ActivityControlHelper;->getCreatedActivity()Lcom/zui/launcher/BaseDraggingActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/BaseDraggingActivity;->getRootView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->performHapticFeedback(II)Z

    :cond_0
    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/ScreenPinnedInputConsumer;->b:Lcom/zui/quickstep/util/MotionPauseDetector;

    invoke-virtual {p0}, Lcom/zui/quickstep/util/MotionPauseDetector;->clear()V

    :cond_1
    return-void
.end method

.method public getType()I
    .locals 0

    const/16 p0, 0x40

    return p0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 p1, 0x3

    if-eq v1, p1, :cond_2

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/zui/quickstep/inputconsumers/ScreenPinnedInputConsumer;->c:F

    sub-float/2addr v1, v0

    iget-object v3, p0, Lcom/zui/quickstep/inputconsumers/ScreenPinnedInputConsumer;->b:Lcom/zui/quickstep/util/MotionPauseDetector;

    iget v4, p0, Lcom/zui/quickstep/inputconsumers/ScreenPinnedInputConsumer;->a:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Lcom/zui/quickstep/util/MotionPauseDetector;->setDisallowPause(Z)V

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/ScreenPinnedInputConsumer;->b:Lcom/zui/quickstep/util/MotionPauseDetector;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/zui/quickstep/util/MotionPauseDetector;->addPosition(FJ)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/ScreenPinnedInputConsumer;->b:Lcom/zui/quickstep/util/MotionPauseDetector;

    invoke-virtual {p0}, Lcom/zui/quickstep/util/MotionPauseDetector;->clear()V

    goto :goto_1

    :cond_3
    iput v0, p0, Lcom/zui/quickstep/inputconsumers/ScreenPinnedInputConsumer;->c:F

    :goto_1
    return-void
.end method
