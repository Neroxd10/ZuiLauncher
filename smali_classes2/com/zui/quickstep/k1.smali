.class public final synthetic Lcom/zui/quickstep/k1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/TaskSystemShortcut$ExtCast;

.field public final synthetic b:Lcom/zui/launcher/BaseDraggingActivity;

.field public final synthetic c:Lcom/zui/quickstep/views/TaskView;

.field public final synthetic d:I

.field public final synthetic e:Lcom/android/systemui/shared/recents/model/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/TaskSystemShortcut$ExtCast;Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/quickstep/views/TaskView;ILcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/k1;->a:Lcom/zui/quickstep/TaskSystemShortcut$ExtCast;

    iput-object p2, p0, Lcom/zui/quickstep/k1;->b:Lcom/zui/launcher/BaseDraggingActivity;

    iput-object p3, p0, Lcom/zui/quickstep/k1;->c:Lcom/zui/quickstep/views/TaskView;

    iput p4, p0, Lcom/zui/quickstep/k1;->d:I

    iput-object p5, p0, Lcom/zui/quickstep/k1;->e:Lcom/android/systemui/shared/recents/model/Task;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/zui/quickstep/k1;->a:Lcom/zui/quickstep/TaskSystemShortcut$ExtCast;

    iget-object v1, p0, Lcom/zui/quickstep/k1;->b:Lcom/zui/launcher/BaseDraggingActivity;

    iget-object v2, p0, Lcom/zui/quickstep/k1;->c:Lcom/zui/quickstep/views/TaskView;

    iget v3, p0, Lcom/zui/quickstep/k1;->d:I

    iget-object p0, p0, Lcom/zui/quickstep/k1;->e:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/zui/quickstep/TaskSystemShortcut$ExtCast;->k(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/quickstep/views/TaskView;ILcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method
