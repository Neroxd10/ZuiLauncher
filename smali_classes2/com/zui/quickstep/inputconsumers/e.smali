.class public final synthetic Lcom/zui/quickstep/inputconsumers/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;

.field public final synthetic b:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/inputconsumers/e;->a:Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;

    iput-object p2, p0, Lcom/zui/quickstep/inputconsumers/e;->b:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/e;->a:Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/e;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0, p1}, Lcom/zui/quickstep/inputconsumers/FallbackNoButtonInputConsumer;->g(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method
