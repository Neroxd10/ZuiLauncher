.class public final synthetic Lcom/zui/quickstep/l1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/views/TaskView;

.field public final synthetic b:Lcom/android/systemui/shared/recents/model/Task;

.field public final synthetic c:Lcom/zui/launcher/BaseDraggingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Lcom/zui/launcher/BaseDraggingActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/l1;->a:Lcom/zui/quickstep/views/TaskView;

    iput-object p2, p0, Lcom/zui/quickstep/l1;->b:Lcom/android/systemui/shared/recents/model/Task;

    iput-object p3, p0, Lcom/zui/quickstep/l1;->c:Lcom/zui/launcher/BaseDraggingActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/l1;->a:Lcom/zui/quickstep/views/TaskView;

    iget-object v1, p0, Lcom/zui/quickstep/l1;->b:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Lcom/zui/quickstep/l1;->c:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-static {v0, v1, p0}, Lcom/zui/quickstep/TaskSystemShortcut$ExtCast;->l(Lcom/zui/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Lcom/zui/launcher/BaseDraggingActivity;)V

    return-void
.end method
