.class Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController;->onDragEnd(FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController;


# direct methods
.method constructor <init>(Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController$a;->a:Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController$a;->a:Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController;

    sget-object p1, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController;->onSwipeInteractionCompleted(Lcom/zui/launcher/LauncherState;I)V

    return-void
.end method
