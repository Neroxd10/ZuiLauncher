.class Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$c;
.super Lcom/zui/launcher/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;


# direct methods
.method private constructor <init>(Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$c;->b:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    invoke-direct {p0}, Lcom/zui/launcher/anim/AnimationSuccessListener;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$c;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$c;-><init>(Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;)V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/anim/AnimationSuccessListener;->mCancelled:Z

    iput-boolean p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$c;->a:Z

    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$c;->a:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$c;->b:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    invoke-static {p1}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->a(Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;)Landroid/animation/AnimatorSet;

    move-result-object p1

    sget-object v0, Lcom/zui/launcher/anim/o;->a:Lcom/zui/launcher/anim/o;

    invoke-static {p1, v0}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->b(Landroid/animation/Animator;Ljava/util/function/BiConsumer;)V

    iget-object p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$c;->b:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    invoke-static {p1}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->c(Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$c;->b:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    invoke-static {p1}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->c(Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$c;->a:Z

    :cond_1
    return-void
.end method
