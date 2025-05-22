.class Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;


# direct methods
.method constructor <init>(Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock$a;->a:Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock$a;->a:Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;

    invoke-static {p1}, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->a(Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    iget-object p0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock$a;->a:Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->a(Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->updateTime(Ljava/util/TimeZone;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/timelaweather/View/NewDualTimeZoneViewClock;->updateTime()V

    :cond_1
    :goto_0
    return-void
.end method
