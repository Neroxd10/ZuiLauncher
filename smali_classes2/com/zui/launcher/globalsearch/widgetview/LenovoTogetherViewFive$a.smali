.class Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewFive$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewFive;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/RelativeLayout;

.field final synthetic b:Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewFive;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewFive;Landroid/widget/RelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewFive$a;->b:Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewFive;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewFive$a;->a:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewFive$a;->b:Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewFive;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewFive;->b(Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewFive;)Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewFive$a;->b:Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewFive;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewFive;->b(Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewFive;)Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->getDefaultWeather()V

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewFive$a;->b:Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewFive;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewFive$a;->a:Landroid/widget/RelativeLayout;

    invoke-static {p1, p0}, Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewFive;->c(Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewFive;Landroid/view/View;)V

    return-void
.end method
