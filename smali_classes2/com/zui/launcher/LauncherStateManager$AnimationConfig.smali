.class public Lcom/zui/launcher/LauncherStateManager$AnimationConfig;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/LauncherStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationConfig"
.end annotation


# instance fields
.field private a:Lcom/zui/launcher/anim/PropertySetter;

.field public animComponents:I

.field private b:Landroid/animation/AnimatorSet;

.field private c:Lcom/zui/launcher/LauncherState;

.field private d:I

.field public duration:J

.field public playbackController:Lcom/zui/launcher/anim/AnimatorPlaybackController;

.field public playbackControllerVR:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

.field public userControlled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x7

    iput v0, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->animComponents:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->d:I

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->b:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/LauncherStateManager$AnimationConfig;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->b:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic c(Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)Lcom/zui/launcher/LauncherState;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->c:Lcom/zui/launcher/LauncherState;

    return-object p0
.end method

.method static synthetic d(Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->d:I

    return p0
.end method


# virtual methods
.method public getPropertySetter(Lcom/zui/launcher/anim/AnimatorSetBuilder;)Lcom/zui/launcher/anim/PropertySetter;
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->a:Lcom/zui/launcher/anim/PropertySetter;

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-object p1, Lcom/zui/launcher/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/zui/launcher/anim/PropertySetter;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/zui/launcher/anim/PropertySetter$AnimatedPropertySetter;

    iget-wide v1, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->duration:J

    invoke-direct {v0, v1, v2, p1}, Lcom/zui/launcher/anim/PropertySetter$AnimatedPropertySetter;-><init>(JLcom/zui/launcher/anim/AnimatorSetBuilder;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->a:Lcom/zui/launcher/anim/PropertySetter;

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->a:Lcom/zui/launcher/anim/PropertySetter;

    return-object p0
.end method

.method public hasAnimationFlag(I)Z
    .locals 0

    iget p0, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->animComponents:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iput-object v1, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->playbackControllerVR:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v0

    if-ne v0, p1, :cond_1

    iput-object v1, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->playbackControllerVR:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->b:Landroid/animation/AnimatorSet;

    if-ne v0, p1, :cond_2

    iput-object v1, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->b:Landroid/animation/AnimatorSet;

    :cond_2
    return-void
.end method

.method public playAtomicOverviewPeekComponent()Z
    .locals 0

    iget p0, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->animComponents:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public playAtomicOverviewScaleComponent()Z
    .locals 0

    iget p0, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->animComponents:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public playNonAtomicComponent()Z
    .locals 1

    iget p0, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->animComponents:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->duration:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->userControlled:Z

    const/4 v2, 0x7

    iput v2, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->animComponents:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->a:Lcom/zui/launcher/anim/PropertySetter;

    iput-object v2, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->c:Lcom/zui/launcher/LauncherState;

    iget-object v3, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->dispatchOnCancel()V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->playbackControllerVR:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->playbackControllerVR:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    invoke-virtual {v0}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->dispatchOnCancel()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->b:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    :goto_0
    iput-object v2, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->b:Landroid/animation/AnimatorSet;

    iput-object v2, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    iput-object v2, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->playbackControllerVR:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    iget v0, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->d:I

    return-void
.end method

.method public setAnimation(Landroid/animation/AnimatorSet;Lcom/zui/launcher/LauncherState;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->b:Landroid/animation/AnimatorSet;

    iput-object p2, p0, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->c:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
