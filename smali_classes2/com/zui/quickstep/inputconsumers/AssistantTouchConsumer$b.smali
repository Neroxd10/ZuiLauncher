.class Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer$b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;


# direct methods
.method private constructor <init>(Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer$b;->a:Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer$b;-><init>(Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    iget-object p1, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer$b;->a:Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;

    neg-float p2, p4

    invoke-static {p1, p3, p2}, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->b(Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;FF)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer$b;->a:Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;

    invoke-static {p1}, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->c(Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer$b;->a:Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;

    iget v0, p1, Lcom/zui/quickstep/inputconsumers/DelegateInputConsumer;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->e(Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;F)F

    sget-object p1, Lcom/zui/quickstep/SystemUiProxy;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer$b;->a:Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;

    invoke-static {v0}, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->f(Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/quickstep/SystemUiProxy;

    mul-float/2addr p3, p3

    mul-float/2addr p4, p4

    add-float/2addr p3, p4

    float-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    double-to-float p3, p3

    invoke-virtual {p1, p3}, Lcom/zui/quickstep/SystemUiProxy;->onAssistantGestureCompletion(F)V

    iget-object p1, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer$b;->a:Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;

    const/4 p3, 0x4

    invoke-static {p1, p3}, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->g(Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;I)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p3, "invocation_type"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p3, Lcom/zui/quickstep/SystemUiProxy;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object p4, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer$b;->a:Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;

    invoke-static {p4}, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->f(Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;)Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/zui/quickstep/SystemUiProxy;

    invoke-virtual {p3, p1}, Lcom/zui/quickstep/SystemUiProxy;->startAssistant(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer$b;->a:Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;

    invoke-static {p0, p2}, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->d(Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;Z)Z

    :cond_0
    return p2
.end method
