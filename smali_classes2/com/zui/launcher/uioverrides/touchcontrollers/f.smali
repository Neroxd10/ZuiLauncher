.class public final synthetic Lcom/zui/launcher/uioverrides/touchcontrollers/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/f;->a:Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/f;->a:Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController;->v(Landroid/animation/ValueAnimator;)V

    return-void
.end method
