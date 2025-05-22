.class Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$k;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->m(Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;ZI)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/zui/quickstep/util/RemoteAnimationTargetSet;


# direct methods
.method constructor <init>(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;Landroid/view/View;Lcom/zui/quickstep/util/RemoteAnimationTargetSet;)V
    .locals 0

    iput-object p2, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$k;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$k;->b:Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$k;->a:Landroid/view/View;

    instance-of v0, p1, Lcom/zui/launcher/BubbleTextView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/zui/launcher/BubbleTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/launcher/BubbleTextView;->setStayPressed(Z)V

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$k;->b:Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

    invoke-virtual {p0}, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->release()V

    return-void
.end method
