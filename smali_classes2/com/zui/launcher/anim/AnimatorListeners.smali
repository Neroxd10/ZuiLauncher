.class public Lcom/zui/launcher/anim/AnimatorListeners;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/anim/AnimatorListeners$c;,
        Lcom/zui/launcher/anim/AnimatorListeners$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    new-instance v0, Lcom/zui/launcher/anim/AnimatorListeners$a;

    invoke-direct {v0, p0}, Lcom/zui/launcher/anim/AnimatorListeners$a;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static forEndCallback(Ljava/util/function/Consumer;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroid/animation/Animator$AnimatorListener;"
        }
    .end annotation

    new-instance v0, Lcom/zui/launcher/anim/AnimatorListeners$b;

    invoke-direct {v0, p0}, Lcom/zui/launcher/anim/AnimatorListeners$b;-><init>(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public static forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;
    .locals 2

    new-instance v0, Lcom/zui/launcher/anim/AnimatorListeners$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zui/launcher/anim/AnimatorListeners$c;-><init>(Ljava/lang/Runnable;Lcom/zui/launcher/anim/AnimatorListeners$a;)V

    return-object v0
.end method
