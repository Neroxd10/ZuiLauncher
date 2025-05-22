.class public final synthetic Lcom/zui/quickstep/views/r;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/views/RecentsView$e;

.field public final synthetic b:Landroid/os/Handler;

.field public final synthetic c:Lcom/zui/quickstep/views/TaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/views/RecentsView$e;Landroid/os/Handler;Lcom/zui/quickstep/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/r;->a:Lcom/zui/quickstep/views/RecentsView$e;

    iput-object p2, p0, Lcom/zui/quickstep/views/r;->b:Landroid/os/Handler;

    iput-object p3, p0, Lcom/zui/quickstep/views/r;->c:Lcom/zui/quickstep/views/TaskView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/views/r;->a:Lcom/zui/quickstep/views/RecentsView$e;

    iget-object v1, p0, Lcom/zui/quickstep/views/r;->b:Landroid/os/Handler;

    iget-object p0, p0, Lcom/zui/quickstep/views/r;->c:Lcom/zui/quickstep/views/TaskView;

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1, p0, p1}, Lcom/zui/quickstep/views/RecentsView$e;->c(Landroid/os/Handler;Lcom/zui/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    return-void
.end method
