.class public final synthetic Lcom/zui/quickstep/views/d2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/views/TaskView;

.field public final synthetic b:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/views/TaskView;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/d2;->a:Lcom/zui/quickstep/views/TaskView;

    iput-object p2, p0, Lcom/zui/quickstep/views/d2;->b:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/d2;->a:Lcom/zui/quickstep/views/TaskView;

    iget-object p0, p0, Lcom/zui/quickstep/views/d2;->b:Ljava/util/function/Consumer;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/views/TaskView;->W(Ljava/util/function/Consumer;)V

    return-void
.end method
