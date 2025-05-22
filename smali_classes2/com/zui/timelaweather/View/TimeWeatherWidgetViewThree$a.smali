.class Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/LinearLayout;

.field final synthetic b:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;


# direct methods
.method constructor <init>(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$a;->b:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;

    iput-object p2, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$a;->a:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$a;->b:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;

    invoke-static {p1}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->b(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;)Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$a;->b:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;

    invoke-static {p1}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->b(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;)Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->getDefaultWeather()V

    :cond_0
    iget-object p1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$a;->b:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;

    iget-object p0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree$a;->a:Landroid/widget/LinearLayout;

    invoke-static {p1, p0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->c(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;Landroid/view/View;)V

    return-void
.end method
