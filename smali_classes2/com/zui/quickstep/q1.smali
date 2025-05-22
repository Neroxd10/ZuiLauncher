.class public final synthetic Lcom/zui/quickstep/q1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/TaskSystemShortcut$Pin;

.field public final synthetic b:Lcom/zui/launcher/BaseDraggingActivity;

.field public final synthetic c:Lcom/zui/quickstep/views/TaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/TaskSystemShortcut$Pin;Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/quickstep/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/q1;->a:Lcom/zui/quickstep/TaskSystemShortcut$Pin;

    iput-object p2, p0, Lcom/zui/quickstep/q1;->b:Lcom/zui/launcher/BaseDraggingActivity;

    iput-object p3, p0, Lcom/zui/quickstep/q1;->c:Lcom/zui/quickstep/views/TaskView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/q1;->a:Lcom/zui/quickstep/TaskSystemShortcut$Pin;

    iget-object v1, p0, Lcom/zui/quickstep/q1;->b:Lcom/zui/launcher/BaseDraggingActivity;

    iget-object p0, p0, Lcom/zui/quickstep/q1;->c:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v0, v1, p0, p1}, Lcom/zui/quickstep/TaskSystemShortcut$Pin;->k(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/quickstep/views/TaskView;Landroid/view/View;)V

    return-void
.end method
