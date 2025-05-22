.class Lcom/zui/launcher/LeftScreenCompat$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/Launcher$CustomContentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/LeftScreenCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Lcom/zui/launcher/LeftScreenCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHide()V
    .locals 2

    const-string p0, "=========> LeftScreen   onHide <==========="

    invoke-static {p0}, Lcom/zui/launcher/LeftScreenCompat;->debugLeftScreen(Ljava/lang/String;)V

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "data"

    const-string v1, "LeftFunctionScreen is hide"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "zui.intent.action.LEFTSCREEN_HIDE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onIsLeftisvisiton(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onScrollProgressChanged(F)V
    .locals 0

    return-void
.end method

.method public onShow()V
    .locals 2

    const-string p0, "=========> LeftScreen   onShowShow <==========="

    invoke-static {p0}, Lcom/zui/launcher/LeftScreenCompat;->debugLeftScreen(Ljava/lang/String;)V

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "data"

    const-string v1, "LeftFunctionScreen is show"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "zui.intent.action.LEFTSCREEN_SHOW"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onUpdata(Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method
