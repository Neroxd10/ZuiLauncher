.class final Lcom/amap/api/col/l3s/ik$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/ik;->searchWeatherAsyn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/ik;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/ik;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/ik$1;->a:Lcom/amap/api/col/l3s/ik;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/amap/api/col/l3s/gw;->a()Lcom/amap/api/col/l3s/gw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->arg1:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/amap/api/col/l3s/ik$1;->a:Lcom/amap/api/col/l3s/ik;

    invoke-static {v2}, Lcom/amap/api/col/l3s/ik;->a(Lcom/amap/api/col/l3s/ik;)Lcom/amap/api/services/weather/WeatherSearchQuery;

    move-result-object v2

    const-string v3, "searchWeatherAsyn"

    const-string v4, "WeatherSearch"

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/col/l3s/ik$1;->a:Lcom/amap/api/col/l3s/ik;

    invoke-static {v2}, Lcom/amap/api/col/l3s/ik;->a(Lcom/amap/api/col/l3s/ik;)Lcom/amap/api/services/weather/WeatherSearchQuery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/services/weather/WeatherSearchQuery;->getType()I

    move-result v2

    const/4 v5, 0x1

    const/16 v6, 0x3e8

    const-string v7, "searchWeatherAnsyThrowable"

    const-string v8, "errorCode"

    if-ne v2, v5, :cond_0

    const/16 v2, 0x515

    :try_start_0
    iget-object v5, p0, Lcom/amap/api/col/l3s/ik$1;->a:Lcom/amap/api/col/l3s/ik;

    iget-object v9, p0, Lcom/amap/api/col/l3s/ik$1;->a:Lcom/amap/api/col/l3s/ik;

    invoke-static {v9}, Lcom/amap/api/col/l3s/ik;->b(Lcom/amap/api/col/l3s/ik;)Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/amap/api/col/l3s/ik;->a(Lcom/amap/api/col/l3s/ik;Lcom/amap/api/services/weather/LocalWeatherLiveResult;)Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    invoke-virtual {v1, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v3, Lcom/amap/api/col/l3s/gw$l;

    invoke-direct {v3}, Lcom/amap/api/col/l3s/gw$l;-><init>()V

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/amap/api/col/l3s/ik$1;->a:Lcom/amap/api/col/l3s/ik;

    invoke-static {v2}, Lcom/amap/api/col/l3s/ik;->c(Lcom/amap/api/col/l3s/ik;)Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    move-result-object v2

    iput-object v2, v3, Lcom/amap/api/col/l3s/gw$l;->b:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    iget-object v2, p0, Lcom/amap/api/col/l3s/ik$1;->a:Lcom/amap/api/col/l3s/ik;

    invoke-static {v2}, Lcom/amap/api/col/l3s/ik;->d(Lcom/amap/api/col/l3s/ik;)Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    move-result-object v2

    iput-object v2, v3, Lcom/amap/api/col/l3s/gw$l;->a:Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/ik$1;->a:Lcom/amap/api/col/l3s/ik;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ik;->e(Lcom/amap/api/col/l3s/ik;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    invoke-static {v3, v4, v7}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-instance v3, Lcom/amap/api/col/l3s/gw$l;

    invoke-direct {v3}, Lcom/amap/api/col/l3s/gw$l;-><init>()V

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/amap/api/col/l3s/ik$1;->a:Lcom/amap/api/col/l3s/ik;

    invoke-static {v2}, Lcom/amap/api/col/l3s/ik;->c(Lcom/amap/api/col/l3s/ik;)Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    move-result-object v2

    iput-object v2, v3, Lcom/amap/api/col/l3s/gw$l;->b:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    iget-object v2, p0, Lcom/amap/api/col/l3s/ik$1;->a:Lcom/amap/api/col/l3s/ik;

    invoke-static {v2}, Lcom/amap/api/col/l3s/ik;->d(Lcom/amap/api/col/l3s/ik;)Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    move-result-object v2

    iput-object v2, v3, Lcom/amap/api/col/l3s/gw$l;->a:Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/ik$1;->a:Lcom/amap/api/col/l3s/ik;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ik;->e(Lcom/amap/api/col/l3s/ik;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catch_0
    move-exception v5

    :try_start_2
    invoke-virtual {v5}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v6

    invoke-virtual {v1, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v5, v4, v3}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    new-instance v3, Lcom/amap/api/col/l3s/gw$l;

    invoke-direct {v3}, Lcom/amap/api/col/l3s/gw$l;-><init>()V

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/amap/api/col/l3s/ik$1;->a:Lcom/amap/api/col/l3s/ik;

    invoke-static {v2}, Lcom/amap/api/col/l3s/ik;->c(Lcom/amap/api/col/l3s/ik;)Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    move-result-object v2

    iput-object v2, v3, Lcom/amap/api/col/l3s/gw$l;->b:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    iget-object v2, p0, Lcom/amap/api/col/l3s/ik$1;->a:Lcom/amap/api/col/l3s/ik;

    invoke-static {v2}, Lcom/amap/api/col/l3s/ik;->d(Lcom/amap/api/col/l3s/ik;)Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    move-result-object v2

    iput-object v2, v3, Lcom/amap/api/col/l3s/gw$l;->a:Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/ik$1;->a:Lcom/amap/api/col/l3s/ik;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ik;->e(Lcom/amap/api/col/l3s/ik;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_1
    move-exception v3

    new-instance v4, Lcom/amap/api/col/l3s/gw$l;

    invoke-direct {v4}, Lcom/amap/api/col/l3s/gw$l;-><init>()V

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/amap/api/col/l3s/ik$1;->a:Lcom/amap/api/col/l3s/ik;

    invoke-static {v2}, Lcom/amap/api/col/l3s/ik;->c(Lcom/amap/api/col/l3s/ik;)Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    move-result-object v2

    iput-object v2, v4, Lcom/amap/api/col/l3s/gw$l;->b:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    iget-object v2, p0, Lcom/amap/api/col/l3s/ik$1;->a:Lcom/amap/api/col/l3s/ik;

    invoke-static {v2}, Lcom/amap/api/col/l3s/ik;->d(Lcom/amap/api/col/l3s/ik;)Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    move-result-object v2

    iput-object v2, v4, Lcom/amap/api/col/l3s/gw$l;->a:Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/ik$1;->a:Lcom/amap/api/col/l3s/ik;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ik;->e(Lcom/amap/api/col/l3s/ik;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v3

    :cond_0
    iget-object v2, p0, Lcom/amap/api/col/l3s/ik$1;->a:Lcom/amap/api/col/l3s/ik;

    invoke-static {v2}, Lcom/amap/api/col/l3s/ik;->a(Lcom/amap/api/col/l3s/ik;)Lcom/amap/api/services/weather/WeatherSearchQuery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/services/weather/WeatherSearchQuery;->getType()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    const/16 v2, 0x516

    :try_start_3
    iget-object v5, p0, Lcom/amap/api/col/l3s/ik$1;->a:Lcom/amap/api/col/l3s/ik;

    iget-object v9, p0, Lcom/amap/api/col/l3s/ik$1;->a:Lcom/amap/api/col/l3s/ik;

    invoke-static {v9}, Lcom/amap/api/col/l3s/ik;->f(Lcom/amap/api/col/l3s/ik;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/amap/api/col/l3s/ik;->a(Lcom/amap/api/col/l3s/ik;Lcom/amap/api/services/weather/LocalWeatherForecastResult;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    invoke-virtual {v1, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_3
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    new-instance v3, Lcom/amap/api/col/l3s/gw$k;

    invoke-direct {v3}, Lcom/amap/api/col/l3s/gw$k;-><init>()V

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/amap/api/col/l3s/ik$1;->a:Lcom/amap/api/col/l3s/ik;

    invoke-static {v2}, Lcom/amap/api/col/l3s/ik;->c(Lcom/amap/api/col/l3s/ik;)Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    move-result-object v2

    iput-object v2, v3, Lcom/amap/api/col/l3s/gw$k;->b:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    iget-object v2, p0, Lcom/amap/api/col/l3s/ik$1;->a:Lcom/amap/api/col/l3s/ik;

    invoke-static {v2}, Lcom/amap/api/col/l3s/ik;->g(Lcom/amap/api/col/l3s/ik;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    move-result-object v2

    iput-object v2, v3, Lcom/amap/api/col/l3s/gw$k;->a:Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/ik$1;->a:Lcom/amap/api/col/l3s/ik;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ik;->e(Lcom/amap/api/col/l3s/ik;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_2
    move-exception v3

    :try_start_4
    invoke-static {v3, v4, v7}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    new-instance v3, Lcom/amap/api/col/l3s/gw$k;

    invoke-direct {v3}, Lcom/amap/api/col/l3s/gw$k;-><init>()V

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/amap/api/col/l3s/ik$1;->a:Lcom/amap/api/col/l3s/ik;

    invoke-static {v2}, Lcom/amap/api/col/l3s/ik;->c(Lcom/amap/api/col/l3s/ik;)Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    move-result-object v2

    iput-object v2, v3, Lcom/amap/api/col/l3s/gw$k;->b:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    iget-object v2, p0, Lcom/amap/api/col/l3s/ik$1;->a:Lcom/amap/api/col/l3s/ik;

    invoke-static {v2}, Lcom/amap/api/col/l3s/ik;->g(Lcom/amap/api/col/l3s/ik;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    move-result-object v2

    iput-object v2, v3, Lcom/amap/api/col/l3s/gw$k;->a:Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/ik$1;->a:Lcom/amap/api/col/l3s/ik;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ik;->e(Lcom/amap/api/col/l3s/ik;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catch_1
    move-exception v5

    :try_start_5
    invoke-virtual {v5}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v6

    invoke-virtual {v1, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v5, v4, v3}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    new-instance v3, Lcom/amap/api/col/l3s/gw$k;

    invoke-direct {v3}, Lcom/amap/api/col/l3s/gw$k;-><init>()V

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/amap/api/col/l3s/ik$1;->a:Lcom/amap/api/col/l3s/ik;

    invoke-static {v2}, Lcom/amap/api/col/l3s/ik;->c(Lcom/amap/api/col/l3s/ik;)Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    move-result-object v2

    iput-object v2, v3, Lcom/amap/api/col/l3s/gw$k;->b:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    iget-object v2, p0, Lcom/amap/api/col/l3s/ik$1;->a:Lcom/amap/api/col/l3s/ik;

    invoke-static {v2}, Lcom/amap/api/col/l3s/ik;->g(Lcom/amap/api/col/l3s/ik;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    move-result-object v2

    iput-object v2, v3, Lcom/amap/api/col/l3s/gw$k;->a:Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/ik$1;->a:Lcom/amap/api/col/l3s/ik;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ik;->e(Lcom/amap/api/col/l3s/ik;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_3
    move-exception v3

    new-instance v4, Lcom/amap/api/col/l3s/gw$k;

    invoke-direct {v4}, Lcom/amap/api/col/l3s/gw$k;-><init>()V

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/amap/api/col/l3s/ik$1;->a:Lcom/amap/api/col/l3s/ik;

    invoke-static {v2}, Lcom/amap/api/col/l3s/ik;->c(Lcom/amap/api/col/l3s/ik;)Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    move-result-object v2

    iput-object v2, v4, Lcom/amap/api/col/l3s/gw$k;->b:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    iget-object v2, p0, Lcom/amap/api/col/l3s/ik$1;->a:Lcom/amap/api/col/l3s/ik;

    invoke-static {v2}, Lcom/amap/api/col/l3s/ik;->g(Lcom/amap/api/col/l3s/ik;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    move-result-object v2

    iput-object v2, v4, Lcom/amap/api/col/l3s/gw$k;->a:Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/ik$1;->a:Lcom/amap/api/col/l3s/ik;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ik;->e(Lcom/amap/api/col/l3s/ik;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v3

    :cond_1
    return-void

    :cond_2
    :try_start_6
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_6
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception p0

    invoke-static {p0, v4, v3}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
