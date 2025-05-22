.class public final synthetic Lcom/zui/quickstep/l3;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/WindowTransformSwipeHandler;

.field public final synthetic b:Lcom/zui/quickstep/views/TaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;Lcom/zui/quickstep/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/l3;->a:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    iput-object p2, p0, Lcom/zui/quickstep/l3;->b:Lcom/zui/quickstep/views/TaskView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/l3;->a:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    iget-object p0, p0, Lcom/zui/quickstep/l3;->b:Lcom/zui/quickstep/views/TaskView;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p0, p1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->n0(Lcom/zui/quickstep/views/TaskView;Ljava/lang/Boolean;)V

    return-void
.end method
