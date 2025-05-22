.class Lcom/zui/launcher/statehandlers/DepthController$d;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/statehandlers/DepthController;->onMultiWindowModeChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/statehandlers/DepthController;


# direct methods
.method constructor <init>(Lcom/zui/launcher/statehandlers/DepthController;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/statehandlers/DepthController$d;->a:Lcom/zui/launcher/statehandlers/DepthController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/statehandlers/DepthController$d;->a:Lcom/zui/launcher/statehandlers/DepthController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/zui/launcher/statehandlers/DepthController;->f(Lcom/zui/launcher/statehandlers/DepthController;Z)Z

    return-void
.end method
