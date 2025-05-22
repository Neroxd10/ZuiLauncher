.class Lcom/zui/quickstep/OverviewCommandHelper$c$a$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/OverviewCommandHelper$c$a;->createWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/OverviewCommandHelper$c$a;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/OverviewCommandHelper$c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/OverviewCommandHelper$c$a$a;->a:Lcom/zui/quickstep/OverviewCommandHelper$c$a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/OverviewCommandHelper$c$a$a;->a:Lcom/zui/quickstep/OverviewCommandHelper$c$a;

    iget-object p0, p0, Lcom/zui/quickstep/OverviewCommandHelper$c$a;->b:Lcom/zui/quickstep/OverviewCommandHelper$c;

    invoke-virtual {p0}, Lcom/zui/quickstep/OverviewCommandHelper$c;->e()V

    return-void
.end method
