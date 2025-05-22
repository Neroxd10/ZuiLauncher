.class public final synthetic Lcom/zui/quickstep/util/s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/OnAlarmListener;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/util/MotionPauseDetector;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/util/MotionPauseDetector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/util/s;->a:Lcom/zui/quickstep/util/MotionPauseDetector;

    return-void
.end method


# virtual methods
.method public final onAlarm(Lcom/zui/launcher/Alarm;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/util/s;->a:Lcom/zui/quickstep/util/MotionPauseDetector;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/util/MotionPauseDetector;->b(Lcom/zui/launcher/Alarm;)V

    return-void
.end method
