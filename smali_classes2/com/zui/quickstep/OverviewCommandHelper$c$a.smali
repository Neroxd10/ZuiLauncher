.class Lcom/zui/quickstep/OverviewCommandHelper$c$a;
.super Lcom/zui/quickstep/util/RemoteAnimationProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/OverviewCommandHelper$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/zui/quickstep/OverviewCommandHelper$c;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/OverviewCommandHelper$c;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/OverviewCommandHelper$c$a;->b:Lcom/zui/quickstep/OverviewCommandHelper$c;

    invoke-direct {p0}, Lcom/zui/quickstep/util/RemoteAnimationProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/OverviewCommandHelper$c$a;->b:Lcom/zui/quickstep/OverviewCommandHelper$c;

    invoke-static {v0}, Lcom/zui/quickstep/OverviewCommandHelper$c;->a(Lcom/zui/quickstep/OverviewCommandHelper$c;)Lcom/zui/quickstep/ActivityControlHelper$ActivityInitListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/quickstep/ActivityControlHelper$ActivityInitListener;->unregister()V

    iget-object v0, p0, Lcom/zui/quickstep/OverviewCommandHelper$c$a;->b:Lcom/zui/quickstep/OverviewCommandHelper$c;

    invoke-static {v0}, Lcom/zui/quickstep/OverviewCommandHelper$c;->b(Lcom/zui/quickstep/OverviewCommandHelper$c;)Lcom/zui/quickstep/t4;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/zui/quickstep/t4;->createWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object p1

    new-instance p2, Lcom/zui/quickstep/OverviewCommandHelper$c$a$a;

    invoke-direct {p2, p0}, Lcom/zui/quickstep/OverviewCommandHelper$c$a$a;-><init>(Lcom/zui/quickstep/OverviewCommandHelper$c$a;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method
