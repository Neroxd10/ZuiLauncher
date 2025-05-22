.class public final synthetic Lcom/zui/quickstep/views/k1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/views/TaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/k1;->a:Lcom/zui/quickstep/views/TaskView;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/k1;->a:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/TaskView;->n0(Landroid/view/View;)Z

    move-result p0

    return p0
.end method
