.class Lcom/zui/quickstep/util/MotionPauseDetector$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/quickstep/util/MotionPauseDetector$VelocityProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/util/MotionPauseDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/Long;

.field private b:Ljava/lang/Float;

.field private final c:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector$b;->a:Ljava/lang/Long;

    iput-object v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector$b;->b:Ljava/lang/Float;

    iput p1, p0, Lcom/zui/quickstep/util/MotionPauseDetector$b;->c:I

    return-void
.end method


# virtual methods
.method public addMotionEvent(Landroid/view/MotionEvent;I)Ljava/lang/Float;
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget v2, p0, Lcom/zui/quickstep/util/MotionPauseDetector$b;->c:I

    invoke-virtual {p1, v2, p2}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result p1

    iget-object p2, p0, Lcom/zui/quickstep/util/MotionPauseDetector$b;->a:Ljava/lang/Long;

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/zui/quickstep/util/MotionPauseDetector$b;->b:Ljava/lang/Float;

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v0, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-object p2, p0, Lcom/zui/quickstep/util/MotionPauseDetector$b;->b:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    sub-float p2, p1, p2

    long-to-float v2, v2

    div-float/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector$b;->a:Ljava/lang/Long;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/quickstep/util/MotionPauseDetector$b;->b:Ljava/lang/Float;

    return-object p2
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector$b;->a:Ljava/lang/Long;

    iput-object v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector$b;->b:Ljava/lang/Float;

    return-void
.end method
