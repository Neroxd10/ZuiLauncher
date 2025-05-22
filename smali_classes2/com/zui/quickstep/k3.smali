.class public final synthetic Lcom/zui/quickstep/k3;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/WindowTransformSwipeHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/k3;->a:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/k3;->a:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->S(Landroid/animation/ValueAnimator;)V

    return-void
.end method
