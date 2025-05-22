.class Lcom/zui/quickstep/RecentsAnimationDeviceState$a;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/RecentsAnimationDeviceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/RecentsAnimationDeviceState;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/RecentsAnimationDeviceState;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState$a;->a:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState$a;->a:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->a(Lcom/zui/quickstep/RecentsAnimationDeviceState;Z)Z

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState$a;->a:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-static {p0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->b(Lcom/zui/quickstep/RecentsAnimationDeviceState;)V

    :cond_0
    return-void
.end method
