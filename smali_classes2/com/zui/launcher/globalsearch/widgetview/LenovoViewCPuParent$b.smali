.class Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent$b;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent$b;->a:Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.zui.launcher.cpu.send_data"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "cpu_data_key"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cpuData -->"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuUtills;->cpuPrintLog(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent$b;->a:Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;

    invoke-static {p2}, Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;->d(Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;)Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x7

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    iput v0, p2, Landroid/os/Message;->what:I

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent$b;->a:Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;

    invoke-static {p0}, Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;->d(Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
