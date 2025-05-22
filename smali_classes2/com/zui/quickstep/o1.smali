.class public final synthetic Lcom/zui/quickstep/o1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/TaskSystemShortcut$MultiWindow;

.field public final synthetic b:Lcom/zui/quickstep/views/TaskView;

.field public final synthetic c:Lcom/zui/quickstep/BaseRecentsView;

.field public final synthetic d:I

.field public final synthetic e:Lcom/zui/launcher/BaseDraggingActivity;

.field public final synthetic f:Lcom/zui/quickstep/views/TaskThumbnailView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/TaskSystemShortcut$MultiWindow;Lcom/zui/quickstep/views/TaskView;Lcom/zui/quickstep/BaseRecentsView;ILcom/zui/launcher/BaseDraggingActivity;Lcom/zui/quickstep/views/TaskThumbnailView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/o1;->a:Lcom/zui/quickstep/TaskSystemShortcut$MultiWindow;

    iput-object p2, p0, Lcom/zui/quickstep/o1;->b:Lcom/zui/quickstep/views/TaskView;

    iput-object p3, p0, Lcom/zui/quickstep/o1;->c:Lcom/zui/quickstep/BaseRecentsView;

    iput p4, p0, Lcom/zui/quickstep/o1;->d:I

    iput-object p5, p0, Lcom/zui/quickstep/o1;->e:Lcom/zui/launcher/BaseDraggingActivity;

    iput-object p6, p0, Lcom/zui/quickstep/o1;->f:Lcom/zui/quickstep/views/TaskThumbnailView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/zui/quickstep/o1;->a:Lcom/zui/quickstep/TaskSystemShortcut$MultiWindow;

    iget-object v1, p0, Lcom/zui/quickstep/o1;->b:Lcom/zui/quickstep/views/TaskView;

    iget-object v2, p0, Lcom/zui/quickstep/o1;->c:Lcom/zui/quickstep/BaseRecentsView;

    iget v3, p0, Lcom/zui/quickstep/o1;->d:I

    iget-object v4, p0, Lcom/zui/quickstep/o1;->e:Lcom/zui/launcher/BaseDraggingActivity;

    iget-object v5, p0, Lcom/zui/quickstep/o1;->f:Lcom/zui/quickstep/views/TaskThumbnailView;

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/zui/quickstep/TaskSystemShortcut$MultiWindow;->k(Lcom/zui/quickstep/views/TaskView;Lcom/zui/quickstep/BaseRecentsView;ILcom/zui/launcher/BaseDraggingActivity;Lcom/zui/quickstep/views/TaskThumbnailView;Landroid/view/View;)V

    return-void
.end method
