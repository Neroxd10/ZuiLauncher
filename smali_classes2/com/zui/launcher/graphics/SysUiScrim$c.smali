.class Lcom/zui/launcher/graphics/SysUiScrim$c;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/graphics/SysUiScrim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/graphics/SysUiScrim;


# direct methods
.method constructor <init>(Lcom/zui/launcher/graphics/SysUiScrim;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/graphics/SysUiScrim$c;->a:Lcom/zui/launcher/graphics/SysUiScrim;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/graphics/SysUiScrim$c;->a:Lcom/zui/launcher/graphics/SysUiScrim;

    const/4 p1, 0x1

    :goto_0
    invoke-static {p0, p1}, Lcom/zui/launcher/graphics/SysUiScrim;->f(Lcom/zui/launcher/graphics/SysUiScrim;Z)Z

    goto :goto_1

    :cond_0
    const-string p2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/graphics/SysUiScrim$c;->a:Lcom/zui/launcher/graphics/SysUiScrim;

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
