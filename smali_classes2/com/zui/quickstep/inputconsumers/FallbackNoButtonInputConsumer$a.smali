.class Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer$a;->a:Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer$a;->a:Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;

    invoke-static {p0}, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->b(Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;)Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p1}, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->finishController(ZLjava/lang/Runnable;Z)V

    return-void
.end method
