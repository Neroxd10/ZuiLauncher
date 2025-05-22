.class public final synthetic Lcom/zui/quickstep/n1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/TaskSystemShortcut$LockTask;

.field public final synthetic b:Lcom/zui/quickstep/views/TaskView;

.field public final synthetic c:Lcom/zui/launcher/BaseDraggingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/TaskSystemShortcut$LockTask;Lcom/zui/quickstep/views/TaskView;Lcom/zui/launcher/BaseDraggingActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/n1;->a:Lcom/zui/quickstep/TaskSystemShortcut$LockTask;

    iput-object p2, p0, Lcom/zui/quickstep/n1;->b:Lcom/zui/quickstep/views/TaskView;

    iput-object p3, p0, Lcom/zui/quickstep/n1;->c:Lcom/zui/launcher/BaseDraggingActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/n1;->a:Lcom/zui/quickstep/TaskSystemShortcut$LockTask;

    iget-object v1, p0, Lcom/zui/quickstep/n1;->b:Lcom/zui/quickstep/views/TaskView;

    iget-object p0, p0, Lcom/zui/quickstep/n1;->c:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {v0, v1, p0, p1}, Lcom/zui/quickstep/TaskSystemShortcut$LockTask;->j(Lcom/zui/quickstep/views/TaskView;Lcom/zui/launcher/BaseDraggingActivity;Landroid/view/View;)V

    return-void
.end method
