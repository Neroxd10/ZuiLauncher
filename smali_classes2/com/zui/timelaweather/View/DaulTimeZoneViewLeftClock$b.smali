.class Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock$b;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;


# direct methods
.method constructor <init>(Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock$b;->a:Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

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

    if-eqz p1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock$b;->a:Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;

    invoke-static {p0}, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->a(Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
