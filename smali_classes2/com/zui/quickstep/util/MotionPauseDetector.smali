.class public Lcom/zui/quickstep/util/MotionPauseDetector;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/quickstep/util/MotionPauseDetector$a;,
        Lcom/zui/quickstep/util/MotionPauseDetector$b;,
        Lcom/zui/quickstep/util/MotionPauseDetector$VelocityProvider;,
        Lcom/zui/quickstep/util/MotionPauseDetector$OnMotionPauseListener;
    }
.end annotation


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:Lcom/zui/launcher/Alarm;

.field private final f:Z

.field private final g:Landroid/content/Context;

.field private h:Ljava/lang/Long;

.field private i:Ljava/lang/Float;

.field private j:Ljava/lang/Float;

.field private final k:Z

.field private l:Ljava/lang/Float;

.field private m:Ljava/lang/Float;

.field private n:Lcom/zui/quickstep/util/MotionPauseDetector$OnMotionPauseListener;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:J

.field private final s:Lcom/zui/quickstep/util/MotionPauseDetector$VelocityProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/quickstep/util/MotionPauseDetector;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/quickstep/util/MotionPauseDetector;-><init>(Landroid/content/Context;ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->h:Ljava/lang/Long;

    iput-object v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->i:Ljava/lang/Float;

    iput-object v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->j:Ljava/lang/Float;

    iput-object v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->l:Ljava/lang/Float;

    iput-object v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->m:Ljava/lang/Float;

    iput-object p1, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->g:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070493

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->a:F

    const v0, 0x7f070491

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->b:F

    const v0, 0x7f070492

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->c:F

    const v0, 0x7f070490

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->d:F

    new-instance p1, Lcom/zui/launcher/Alarm;

    invoke-direct {p1}, Lcom/zui/launcher/Alarm;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->e:Lcom/zui/launcher/Alarm;

    new-instance v0, Lcom/zui/quickstep/util/s;

    invoke-direct {v0, p0}, Lcom/zui/quickstep/util/s;-><init>(Lcom/zui/quickstep/util/MotionPauseDetector;)V

    invoke-virtual {p1, v0}, Lcom/zui/launcher/Alarm;->setOnAlarmListener(Lcom/zui/launcher/OnAlarmListener;)V

    iput-boolean p2, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->f:Z

    invoke-static {}, Lcom/zui/quickstep/util/MotionPauseDetector;->isMoba()Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->k:Z

    sget-object p1, Lcom/zui/launcher/config/FeatureFlags;->ENABLE_LSQ_VELOCITY_PROVIDER:Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/zui/quickstep/util/MotionPauseDetector$a;

    invoke-direct {p1, p3}, Lcom/zui/quickstep/util/MotionPauseDetector$a;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/zui/quickstep/util/MotionPauseDetector$b;

    invoke-direct {p1, p3}, Lcom/zui/quickstep/util/MotionPauseDetector$b;-><init>(I)V

    :goto_0
    iput-object p1, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->s:Lcom/zui/quickstep/util/MotionPauseDetector$VelocityProvider;

    return-void
.end method

.method private a(FFJ)V
    .locals 5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-boolean v2, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->o:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iget p1, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->d:F

    cmpg-float p2, v0, p1

    if-ltz p2, :cond_1

    cmpg-float p1, v1, p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :cond_1
    :goto_0
    move v4, v3

    goto/16 :goto_8

    :cond_2
    const/4 v2, 0x0

    cmpg-float p1, p1, v2

    if-gez p1, :cond_3

    move p1, v3

    goto :goto_1

    :cond_3
    move p1, v4

    :goto_1
    cmpg-float p2, p2, v2

    if-gez p2, :cond_4

    move p2, v3

    goto :goto_2

    :cond_4
    move p2, v4

    :goto_2
    if-eq p1, p2, :cond_5

    goto/16 :goto_8

    :cond_5
    iget p1, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->a:F

    cmpg-float p2, v0, p1

    if-gez p2, :cond_6

    cmpg-float p1, v1, p1

    if-gez p1, :cond_6

    move p1, v3

    goto :goto_3

    :cond_6
    move p1, v4

    :goto_3
    if-nez p1, :cond_b

    iget-boolean p2, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->p:Z

    if-nez p2, :cond_b

    iget-object p1, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->l:Ljava/lang/Float;

    const p2, 0x3f19999a    # 0.6f

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr p1, p2

    cmpg-float p2, v1, p1

    if-gez p2, :cond_7

    cmpg-float p1, v0, p1

    if-gez p1, :cond_7

    move p1, v3

    goto :goto_4

    :cond_7
    move p1, v4

    :goto_4
    if-eqz p1, :cond_8

    iget p1, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->c:F

    cmpg-float p2, v0, p1

    if-gez p2, :cond_8

    cmpg-float p1, v1, p1

    if-gez p1, :cond_8

    :goto_5
    move p1, v3

    goto :goto_7

    :cond_8
    move p1, v4

    goto :goto_7

    :cond_9
    mul-float/2addr v1, p2

    cmpg-float p1, v0, v1

    if-gez p1, :cond_a

    move p1, v3

    goto :goto_6

    :cond_a
    move p1, v4

    :goto_6
    if-eqz p1, :cond_8

    iget p1, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->c:F

    cmpg-float p1, v0, p1

    if-gez p1, :cond_8

    goto :goto_5

    :cond_b
    :goto_7
    iget-boolean p2, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->f:Z

    if-eqz p2, :cond_e

    iget p1, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->b:F

    cmpg-float p1, v0, p1

    const-wide/16 v0, 0x0

    if-gez p1, :cond_d

    iget-wide p1, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->r:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_c

    iput-wide p3, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->r:J

    :cond_c
    iget-wide p1, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->r:J

    sub-long/2addr p3, p1

    const-wide/16 p1, 0x190

    cmp-long p1, p3, p1

    if-ltz p1, :cond_0

    goto/16 :goto_0

    :cond_d
    iput-wide v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->r:J

    goto :goto_8

    :cond_e
    move v4, p1

    :goto_8
    invoke-direct {p0, v4}, Lcom/zui/quickstep/util/MotionPauseDetector;->c(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->q:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-boolean v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->o:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->o:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/zui/launcher/compat/AccessibilityManagerCompat;->sendPauseDetectedEventToTest(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->p:Z

    :cond_1
    iget-object p1, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->n:Lcom/zui/quickstep/util/MotionPauseDetector$OnMotionPauseListener;

    if-eqz p1, :cond_2

    iget-boolean p0, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->o:Z

    invoke-interface {p1, p0}, Lcom/zui/quickstep/util/MotionPauseDetector$OnMotionPauseListener;->onMotionPauseChanged(Z)V

    :cond_2
    return-void
.end method

.method public static isMoba()Z
    .locals 2

    const-string v0, "ro.build.product"

    const-string v1, "null"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "qssi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "moba"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addPosition(FJ)V
    .locals 4

    iget-object v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->m:Ljava/lang/Float;

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->m:Ljava/lang/Float;

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->e:Lcom/zui/launcher/Alarm;

    iget-boolean v1, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->f:Z

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x190

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x12c

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/Alarm;->setAlarm(J)V

    iget-object v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->h:Ljava/lang/Long;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->i:Ljava/lang/Float;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, p2, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x1

    iget-object v2, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->h:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, p2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->i:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float v2, p1, v2

    long-to-float v0, v0

    div-float/2addr v2, v0

    iget-object v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->j:Ljava/lang/Float;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v2, v0, p2, p3}, Lcom/zui/quickstep/util/MotionPauseDetector;->a(FFJ)V

    iget-boolean v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->j:Ljava/lang/Float;

    iput-object v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->l:Ljava/lang/Float;

    :cond_2
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->j:Ljava/lang/Float;

    :cond_3
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->h:Ljava/lang/Long;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->i:Ljava/lang/Float;

    return-void
.end method

.method public addPosition(Landroid/view/MotionEvent;I)V
    .locals 4

    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_0

    const-string v0, "b/139891609"

    const-string v1, "setting alarm"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->e:Lcom/zui/launcher/Alarm;

    iget-boolean v1, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->f:Z

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x190

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x12c

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/Alarm;->setAlarm(J)V

    iget-object v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->s:Lcom/zui/quickstep/util/MotionPauseDetector$VelocityProvider;

    invoke-interface {v0, p1, p2}, Lcom/zui/quickstep/util/MotionPauseDetector$VelocityProvider;->addMotionEvent(Landroid/view/MotionEvent;I)Ljava/lang/Float;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->j:Ljava/lang/Float;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->j:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/zui/quickstep/util/MotionPauseDetector;->a(FFJ)V

    :cond_2
    iput-object p2, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->j:Ljava/lang/Float;

    return-void
.end method

.method public synthetic b(Lcom/zui/launcher/Alarm;)V
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/zui/quickstep/util/MotionPauseDetector;->c(Z)V

    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->h:Ljava/lang/Long;

    iput-object v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->i:Ljava/lang/Float;

    iput-object v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->j:Ljava/lang/Float;

    iput-object v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->m:Ljava/lang/Float;

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/util/MotionPauseDetector;->setOnMotionPauseListener(Lcom/zui/quickstep/util/MotionPauseDetector$OnMotionPauseListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->p:Z

    iput-boolean v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->o:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->r:J

    iget-object p0, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->e:Lcom/zui/launcher/Alarm;

    invoke-virtual {p0}, Lcom/zui/launcher/Alarm;->cancelAlarm()V

    return-void
.end method

.method public isPaused()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->o:Z

    return p0
.end method

.method public setDisallowPause(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->q:Z

    iget-boolean p1, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->o:Z

    invoke-direct {p0, p1}, Lcom/zui/quickstep/util/MotionPauseDetector;->c(Z)V

    return-void
.end method

.method public setOnMotionPauseListener(Lcom/zui/quickstep/util/MotionPauseDetector$OnMotionPauseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/util/MotionPauseDetector;->n:Lcom/zui/quickstep/util/MotionPauseDetector$OnMotionPauseListener;

    return-void
.end method
