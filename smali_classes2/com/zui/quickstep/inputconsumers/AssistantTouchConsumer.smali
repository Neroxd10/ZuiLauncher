.class public Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;
.super Lcom/zui/quickstep/inputconsumers/DelegateInputConsumer;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/PointF;

.field private final b:Landroid/graphics/PointF;

.field private final c:Landroid/graphics/PointF;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:F

.field private h:F

.field private i:J

.field private j:F

.field private k:I

.field private l:Lcom/zui/quickstep/ActivityControlHelper;

.field private final m:F

.field private final n:J

.field private final o:I

.field private final p:F

.field private final q:Landroid/content/Context;

.field private final r:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zui/quickstep/ActivityControlHelper;Lcom/zui/quickstep/inputconsumers/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;)V
    .locals 2

    invoke-direct {p0, p3, p4}, Lcom/zui/quickstep/inputconsumers/DelegateInputConsumer;-><init>(Lcom/zui/quickstep/inputconsumers/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3}, Landroid/graphics/PointF;-><init>()V

    iput-object p3, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->a:Landroid/graphics/PointF;

    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3}, Landroid/graphics/PointF;-><init>()V

    iput-object p3, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->b:Landroid/graphics/PointF;

    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3}, Landroid/graphics/PointF;-><init>()V

    iput-object p3, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->c:Landroid/graphics/PointF;

    const/4 p3, -0x1

    iput p3, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->d:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iput-object p1, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->q:Landroid/content/Context;

    const p4, 0x7f0703b1

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    iput p4, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->m:F

    const p4, 0x7f0b000a

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p4

    int-to-long v0, p4

    iput-wide v0, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->n:J

    const p4, 0x7f0b0009

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->o:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p3

    iput p3, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->p:F

    iput-object p2, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->l:Lcom/zui/quickstep/ActivityControlHelper;

    new-instance p2, Landroid/view/GestureDetector;

    new-instance p3, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer$b;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer$b;-><init>(Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer$a;)V

    invoke-direct {p2, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->r:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic b(Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;FF)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->h(FF)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->f:Z

    return p0
.end method

.method static synthetic d(Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->f:Z

    return p1
.end method

.method static synthetic e(Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;F)F
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->j:F

    return p1
.end method

.method static synthetic f(Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->q:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic g(Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->j(I)V

    return-void
.end method

.method private h(FF)Z
    .locals 2

    float-to-double v0, p2

    float-to-double p1, p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    double-to-float p1, p1

    const/high16 p2, 0x42b40000    # 90.0f

    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    :goto_0
    iput v1, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->k:I

    if-lez v0, :cond_1

    const/high16 v0, 0x43340000    # 180.0f

    sub-float p1, v0, p1

    :cond_1
    iget p0, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->o:I

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_2

    cmpg-float p0, p1, p2

    if-gez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private j(I)V
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/launcher/logging/UserEventDispatcher;->newInstance(Landroid/content/Context;)Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object v0

    iget v1, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->k:I

    const/16 v2, 0xb

    invoke-virtual {v0, p1, v1, v2}, Lcom/zui/launcher/logging/UserEventDispatcher;->logActionOnContainer(III)V

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->l:Lcom/zui/quickstep/ActivityControlHelper;

    invoke-interface {p0}, Lcom/zui/quickstep/ActivityControlHelper;->getCreatedActivity()Lcom/zui/launcher/BaseDraggingActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/BaseDraggingActivity;->getRootView()Landroid/view/View;

    move-result-object p0

    const/16 p1, 0xd

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->performHapticFeedback(II)Z

    :cond_0
    return-void
.end method

.method private k()V
    .locals 4

    iget-boolean v0, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->f:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->g:F

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->m:F

    div-float/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v2, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->h:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->j:F

    iget v0, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->g:F

    iget v3, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->m:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_0

    cmpl-float v0, v2, v1

    if-ltz v0, :cond_0

    sget-object v0, Lcom/zui/quickstep/SystemUiProxy;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->q:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/SystemUiProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/SystemUiProxy;->onAssistantGestureCompletion(F)V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->j(I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x53

    const-string v2, "triggered_by"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "invocation_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/zui/quickstep/SystemUiProxy;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object v3, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->q:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/quickstep/SystemUiProxy;

    invoke-virtual {v1, v0}, Lcom/zui/quickstep/SystemUiProxy;->startAssistant(Landroid/os/Bundle;)V

    iput-boolean v2, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->f:Z

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/zui/quickstep/SystemUiProxy;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->q:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/SystemUiProxy;

    iget p0, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->j:F

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/SystemUiProxy;->onAssistantProgress(F)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/DelegateInputConsumer;->mDelegate:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    invoke-interface {p0}, Lcom/zui/quickstep/inputconsumers/InputConsumer;->getType()I

    move-result p0

    or-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public synthetic i(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sget-object v0, Lcom/zui/quickstep/SystemUiProxy;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->q:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/SystemUiProxy;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/SystemUiProxy;->onAssistantProgress(F)V

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 9

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->r:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_b

    const/4 v4, 0x6

    const/4 v5, 0x2

    if-eq v0, v3, :cond_9

    if-eq v0, v5, :cond_4

    const/4 v6, 0x3

    if-eq v0, v6, :cond_9

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    if-eq v0, v4, :cond_2

    goto/16 :goto_1

    :cond_0
    iget v0, p0, Lcom/zui/quickstep/inputconsumers/DelegateInputConsumer;->mState:I

    if-eq v0, v3, :cond_2

    :cond_1
    :goto_0
    iput v5, p0, Lcom/zui/quickstep/inputconsumers/DelegateInputConsumer;->mState:I

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v4, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->d:I

    if-ne v1, v4, :cond_c

    if-nez v0, :cond_3

    move v2, v3

    :cond_3
    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->a:Landroid/graphics/PointF;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget-object v4, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->b:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->a:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    sub-float/2addr v1, v4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget-object v5, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->b:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->a:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->b:Landroid/graphics/PointF;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->d:I

    goto/16 :goto_1

    :cond_4
    iget v0, p0, Lcom/zui/quickstep/inputconsumers/DelegateInputConsumer;->mState:I

    if-ne v0, v5, :cond_5

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/DelegateInputConsumer;->mDelegate:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    invoke-interface {v0}, Lcom/zui/quickstep/inputconsumers/InputConsumer;->allowInterceptByParent()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->d:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    goto/16 :goto_1

    :cond_7
    iget-object v2, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->b:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {v2, v4, v0}, Landroid/graphics/PointF;->set(FF)V

    iget-boolean v0, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->e:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->b:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->a:Landroid/graphics/PointF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v2

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->squaredHypot(FF)F

    move-result v0

    iget v1, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->p:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    iput-boolean v3, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->e:Z

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->c:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->b:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->i:J

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->a:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->b:Landroid/graphics/PointF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v2

    invoke-direct {p0, v1, v0}, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->h(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/inputconsumers/DelegateInputConsumer;->setActive(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->b:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->c:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v5

    float-to-double v5, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v2

    float-to-double v7, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v0, v4

    iput v0, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->g:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->i:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget-wide v4, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->n:J

    long-to-float v2, v4

    div-float/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->h:F

    invoke-direct {p0}, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->k()V

    goto :goto_1

    :cond_9
    iget v0, p0, Lcom/zui/quickstep/inputconsumers/DelegateInputConsumer;->mState:I

    if-eq v0, v5, :cond_a

    iget-boolean v0, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->f:Z

    if-nez v0, :cond_a

    new-array v0, v5, [F

    iget v5, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->j:F

    aput v5, v0, v2

    aput v1, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v5, 0x12c

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->q:Landroid/content/Context;

    invoke-static {v1}, Lcom/zui/launcher/logging/UserEventDispatcher;->newInstance(Landroid/content/Context;)Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object v1

    iget v5, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->k:I

    const/16 v6, 0xb

    invoke-virtual {v1, v4, v5, v6}, Lcom/zui/launcher/logging/UserEventDispatcher;->logActionOnContainer(III)V

    new-instance v1, Lcom/zui/quickstep/inputconsumers/a;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/inputconsumers/a;-><init>(Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v1, Lcom/zui/launcher/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_a
    iput-boolean v2, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->e:Z

    iput v2, p0, Lcom/zui/quickstep/inputconsumers/DelegateInputConsumer;->mState:I

    goto :goto_1

    :cond_b
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->d:I

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->a:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->b:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->a:Landroid/graphics/PointF;

    invoke-virtual {v0, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iput v1, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->h:F

    :cond_c
    :goto_1
    iget v0, p0, Lcom/zui/quickstep/inputconsumers/DelegateInputConsumer;->mState:I

    if-eq v0, v3, :cond_d

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/DelegateInputConsumer;->mDelegate:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    invoke-interface {p0, p1}, Lcom/zui/quickstep/inputconsumers/InputConsumer;->onMotionEvent(Landroid/view/MotionEvent;)V

    :cond_d
    return-void
.end method
