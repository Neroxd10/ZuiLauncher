.class Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent$c;
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

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent$c;->a:Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent$c;->a:Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;

    invoke-static {p0}, Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;->e(Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/timelaweather/util/WeatherInfoUtil;->getWeatherCurrentData(Landroid/content/Context;)Lcom/zui/timelaweather/util/WeatherDataBean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;->setWidgetText(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
