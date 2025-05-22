.class public final synthetic Lcom/zui/quickstep/r3;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/WindowTransformSwipeHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/r3;->a:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/r3;->a:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    check-cast p1, Lcom/zui/quickstep/util/SurfaceTransactionApplier;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->h0(Lcom/zui/quickstep/util/SurfaceTransactionApplier;)V

    return-void
.end method
