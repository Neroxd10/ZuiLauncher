.class Lcom/zui/launcher/uioverrides/touchcontrollers/l;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field final synthetic a:Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;


# direct methods
.method constructor <init>(Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/l;->a:Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/l;->a:Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->B(Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    return-void
.end method
