.class public final synthetic Lcom/zui/quickstep/p1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/BaseRecentsView;

.field public final synthetic b:I

.field public final synthetic c:Lcom/zui/quickstep/views/TaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/BaseRecentsView;ILcom/zui/quickstep/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/p1;->a:Lcom/zui/quickstep/BaseRecentsView;

    iput p2, p0, Lcom/zui/quickstep/p1;->b:I

    iput-object p3, p0, Lcom/zui/quickstep/p1;->c:Lcom/zui/quickstep/views/TaskView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/p1;->a:Lcom/zui/quickstep/BaseRecentsView;

    iget v1, p0, Lcom/zui/quickstep/p1;->b:I

    iget-object p0, p0, Lcom/zui/quickstep/p1;->c:Lcom/zui/quickstep/views/TaskView;

    invoke-static {v0, v1, p0}, Lcom/zui/quickstep/TaskSystemShortcut$MultiWindow;->j(Lcom/zui/quickstep/BaseRecentsView;ILcom/zui/quickstep/views/TaskView;)V

    return-void
.end method
