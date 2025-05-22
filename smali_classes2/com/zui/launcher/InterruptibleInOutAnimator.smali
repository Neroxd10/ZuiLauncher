.class public Lcom/zui/launcher/InterruptibleInOutAnimator;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final i:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/zui/launcher/InterruptibleInOutAnimator;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:J

.field private b:F

.field private c:F

.field private d:Landroid/animation/ValueAnimator;

.field private e:F

.field private f:Z

.field private g:Ljava/lang/Object;

.field h:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zui/launcher/InterruptibleInOutAnimator$a;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "value"

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/InterruptibleInOutAnimator$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/InterruptibleInOutAnimator;->i:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(JFF)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/InterruptibleInOutAnimator;->f:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zui/launcher/InterruptibleInOutAnimator;->g:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, p0, Lcom/zui/launcher/InterruptibleInOutAnimator;->h:I

    sget-object v2, Lcom/zui/launcher/InterruptibleInOutAnimator;->i:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput p3, v3, v1

    aput p4, v3, v0

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/InterruptibleInOutAnimator;->d:Landroid/animation/ValueAnimator;

    iput-wide p1, p0, Lcom/zui/launcher/InterruptibleInOutAnimator;->a:J

    iput p3, p0, Lcom/zui/launcher/InterruptibleInOutAnimator;->b:F

    iput p4, p0, Lcom/zui/launcher/InterruptibleInOutAnimator;->c:F

    new-instance p1, Lcom/zui/launcher/InterruptibleInOutAnimator$b;

    invoke-direct {p1, p0}, Lcom/zui/launcher/InterruptibleInOutAnimator$b;-><init>(Lcom/zui/launcher/InterruptibleInOutAnimator;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/InterruptibleInOutAnimator;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/InterruptibleInOutAnimator;->e:F

    return p0
.end method

.method static synthetic b(Lcom/zui/launcher/InterruptibleInOutAnimator;F)F
    .locals 0

    iput p1, p0, Lcom/zui/launcher/InterruptibleInOutAnimator;->e:F

    return p1
.end method

.method private c(I)V
    .locals 9

    iget-object v0, p0, Lcom/zui/launcher/InterruptibleInOutAnimator;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    iget v3, p0, Lcom/zui/launcher/InterruptibleInOutAnimator;->c:F

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/zui/launcher/InterruptibleInOutAnimator;->b:F

    :goto_0
    iget-boolean v4, p0, Lcom/zui/launcher/InterruptibleInOutAnimator;->f:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/zui/launcher/InterruptibleInOutAnimator;->b:F

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/zui/launcher/InterruptibleInOutAnimator;->e:F

    :goto_1
    invoke-virtual {p0}, Lcom/zui/launcher/InterruptibleInOutAnimator;->cancel()V

    iput p1, p0, Lcom/zui/launcher/InterruptibleInOutAnimator;->h:I

    iget-wide v5, p0, Lcom/zui/launcher/InterruptibleInOutAnimator;->a:J

    sub-long v0, v5, v0

    iget-object p1, p0, Lcom/zui/launcher/InterruptibleInOutAnimator;->d:Landroid/animation/ValueAnimator;

    const-wide/16 v7, 0x0

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/zui/launcher/InterruptibleInOutAnimator;->d:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v4, v0, v1

    aput v3, v0, v2

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p1, p0, Lcom/zui/launcher/InterruptibleInOutAnimator;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v1, p0, Lcom/zui/launcher/InterruptibleInOutAnimator;->f:Z

    return-void
.end method


# virtual methods
.method public animateIn()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zui/launcher/InterruptibleInOutAnimator;->c(I)V

    return-void
.end method

.method public animateOut()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/zui/launcher/InterruptibleInOutAnimator;->c(I)V

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/InterruptibleInOutAnimator;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/InterruptibleInOutAnimator;->h:I

    return-void
.end method

.method public end()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/InterruptibleInOutAnimator;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/InterruptibleInOutAnimator;->h:I

    return-void
.end method

.method public getAnimator()Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/InterruptibleInOutAnimator;->d:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/InterruptibleInOutAnimator;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public isStopped()Z
    .locals 0

    iget p0, p0, Lcom/zui/launcher/InterruptibleInOutAnimator;->h:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/InterruptibleInOutAnimator;->g:Ljava/lang/Object;

    return-void
.end method
