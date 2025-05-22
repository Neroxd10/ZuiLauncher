.class Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/LinearLayout;

.field final synthetic b:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne;


# direct methods
.method constructor <init>(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne$a;->b:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne;

    iput-object p2, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne$a;->a:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne$a;->b:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne;

    invoke-static {p1}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne;->b(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne;)Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne$a;->b:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne;

    invoke-static {p1}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne;->b(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne;)Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->getDefaultWeather()V

    :cond_0
    iget-object p1, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne$a;->b:Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne;

    iget-object p0, p0, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne$a;->a:Landroid/widget/LinearLayout;

    invoke-static {p1, p0}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne;->c(Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne;Landroid/view/View;)V

    return-void
.end method
