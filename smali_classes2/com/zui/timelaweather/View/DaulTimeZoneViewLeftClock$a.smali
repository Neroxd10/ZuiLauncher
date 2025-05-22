.class Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock$a;
.super Landroid/os/Handler;
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

    iput-object p1, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock$a;->a:Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock$a;->a:Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;

    invoke-virtual {p0}, Lcom/zui/timelaweather/View/DaulTimeZoneViewLeftClock;->updateTime()V

    :cond_0
    return-void
.end method
