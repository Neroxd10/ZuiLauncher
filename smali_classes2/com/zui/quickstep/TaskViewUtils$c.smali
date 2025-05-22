.class Lcom/zui/quickstep/TaskViewUtils$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/TaskViewUtils;->getRecentsWindowAnimator(Lcom/zui/quickstep/views/TaskView;Z[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/quickstep/util/ClipAnimationHelper;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/util/RemoteAnimationTargetSet;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/TaskViewUtils$c;->a:Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/TaskViewUtils$c;->a:Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

    invoke-virtual {p0}, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->release()V

    return-void
.end method
