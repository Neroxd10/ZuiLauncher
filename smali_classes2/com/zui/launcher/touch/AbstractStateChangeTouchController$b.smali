.class Lcom/zui/launcher/touch/AbstractStateChangeTouchController$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/anim/AnimatorPlaybackController;

.field final synthetic b:Lcom/zui/launcher/touch/AbstractStateChangeTouchController;


# direct methods
.method constructor <init>(Lcom/zui/launcher/touch/AbstractStateChangeTouchController;Lcom/zui/launcher/anim/AnimatorPlaybackController;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController$b;->b:Lcom/zui/launcher/touch/AbstractStateChangeTouchController;

    iput-object p2, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController$b;->a:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController$b;->b:Lcom/zui/launcher/touch/AbstractStateChangeTouchController;

    invoke-static {p1}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->e(Lcom/zui/launcher/touch/AbstractStateChangeTouchController;)Lcom/zui/launcher/anim/AnimatorPlaybackController;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController$b;->a:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController$b;->b:Lcom/zui/launcher/touch/AbstractStateChangeTouchController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->f(Lcom/zui/launcher/touch/AbstractStateChangeTouchController;Lcom/zui/launcher/anim/AnimatorPlaybackController;)Lcom/zui/launcher/anim/AnimatorPlaybackController;

    :cond_0
    return-void
.end method
