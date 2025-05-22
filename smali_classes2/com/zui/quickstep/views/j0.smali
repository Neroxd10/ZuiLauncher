.class public final synthetic Lcom/zui/quickstep/views/j0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/views/RecentsView;

.field public final synthetic b:Ljava/util/function/Consumer;

.field public final synthetic c:Lcom/zui/quickstep/views/TaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/views/RecentsView;Ljava/util/function/Consumer;Lcom/zui/quickstep/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/j0;->a:Lcom/zui/quickstep/views/RecentsView;

    iput-object p2, p0, Lcom/zui/quickstep/views/j0;->b:Ljava/util/function/Consumer;

    iput-object p3, p0, Lcom/zui/quickstep/views/j0;->c:Lcom/zui/quickstep/views/TaskView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/views/j0;->a:Lcom/zui/quickstep/views/RecentsView;

    iget-object v1, p0, Lcom/zui/quickstep/views/j0;->b:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/zui/quickstep/views/j0;->c:Lcom/zui/quickstep/views/TaskView;

    check-cast p1, Lcom/zui/launcher/util/PendingAnimation$OnEndListener;

    invoke-virtual {v0, v1, p0, p1}, Lcom/zui/quickstep/views/RecentsView;->p0(Ljava/util/function/Consumer;Lcom/zui/quickstep/views/TaskView;Lcom/zui/launcher/util/PendingAnimation$OnEndListener;)V

    return-void
.end method
