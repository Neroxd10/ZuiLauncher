.class public final synthetic Lcom/zui/quickstep/views/p;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/views/RecentsView$e;

.field public final synthetic b:Lcom/zui/quickstep/views/TaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/views/RecentsView$e;Lcom/zui/quickstep/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/p;->a:Lcom/zui/quickstep/views/RecentsView$e;

    iput-object p2, p0, Lcom/zui/quickstep/views/p;->b:Lcom/zui/quickstep/views/TaskView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/p;->a:Lcom/zui/quickstep/views/RecentsView$e;

    iget-object p0, p0, Lcom/zui/quickstep/views/p;->b:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/views/RecentsView$e;->b(Lcom/zui/quickstep/views/TaskView;)V

    return-void
.end method
