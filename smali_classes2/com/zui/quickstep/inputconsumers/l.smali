.class public final synthetic Lcom/zui/quickstep/inputconsumers/l;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/quickstep/util/MotionPauseDetector$OnMotionPauseListener;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/WindowTransformSwipeHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/inputconsumers/l;->a:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    return-void
.end method


# virtual methods
.method public final onMotionPauseChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/l;->a:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->onMotionPauseChanged(Z)V

    return-void
.end method
