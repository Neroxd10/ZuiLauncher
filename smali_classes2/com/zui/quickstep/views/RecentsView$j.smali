.class Lcom/zui/quickstep/views/RecentsView$j;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/views/RecentsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/views/RecentsView;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/views/RecentsView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/views/RecentsView$j;->a:Lcom/zui/quickstep/views/RecentsView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "zui.display.port.to.connect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Launcher.MultiDisplay"

    if-eqz v0, :cond_0

    const-string p2, "onreceive, connect to hdmi----"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/zui/quickstep/util/DisplayManagerWrapper;->getInstance()Lcom/zui/quickstep/util/DisplayManagerWrapper;

    move-result-object p2

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView$j;->a:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/zui/quickstep/util/DisplayManagerWrapper;->moveStackToHdmiDisplay(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Landroid/content/Intent;

    const-string p2, "zui.display.port.to.disconnect.launcher"

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.system.task.ExtCast"

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "zui.display.port.to.disconnect"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "onreceive, disconnect from hdmi----"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView$j;->a:Lcom/zui/quickstep/views/RecentsView;

    invoke-static {p0}, Lcom/zui/quickstep/views/RecentsView;->v(Lcom/zui/quickstep/views/RecentsView;)V

    :cond_1
    :goto_0
    return-void
.end method
