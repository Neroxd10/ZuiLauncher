.class public final synthetic Lcom/zui/launcher/uioverrides/touchcontrollers/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/uioverrides/touchcontrollers/StatusBarTouchController;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/uioverrides/touchcontrollers/StatusBarTouchController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/h;->a:Lcom/zui/launcher/uioverrides/touchcontrollers/StatusBarTouchController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/h;->a:Lcom/zui/launcher/uioverrides/touchcontrollers/StatusBarTouchController;

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/uioverrides/touchcontrollers/StatusBarTouchController;->c(Landroid/view/MotionEvent;)V

    return-void
.end method
