.class public final synthetic Lcom/zui/launcher/uioverrides/touchcontrollers/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/quickstep/util/MotionPauseDetector$OnMotionPauseListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/a;->a:Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;

    return-void
.end method


# virtual methods
.method public final onMotionPauseChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/a;->a:Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->E(Z)V

    return-void
.end method
