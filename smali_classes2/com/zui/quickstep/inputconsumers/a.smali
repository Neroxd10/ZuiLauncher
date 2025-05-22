.class public final synthetic Lcom/zui/quickstep/inputconsumers/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/inputconsumers/a;->a:Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/a;->a:Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;->i(Landroid/animation/ValueAnimator;)V

    return-void
.end method
