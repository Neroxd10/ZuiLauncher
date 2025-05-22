.class public Lcom/lenovo/lsf/common/TimeToLive;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:I

.field private b:J

.field private c:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/lsf/common/TimeToLive;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/lsf/common/TimeToLive;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/lsf/common/TimeToLive;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/lsf/common/TimeToLive;->c:J

    iput p1, p0, Lcom/lenovo/lsf/common/TimeToLive;->a:I

    iput-wide p2, p0, Lcom/lenovo/lsf/common/TimeToLive;->c:J

    invoke-direct {p0}, Lcom/lenovo/lsf/common/TimeToLive;->a()V

    return-void
.end method

.method private a()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Lcom/lenovo/lsf/common/TimeToLive;->a:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lenovo/lsf/common/TimeToLive;->c:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/lsf/common/TimeToLive;->b:J

    return-void
.end method

.method public static restore(Landroid/content/SharedPreferences;)Lcom/lenovo/lsf/common/TimeToLive;
    .locals 5

    new-instance v0, Lcom/lenovo/lsf/common/TimeToLive;

    const/4 v1, 0x0

    const-string v2, "TimeToLive.TTL"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-wide/16 v2, 0x0

    const-string v4, "TimeToLive.EffectiveTime"

    invoke-interface {p0, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/lsf/common/TimeToLive;-><init>(IJ)V

    return-object v0
.end method


# virtual methods
.method public getEffectiveTime()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/lsf/common/TimeToLive;->c:J

    return-wide v0
.end method

.method public getTtl()I
    .locals 0

    iget p0, p0, Lcom/lenovo/lsf/common/TimeToLive;->a:I

    return p0
.end method

.method public isExpired()Z
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/lsf/common/TimeToLive;->b:J

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public save(Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    iget v0, p0, Lcom/lenovo/lsf/common/TimeToLive;->a:I

    const-string v1, "TimeToLive.TTL"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-wide v0, p0, Lcom/lenovo/lsf/common/TimeToLive;->c:J

    const-string p0, "TimeToLive.EffectiveTime"

    invoke-interface {p1, p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public setEffectiveTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/lsf/common/TimeToLive;->c:J

    invoke-direct {p0}, Lcom/lenovo/lsf/common/TimeToLive;->a()V

    return-void
.end method

.method public setTtl(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/lsf/common/TimeToLive;->a:I

    invoke-direct {p0}, Lcom/lenovo/lsf/common/TimeToLive;->a()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ttl="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/lenovo/lsf/common/TimeToLive;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":expiredElapsedRealTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/lenovo/lsf/common/TimeToLive;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ":effectiveTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/lenovo/lsf/common/TimeToLive;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
