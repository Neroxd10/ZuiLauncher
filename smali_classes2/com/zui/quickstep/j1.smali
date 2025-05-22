.class public final synthetic Lcom/zui/quickstep/j1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/TaskSystemShortcut$ExtCast;

.field public final synthetic b:Lcom/zui/quickstep/views/TaskView;

.field public final synthetic c:Lcom/zui/launcher/BaseDraggingActivity;

.field public final synthetic d:I

.field public final synthetic e:Lcom/android/systemui/shared/recents/model/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/TaskSystemShortcut$ExtCast;Lcom/zui/quickstep/views/TaskView;Lcom/zui/launcher/BaseDraggingActivity;ILcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/j1;->a:Lcom/zui/quickstep/TaskSystemShortcut$ExtCast;

    iput-object p2, p0, Lcom/zui/quickstep/j1;->b:Lcom/zui/quickstep/views/TaskView;

    iput-object p3, p0, Lcom/zui/quickstep/j1;->c:Lcom/zui/launcher/BaseDraggingActivity;

    iput p4, p0, Lcom/zui/quickstep/j1;->d:I

    iput-object p5, p0, Lcom/zui/quickstep/j1;->e:Lcom/android/systemui/shared/recents/model/Task;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/zui/quickstep/j1;->a:Lcom/zui/quickstep/TaskSystemShortcut$ExtCast;

    iget-object v1, p0, Lcom/zui/quickstep/j1;->b:Lcom/zui/quickstep/views/TaskView;

    iget-object v2, p0, Lcom/zui/quickstep/j1;->c:Lcom/zui/launcher/BaseDraggingActivity;

    iget v3, p0, Lcom/zui/quickstep/j1;->d:I

    iget-object v4, p0, Lcom/zui/quickstep/j1;->e:Lcom/android/systemui/shared/recents/model/Task;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/zui/quickstep/TaskSystemShortcut$ExtCast;->m(Lcom/zui/quickstep/views/TaskView;Lcom/zui/launcher/BaseDraggingActivity;ILcom/android/systemui/shared/recents/model/Task;Landroid/view/View;)V

    return-void
.end method
