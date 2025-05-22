.class Lcom/zui/quickstep/TaskViewUtils$a;
.super Lcom/zui/launcher/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/TaskViewUtils;->createRecentsWindowAnimator(Lcom/zui/quickstep/views/TaskView;Z[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/launcher/statehandlers/DepthController;Lcom/zui/launcher/anim/PendingAnimation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/zui/quickstep/util/RemoteAnimationTargetSet;


# direct methods
.method constructor <init>(ZLcom/zui/quickstep/util/RemoteAnimationTargetSet;)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/quickstep/TaskViewUtils$a;->a:Z

    iput-object p2, p0, Lcom/zui/quickstep/TaskViewUtils$a;->b:Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

    invoke-direct {p0}, Lcom/zui/launcher/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/TaskViewUtils$a;->b:Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->release()V

    invoke-super {p0, p1}, Lcom/zui/launcher/anim/AnimationSuccessListener;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 0

    iget-boolean p0, p0, Lcom/zui/quickstep/TaskViewUtils$a;->a:Z

    if-eqz p0, :cond_0

    const/16 p0, 0xb

    invoke-static {p0}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->end(I)V

    :cond_0
    return-void
.end method
