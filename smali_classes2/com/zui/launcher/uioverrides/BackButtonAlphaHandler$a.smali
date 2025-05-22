.class Lcom/zui/launcher/uioverrides/BackButtonAlphaHandler$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/uioverrides/BackButtonAlphaHandler;->setStateWithAnimation(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/anim/AnimatorSetBuilder;Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/uioverrides/BackButtonAlphaHandler;


# direct methods
.method constructor <init>(Lcom/zui/launcher/uioverrides/BackButtonAlphaHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/uioverrides/BackButtonAlphaHandler$a;->a:Lcom/zui/launcher/uioverrides/BackButtonAlphaHandler;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/BackButtonAlphaHandler$a;->a:Lcom/zui/launcher/uioverrides/BackButtonAlphaHandler;

    invoke-static {p0}, Lcom/zui/launcher/uioverrides/BackButtonAlphaHandler;->a(Lcom/zui/launcher/uioverrides/BackButtonAlphaHandler;)Lcom/zui/launcher/Launcher;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/uioverrides/UiFactory;->onLauncherStateOrFocusChanged(Lcom/zui/launcher/Launcher;)V

    return-void
.end method
