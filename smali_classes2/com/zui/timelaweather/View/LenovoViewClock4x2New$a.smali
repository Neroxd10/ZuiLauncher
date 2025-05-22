.class Lcom/zui/timelaweather/View/LenovoViewClock4x2New$a;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/timelaweather/View/LenovoViewClock4x2New;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/timelaweather/View/LenovoViewClock4x2New;


# direct methods
.method constructor <init>(Lcom/zui/timelaweather/View/LenovoViewClock4x2New;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClock4x2New$a;->a:Lcom/zui/timelaweather/View/LenovoViewClock4x2New;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.intent.action.TIME_SET"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.intent.action.TIME_TICK"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClock4x2New$a;->a:Lcom/zui/timelaweather/View/LenovoViewClock4x2New;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClock4x2New;->a(Lcom/zui/timelaweather/View/LenovoViewClock4x2New;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClock4x2New$a;->a:Lcom/zui/timelaweather/View/LenovoViewClock4x2New;

    invoke-static {p1}, Lcom/zui/timelaweather/View/LenovoViewClock4x2New;->b(Lcom/zui/timelaweather/View/LenovoViewClock4x2New;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClock4x2New$a;->a:Lcom/zui/timelaweather/View/LenovoViewClock4x2New;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/zui/timelaweather/View/LenovoViewClock4x2New;->c(Lcom/zui/timelaweather/View/LenovoViewClock4x2New;Z)Z

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/zui/timelaweather/View/LenovoViewClock4x2New$a;->a:Lcom/zui/timelaweather/View/LenovoViewClock4x2New;

    invoke-static {p1, p2}, Lcom/zui/timelaweather/View/LenovoViewClock4x2New;->c(Lcom/zui/timelaweather/View/LenovoViewClock4x2New;Z)Z

    :goto_1
    iget-object p0, p0, Lcom/zui/timelaweather/View/LenovoViewClock4x2New$a;->a:Lcom/zui/timelaweather/View/LenovoViewClock4x2New;

    invoke-static {p0}, Lcom/zui/timelaweather/View/LenovoViewClock4x2New;->d(Lcom/zui/timelaweather/View/LenovoViewClock4x2New;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    return-void
.end method
