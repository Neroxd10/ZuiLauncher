.class public final synthetic Lcom/zui/quickstep/views/c1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/util/function/Consumer;

.field public final synthetic b:Lcom/zui/quickstep/views/TaskView;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Lcom/zui/quickstep/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/c1;->a:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/zui/quickstep/views/c1;->b:Lcom/zui/quickstep/views/TaskView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/c1;->a:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/zui/quickstep/views/c1;->b:Lcom/zui/quickstep/views/TaskView;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p0, p1}, Lcom/zui/quickstep/views/RecentsViewForPad;->y(Ljava/util/function/Consumer;Lcom/zui/quickstep/views/TaskView;Ljava/lang/Boolean;)V

    return-void
.end method
