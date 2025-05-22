.class Lcom/zui/quickstep/RecentsActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/LauncherAnimationRunner$RemoteAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/RecentsActivity;->getActivityLaunchOptions(Landroid/view/View;)Landroid/app/ActivityOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/views/TaskView;

.field final synthetic b:Lcom/zui/launcher/util/RunnableList;

.field final synthetic c:Lcom/zui/quickstep/RecentsActivity;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/RecentsActivity;Lcom/zui/quickstep/views/TaskView;Lcom/zui/launcher/util/RunnableList;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/RecentsActivity$a;->c:Lcom/zui/quickstep/RecentsActivity;

    iput-object p2, p0, Lcom/zui/quickstep/RecentsActivity$a;->a:Lcom/zui/quickstep/views/TaskView;

    iput-object p3, p0, Lcom/zui/quickstep/RecentsActivity$a;->b:Lcom/zui/launcher/util/RunnableList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancelled()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/RecentsActivity$a;->b:Lcom/zui/launcher/util/RunnableList;

    invoke-virtual {p0}, Lcom/zui/launcher/util/RunnableList;->executeAllAndDestroy()V

    return-void
.end method

.method public onCreateAnimation(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/quickstep/RecentsActivity$a;->c:Lcom/zui/quickstep/RecentsActivity;

    iget-object p4, p0, Lcom/zui/quickstep/RecentsActivity$a;->a:Lcom/zui/quickstep/views/TaskView;

    invoke-static {p1, p4, p2, p3}, Lcom/zui/quickstep/RecentsActivity;->f(Lcom/zui/quickstep/RecentsActivity;Lcom/zui/quickstep/views/TaskView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/quickstep/RecentsActivity$a;->c:Lcom/zui/quickstep/RecentsActivity;

    invoke-static {p2}, Lcom/zui/quickstep/RecentsActivity;->g(Lcom/zui/quickstep/RecentsActivity;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p2, p0, Lcom/zui/quickstep/RecentsActivity$a;->c:Lcom/zui/quickstep/RecentsActivity;

    iget-object p0, p0, Lcom/zui/quickstep/RecentsActivity$a;->b:Lcom/zui/launcher/util/RunnableList;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcom/zui/quickstep/o4;

    invoke-direct {p3, p0}, Lcom/zui/quickstep/o4;-><init>(Lcom/zui/launcher/util/RunnableList;)V

    const/4 p0, 0x1

    invoke-virtual {p5, p1, p2, p3, p0}, Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;->setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;Ljava/lang/Runnable;Z)V

    return-void
.end method
