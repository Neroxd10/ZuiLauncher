.class public final synthetic Lcom/zui/quickstep/b4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/WindowTransformSwipeHandler;

.field public final synthetic b:Lcom/zui/quickstep/util/SurfaceTransactionApplier;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;Lcom/zui/quickstep/util/SurfaceTransactionApplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/b4;->a:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    iput-object p2, p0, Lcom/zui/quickstep/b4;->b:Lcom/zui/quickstep/util/SurfaceTransactionApplier;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/b4;->a:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    iget-object p0, p0, Lcom/zui/quickstep/b4;->b:Lcom/zui/quickstep/util/SurfaceTransactionApplier;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->g0(Lcom/zui/quickstep/util/SurfaceTransactionApplier;)V

    return-void
.end method
