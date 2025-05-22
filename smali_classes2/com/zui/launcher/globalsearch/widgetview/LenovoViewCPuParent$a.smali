.class Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/RelativeLayout;

.field final synthetic b:Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;Landroid/widget/RelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent$a;->b:Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent$a;->a:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent$a;->b:Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;->b(Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;)Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent$a;->b:Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;->b(Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;)Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->getDefaultWeather()V

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent$a;->b:Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent$a;->a:Landroid/widget/RelativeLayout;

    invoke-static {p1, p0}, Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;->c(Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;Landroid/view/View;)V

    return-void
.end method
