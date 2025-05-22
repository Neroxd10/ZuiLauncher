.class public final synthetic Lcom/zui/quickstep/views/j1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/views/TaskView;

.field public final synthetic b:Lcom/zui/launcher/util/PendingAnimation;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/views/TaskView;Lcom/zui/launcher/util/PendingAnimation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/j1;->a:Lcom/zui/quickstep/views/TaskView;

    iput-object p2, p0, Lcom/zui/quickstep/views/j1;->b:Lcom/zui/launcher/util/PendingAnimation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/j1;->a:Lcom/zui/quickstep/views/TaskView;

    iget-object p0, p0, Lcom/zui/quickstep/views/j1;->b:Lcom/zui/launcher/util/PendingAnimation;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/views/TaskView;->R(Lcom/zui/launcher/util/PendingAnimation;)V

    return-void
.end method
