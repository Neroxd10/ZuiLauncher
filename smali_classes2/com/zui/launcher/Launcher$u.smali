.class Lcom/zui/launcher/Launcher$u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/weathercenterSDK/listener/WidgetLocationWeatherInfoListener;


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

    iput-object p1, p0, Lcom/zui/launcher/Launcher$u;->a:Lcom/zui/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationWeatherchanged(ILjava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------onLocationWeatherChanged----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/Launcher$u;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v1, p1, p2, p3, p4}, Lcom/zui/launcher/Launcher;->o(Lcom/zui/launcher/Launcher;ILjava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Launcher"

    invoke-static {v0, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/Launcher$u;->a:Lcom/zui/launcher/Launcher;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/zui/launcher/Launcher;->p(Lcom/zui/launcher/Launcher;J)J

    iget-object p1, p0, Lcom/zui/launcher/Launcher$u;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p1, p4}, Lcom/zui/launcher/Launcher;->q(Lcom/zui/launcher/Launcher;Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;)Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;

    iget-object p1, p0, Lcom/zui/launcher/Launcher$u;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p1, p2}, Lcom/zui/launcher/Launcher;->r(Lcom/zui/launcher/Launcher;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/zui/launcher/Launcher$u;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p1, p3}, Lcom/zui/launcher/Launcher;->s(Lcom/zui/launcher/Launcher;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 p2, 0xde

    iput p2, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/zui/launcher/Launcher$u;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Lcom/zui/launcher/Launcher;->u(Lcom/zui/launcher/Launcher;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
