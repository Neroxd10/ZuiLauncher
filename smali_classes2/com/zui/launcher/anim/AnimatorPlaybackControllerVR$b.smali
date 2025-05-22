.class Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/animation/ValueAnimator;

.field public final b:Lcom/zui/launcher/anim/SpringProperty;

.field public final c:Landroid/animation/TimeInterpolator;

.field public final d:F

.field public e:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$d;


# direct methods
.method constructor <init>(Landroid/animation/Animator;FLcom/zui/launcher/anim/SpringProperty;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$b;->a:Landroid/animation/ValueAnimator;

    iput-object p3, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$b;->b:Lcom/zui/launcher/anim/SpringProperty;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object p3

    iput-object p3, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$b;->c:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    long-to-float p1, v0

    div-float/2addr p1, p2

    iput p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$b;->d:F

    sget-object p1, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$d;->a:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$d;

    iput-object p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$b;->e:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$d;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$b;->a:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$b;->c:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$d;->a:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$d;

    iput-object v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$b;->e:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$d;

    return-void
.end method

.method public b(F)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$b;->a:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$b;->e:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$d;

    iget p0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$b;->d:F

    invoke-interface {v1, p1, p0}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$d;->b(FF)F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    return-void
.end method
