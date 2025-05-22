.class public final synthetic Lcom/zui/quickstep/views/x;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/PagedView$ComputePageScrollsLogic;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/views/TaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/x;->a:Lcom/zui/quickstep/views/TaskView;

    return-void
.end method


# virtual methods
.method public final shouldIncludeView(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/x;->a:Lcom/zui/quickstep/views/TaskView;

    invoke-static {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->n0(Lcom/zui/quickstep/views/TaskView;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
