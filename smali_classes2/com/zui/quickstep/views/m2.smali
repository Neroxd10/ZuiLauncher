.class Lcom/zui/quickstep/views/m2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/views/TaskView;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/views/TaskView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/views/m2;->a:Lcom/zui/quickstep/views/TaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 1

    sget-boolean v0, Lcom/zui/launcher/config/BaseFlags;->DEBUG_FREEFORM:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/views/m2;->a:Lcom/zui/quickstep/views/TaskView;

    iget-object p1, p0, Lcom/zui/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskView;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {p0}, Lcom/zui/launcher/BaseDraggingActivity;->goToNormalState()V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/m2;->a(Ljava/lang/Boolean;)V

    return-void
.end method
