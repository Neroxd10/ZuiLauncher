.class Lcom/zui/internal/app/DialogController$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/internal/app/DialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/internal/app/DialogController;


# direct methods
.method constructor <init>(Lcom/zui/internal/app/DialogController;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/internal/app/DialogController$a;->a:Lcom/zui/internal/app/DialogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/internal/app/DialogController$a;->a:Lcom/zui/internal/app/DialogController;

    invoke-static {v0}, Lcom/zui/internal/app/DialogController;->a(Lcom/zui/internal/app/DialogController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/zui/internal/app/DialogController$a;->a:Lcom/zui/internal/app/DialogController;

    invoke-static {v0}, Lcom/zui/internal/app/DialogController;->b(Lcom/zui/internal/app/DialogController;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/zui/internal/app/DialogController$a;->a:Lcom/zui/internal/app/DialogController;

    invoke-static {p1}, Lcom/zui/internal/app/DialogController;->b(Lcom/zui/internal/app/DialogController;)Landroid/os/Message;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/zui/internal/app/DialogController$a;->a:Lcom/zui/internal/app/DialogController;

    invoke-static {v0}, Lcom/zui/internal/app/DialogController;->e(Lcom/zui/internal/app/DialogController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/zui/internal/app/DialogController$a;->a:Lcom/zui/internal/app/DialogController;

    invoke-static {v0}, Lcom/zui/internal/app/DialogController;->f(Lcom/zui/internal/app/DialogController;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/zui/internal/app/DialogController$a;->a:Lcom/zui/internal/app/DialogController;

    invoke-static {p1}, Lcom/zui/internal/app/DialogController;->f(Lcom/zui/internal/app/DialogController;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/internal/app/DialogController$a;->a:Lcom/zui/internal/app/DialogController;

    invoke-static {v0}, Lcom/zui/internal/app/DialogController;->g(Lcom/zui/internal/app/DialogController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/zui/internal/app/DialogController$a;->a:Lcom/zui/internal/app/DialogController;

    invoke-static {p1}, Lcom/zui/internal/app/DialogController;->h(Lcom/zui/internal/app/DialogController;)Landroid/os/Message;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zui/internal/app/DialogController$a;->a:Lcom/zui/internal/app/DialogController;

    invoke-static {p1}, Lcom/zui/internal/app/DialogController;->h(Lcom/zui/internal/app/DialogController;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    iget-object p0, p0, Lcom/zui/internal/app/DialogController$a;->a:Lcom/zui/internal/app/DialogController;

    iget-object p1, p0, Lcom/zui/internal/app/DialogController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->mDialogInterface:Landroid/content/DialogInterface;

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
