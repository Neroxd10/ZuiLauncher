.class Lcom/zui/launcher/touch/AbstractStateChangeTouchController$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/touch/AbstractStateChangeTouchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field public final a:F

.field public final b:J


# direct methods
.method constructor <init>(FJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController$c;->a:F

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController$c;->b:J

    return-void
.end method
