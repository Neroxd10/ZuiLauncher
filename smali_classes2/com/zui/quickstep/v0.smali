.class public final synthetic Lcom/zui/quickstep/v0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/systemui/shared/recents/model/Task;

.field public final synthetic b:Ljava/util/function/Consumer;

.field public final synthetic c:Lcom/zui/quickstep/views/TaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;Lcom/zui/quickstep/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/v0;->a:Lcom/android/systemui/shared/recents/model/Task;

    iput-object p2, p0, Lcom/zui/quickstep/v0;->b:Ljava/util/function/Consumer;

    iput-object p3, p0, Lcom/zui/quickstep/v0;->c:Lcom/zui/quickstep/views/TaskView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/v0;->a:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, p0, Lcom/zui/quickstep/v0;->b:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/zui/quickstep/v0;->c:Lcom/zui/quickstep/views/TaskView;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, v1, p0, p1}, Lcom/zui/quickstep/RecentsModel;->e(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;Lcom/zui/quickstep/views/TaskView;Ljava/util/ArrayList;)V

    return-void
.end method
