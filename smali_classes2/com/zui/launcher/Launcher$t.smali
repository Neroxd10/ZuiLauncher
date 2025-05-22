.class Lcom/zui/launcher/Launcher$t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher$t;->a:Lcom/zui/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/Launcher$t;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->g(Lcom/zui/launcher/Launcher;)I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/Launcher$t;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v1}, Lcom/zui/launcher/Launcher;->k(Lcom/zui/launcher/Launcher;)I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/Launcher$t;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->g(Lcom/zui/launcher/Launcher;)I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/Launcher$t;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v1}, Lcom/zui/launcher/Launcher;->l(Lcom/zui/launcher/Launcher;)I

    move-result v1

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/Launcher$t;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->g(Lcom/zui/launcher/Launcher;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Launcher;->setWindowBlurValue(I)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher$t;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->m(Lcom/zui/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/Launcher$t;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->n(Lcom/zui/launcher/Launcher;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/zui/launcher/Launcher;->i(Lcom/zui/launcher/Launcher;I)I

    iget-object v0, p0, Lcom/zui/launcher/Launcher$t;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->g(Lcom/zui/launcher/Launcher;)I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/Launcher$t;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v1}, Lcom/zui/launcher/Launcher;->l(Lcom/zui/launcher/Launcher;)I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/Launcher$t;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Lcom/zui/launcher/Launcher;->l(Lcom/zui/launcher/Launcher;)I

    move-result v0

    :goto_0
    invoke-static {p0, v0}, Lcom/zui/launcher/Launcher;->h(Lcom/zui/launcher/Launcher;I)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Launcher$t;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->n(Lcom/zui/launcher/Launcher;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/zui/launcher/Launcher;->j(Lcom/zui/launcher/Launcher;I)I

    iget-object v0, p0, Lcom/zui/launcher/Launcher$t;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->g(Lcom/zui/launcher/Launcher;)I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/Launcher$t;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v1}, Lcom/zui/launcher/Launcher;->k(Lcom/zui/launcher/Launcher;)I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/Launcher$t;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Lcom/zui/launcher/Launcher;->k(Lcom/zui/launcher/Launcher;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/Launcher$t;->a:Lcom/zui/launcher/Launcher;

    iget-object v0, v0, Lcom/zui/launcher/Launcher;->O0:Landroid/os/Handler;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
