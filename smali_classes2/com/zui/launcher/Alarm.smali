.class public Lcom/zui/launcher/Alarm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:J

.field private b:Z

.field private c:Landroid/os/Handler;

.field private d:Lcom/zui/launcher/OnAlarmListener;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/Alarm;->e:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/Alarm;->c:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public alarmPending()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/Alarm;->e:Z

    return p0
.end method

.method public cancelAlarm()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/Alarm;->e:Z

    return-void
.end method

.method public run()V
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/Alarm;->b:Z

    iget-boolean v1, p0, Lcom/zui/launcher/Alarm;->e:Z

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/zui/launcher/Alarm;->a:J

    cmp-long v5, v3, v1

    if-lez v5, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/Alarm;->c:Landroid/os/Handler;

    const-wide/16 v5, 0x0

    sub-long/2addr v3, v1

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/Alarm;->b:Z

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/zui/launcher/Alarm;->e:Z

    iget-object v0, p0, Lcom/zui/launcher/Alarm;->d:Lcom/zui/launcher/OnAlarmListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/zui/launcher/OnAlarmListener;->onAlarm(Lcom/zui/launcher/Alarm;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAlarm(J)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/zui/launcher/Alarm;->e:Z

    iget-wide v3, p0, Lcom/zui/launcher/Alarm;->a:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/zui/launcher/Alarm;->a:J

    iget-boolean v5, p0, Lcom/zui/launcher/Alarm;->b:Z

    if-eqz v5, :cond_0

    cmp-long p1, v3, p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/Alarm;->c:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/Alarm;->b:Z

    :cond_0
    iget-boolean p1, p0, Lcom/zui/launcher/Alarm;->b:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/Alarm;->c:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/zui/launcher/Alarm;->a:J

    sub-long/2addr v3, v0

    invoke-virtual {p1, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v2, p0, Lcom/zui/launcher/Alarm;->b:Z

    :cond_1
    return-void
.end method

.method public setOnAlarmListener(Lcom/zui/launcher/OnAlarmListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Alarm;->d:Lcom/zui/launcher/OnAlarmListener;

    return-void
.end method
