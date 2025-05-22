.class public final synthetic Lcom/zui/quickstep/t3;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/WindowTransformSwipeHandler;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/t3;->a:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    iput p2, p0, Lcom/zui/quickstep/t3;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/t3;->a:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    iget p0, p0, Lcom/zui/quickstep/t3;->b:I

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->l0(I)V

    return-void
.end method
