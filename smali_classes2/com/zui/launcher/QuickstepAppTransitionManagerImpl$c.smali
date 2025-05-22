.class Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->n(Lcom/zui/launcher/widget/LauncherAppWidgetHostView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Z)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/util/RemoteAnimationTargetSet;


# direct methods
.method constructor <init>(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;Lcom/zui/quickstep/util/RemoteAnimationTargetSet;)V
    .locals 0

    iput-object p2, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$c;->a:Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$c;->a:Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

    invoke-virtual {p0}, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->release()V

    return-void
.end method
