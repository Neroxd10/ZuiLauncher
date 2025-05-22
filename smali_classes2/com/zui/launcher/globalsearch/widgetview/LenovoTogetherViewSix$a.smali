.class Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewSix$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewSix;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/RelativeLayout;

.field final synthetic b:Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewSix;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewSix;Landroid/widget/RelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewSix$a;->b:Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewSix;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewSix$a;->a:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewSix$a;->b:Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewSix;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewSix;->b(Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewSix;)Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewSix$a;->b:Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewSix;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewSix;->b(Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewSix;)Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->getDefaultWeather()V

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewSix$a;->b:Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewSix;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewSix$a;->a:Landroid/widget/RelativeLayout;

    invoke-static {p1, p0}, Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewSix;->c(Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewSix;Landroid/view/View;)V

    return-void
.end method
