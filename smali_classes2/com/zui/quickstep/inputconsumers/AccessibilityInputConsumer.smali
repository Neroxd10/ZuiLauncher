.class public Lcom/zui/quickstep/inputconsumers/AccessibilityInputConsumer;
.super Lcom/zui/quickstep/inputconsumers/DelegateInputConsumer;
.source ""


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/VelocityTracker;

.field private final c:Lcom/zui/quickstep/util/MotionPauseDetector;

.field private final d:Lcom/zui/quickstep/RecentsAnimationDeviceState;

.field private final e:F

.field private final f:F

.field private g:I

.field private h:F

.field private i:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zui/quickstep/RecentsAnimationDeviceState;Lcom/zui/quickstep/inputconsumers/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;)V
    .locals 0

    invoke-direct {p0, p3, p4}, Lcom/zui/quickstep/inputconsumers/DelegateInputConsumer;-><init>(Lcom/zui/quickstep/inputconsumers/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    const/4 p3, -0x1

    iput p3, p0, Lcom/zui/quickstep/inputconsumers/AccessibilityInputConsumer;->g:I

    iput-object p1, p0, Lcom/zui/quickstep/inputconsumers/AccessibilityInputConsumer;->a:Landroid/content/Context;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p3

    iput-object p3, p0, Lcom/zui/quickstep/inputconsumers/AccessibilityInputConsumer;->b:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070053

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    iput p3, p0, Lcom/zui/quickstep/inputconsumers/AccessibilityInputConsumer;->e:F

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/zui/quickstep/inputconsumers/AccessibilityInputConsumer;->f:F

    iput-object p2, p0, Lcom/zui/quickstep/inputconsumers/AccessibilityInputConsumer;->d:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    new-instance p2, Lcom/zui/quickstep/util/MotionPauseDetector;

    invoke-direct {p2, p1}, Lcom/zui/quickstep/util/MotionPauseDetector;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/zui/quickstep/inputconsumers/AccessibilityInputConsumer;->c:Lcom/zui/quickstep/util/MotionPauseDetector;

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/DelegateInputConsumer;->mDelegate:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    invoke-interface {p0}, Lcom/zui/quickstep/inputconsumers/InputConsumer;->getType()I

    move-result p0

    or-int/lit8 p0, p0, 0x20

    return p0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 5

    iget v0, p0, Lcom/zui/quickstep/inputconsumers/DelegateInputConsumer;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/AccessibilityInputConsumer;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    if-eq v0, v1, :cond_5

    const/4 v4, 0x3

    if-eq v0, v4, :cond_a

    const/4 v4, 0x5

    if-eq v0, v4, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget v0, p0, Lcom/zui/quickstep/inputconsumers/DelegateInputConsumer;->mState:I

    if-ne v0, v3, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v4, p0, Lcom/zui/quickstep/inputconsumers/AccessibilityInputConsumer;->g:I

    if-ne v1, v4, :cond_b

    if-nez v0, :cond_2

    move v2, v3

    :cond_2
    iget v1, p0, Lcom/zui/quickstep/inputconsumers/AccessibilityInputConsumer;->i:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget v4, p0, Lcom/zui/quickstep/inputconsumers/AccessibilityInputConsumer;->h:F

    sub-float/2addr v0, v4

    add-float/2addr v1, v0

    iput v1, p0, Lcom/zui/quickstep/inputconsumers/AccessibilityInputConsumer;->i:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/zui/quickstep/inputconsumers/AccessibilityInputConsumer;->h:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/zui/quickstep/inputconsumers/AccessibilityInputConsumer;->g:I

    goto/16 :goto_1

    :cond_3
    iget v0, p0, Lcom/zui/quickstep/inputconsumers/DelegateInputConsumer;->mState:I

    if-nez v0, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    iget-object v2, p0, Lcom/zui/quickstep/inputconsumers/AccessibilityInputConsumer;->d:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v2, p1, v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->isInSwipeUpTouchRegion(Landroid/view/MotionEvent;I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/zui/quickstep/inputconsumers/DelegateInputConsumer;->mDelegate:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    invoke-interface {v2}, Lcom/zui/quickstep/inputconsumers/InputConsumer;->allowInterceptByParent()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/inputconsumers/DelegateInputConsumer;->setActive(Landroid/view/MotionEvent;)V

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/zui/quickstep/inputconsumers/AccessibilityInputConsumer;->g:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/zui/quickstep/inputconsumers/AccessibilityInputConsumer;->h:F

    goto/16 :goto_1

    :cond_4
    iput v1, p0, Lcom/zui/quickstep/inputconsumers/DelegateInputConsumer;->mState:I

    goto/16 :goto_1

    :cond_5
    iget v0, p0, Lcom/zui/quickstep/inputconsumers/DelegateInputConsumer;->mState:I

    if-ne v0, v3, :cond_b

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/AccessibilityInputConsumer;->d:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->isAccessibilityMenuShortcutAvailable()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/zui/quickstep/inputconsumers/AccessibilityInputConsumer;->g:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/AccessibilityInputConsumer;->c:Lcom/zui/quickstep/util/MotionPauseDetector;

    invoke-virtual {v1, p1, v0}, Lcom/zui/quickstep/util/MotionPauseDetector;->addPosition(Landroid/view/MotionEvent;I)V

    goto :goto_1

    :cond_7
    iget v0, p0, Lcom/zui/quickstep/inputconsumers/DelegateInputConsumer;->mState:I

    if-ne v0, v3, :cond_a

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/AccessibilityInputConsumer;->d:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->isAccessibilityMenuShortcutAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/AccessibilityInputConsumer;->c:Lcom/zui/quickstep/util/MotionPauseDetector;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/MotionPauseDetector;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/zui/quickstep/SystemUiProxy;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/AccessibilityInputConsumer;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/zui/quickstep/SystemUiProxy;->notifyAccessibilityButtonLongClicked()V

    goto :goto_0

    :cond_8
    iget v0, p0, Lcom/zui/quickstep/inputconsumers/AccessibilityInputConsumer;->i:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v4, p0, Lcom/zui/quickstep/inputconsumers/AccessibilityInputConsumer;->h:F

    sub-float/2addr v1, v4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/zui/quickstep/inputconsumers/AccessibilityInputConsumer;->i:F

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/AccessibilityInputConsumer;->b:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget v0, p0, Lcom/zui/quickstep/inputconsumers/AccessibilityInputConsumer;->i:F

    neg-float v0, v0

    iget v1, p0, Lcom/zui/quickstep/inputconsumers/AccessibilityInputConsumer;->e:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_9

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/AccessibilityInputConsumer;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    neg-float v0, v0

    iget v1, p0, Lcom/zui/quickstep/inputconsumers/AccessibilityInputConsumer;->f:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    :cond_9
    sget-object v0, Lcom/zui/quickstep/SystemUiProxy;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/AccessibilityInputConsumer;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/SystemUiProxy;

    invoke-virtual {v0, v2}, Lcom/zui/quickstep/SystemUiProxy;->notifyAccessibilityButtonClicked(I)V

    :cond_a
    :goto_0
    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/AccessibilityInputConsumer;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/AccessibilityInputConsumer;->c:Lcom/zui/quickstep/util/MotionPauseDetector;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/MotionPauseDetector;->clear()V

    :cond_b
    :goto_1
    iget v0, p0, Lcom/zui/quickstep/inputconsumers/DelegateInputConsumer;->mState:I

    if-eq v0, v3, :cond_c

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/DelegateInputConsumer;->mDelegate:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    invoke-interface {p0, p1}, Lcom/zui/quickstep/inputconsumers/InputConsumer;->onMotionEvent(Landroid/view/MotionEvent;)V

    :cond_c
    return-void
.end method
