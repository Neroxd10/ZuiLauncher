.class Lcom/zui/quickstep/FallbackActivityControllerHelper$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/FallbackActivityControllerHelper;->prepareRecentsUI(Lcom/zui/quickstep/RecentsActivity;ZZLjava/util/function/Consumer;Lcom/zui/quickstep/RecentsAnimationDeviceState;)Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/zui/quickstep/RecentsActivity;

.field final synthetic c:Lcom/zui/quickstep/fallback/FallbackRecentsView;

.field final synthetic d:Z

.field final synthetic e:Ljava/util/function/Consumer;

.field final synthetic f:Lcom/zui/quickstep/FallbackActivityControllerHelper;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/FallbackActivityControllerHelper;Lcom/zui/quickstep/RecentsActivity;Lcom/zui/quickstep/fallback/FallbackRecentsView;ZLjava/util/function/Consumer;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/FallbackActivityControllerHelper$b;->f:Lcom/zui/quickstep/FallbackActivityControllerHelper;

    iput-object p2, p0, Lcom/zui/quickstep/FallbackActivityControllerHelper$b;->b:Lcom/zui/quickstep/RecentsActivity;

    iput-object p3, p0, Lcom/zui/quickstep/FallbackActivityControllerHelper$b;->c:Lcom/zui/quickstep/fallback/FallbackRecentsView;

    iput-boolean p4, p0, Lcom/zui/quickstep/FallbackActivityControllerHelper$b;->d:Z

    iput-object p5, p0, Lcom/zui/quickstep/FallbackActivityControllerHelper$b;->e:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/quickstep/FallbackActivityControllerHelper$b;->a:Z

    return-void
.end method

.method static synthetic a(Lcom/zui/quickstep/fallback/FallbackRecentsView;Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;Z)V
    .locals 4

    invoke-virtual {p1}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->getInterpolatedProgress()F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/zui/quickstep/fallback/FallbackRecentsView;->setInOverviewState(Z)V

    return-void
.end method


# virtual methods
.method public createActivityController(J)V
    .locals 3

    new-instance v0, Lcom/zui/launcher/anim/PendingAnimation;

    const-wide/16 v1, 0x2

    mul-long/2addr p1, v1

    invoke-direct {v0, p1, p2}, Lcom/zui/launcher/anim/PendingAnimation;-><init>(J)V

    iget-object p1, p0, Lcom/zui/quickstep/FallbackActivityControllerHelper$b;->f:Lcom/zui/quickstep/FallbackActivityControllerHelper;

    iget-object p2, p0, Lcom/zui/quickstep/FallbackActivityControllerHelper$b;->b:Lcom/zui/quickstep/RecentsActivity;

    iget-boolean v1, p0, Lcom/zui/quickstep/FallbackActivityControllerHelper$b;->a:Z

    invoke-virtual {p1, p2, v0, v1}, Lcom/zui/quickstep/FallbackActivityControllerHelper;->createBackgroundToOverviewAnim(Lcom/zui/quickstep/RecentsActivity;Lcom/zui/launcher/anim/PendingAnimation;Z)V

    invoke-virtual {v0}, Lcom/zui/launcher/anim/PendingAnimation;->createPlaybackController()Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/quickstep/FallbackActivityControllerHelper$b;->c:Lcom/zui/quickstep/fallback/FallbackRecentsView;

    iget-boolean v0, p0, Lcom/zui/quickstep/FallbackActivityControllerHelper$b;->d:Z

    new-instance v1, Lcom/zui/quickstep/l;

    invoke-direct {v1, p2, p1, v0}, Lcom/zui/quickstep/l;-><init>(Lcom/zui/quickstep/fallback/FallbackRecentsView;Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;Z)V

    invoke-virtual {p1, v1}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->setEndAction(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/zui/quickstep/FallbackActivityControllerHelper$b;->e:Ljava/util/function/Consumer;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public onRemoteAnimationReceived(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;)V
    .locals 3

    iget-object p1, p0, Lcom/zui/quickstep/FallbackActivityControllerHelper$b;->f:Lcom/zui/quickstep/FallbackActivityControllerHelper;

    iget-object v0, p0, Lcom/zui/quickstep/FallbackActivityControllerHelper$b;->b:Lcom/zui/quickstep/RecentsActivity;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/FallbackActivityControllerHelper$b;->b:Lcom/zui/quickstep/RecentsActivity;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lcom/zui/quickstep/FallbackActivityControllerHelper;->getSwipeUpDestinationAndLength(Lcom/zui/launcher/DeviceProfile;Landroid/content/Context;Landroid/graphics/Rect;)I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/zui/quickstep/FallbackActivityControllerHelper$b;->createActivityController(J)V

    return-void
.end method
