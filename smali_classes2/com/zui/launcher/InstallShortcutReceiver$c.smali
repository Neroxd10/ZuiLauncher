.class Lcom/zui/launcher/InstallShortcutReceiver$c;
.super Lorg/json/JSONObject;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/InstallShortcutReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/content/Intent;

.field public final b:Landroid/os/UserHandle;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "intent.launch"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/InstallShortcutReceiver$c;->a:Landroid/content/Intent;

    const-string p1, "userHandle"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/zui/launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/compat/UserManagerCompat;

    move-result-object p2

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/zui/launcher/compat/UserManagerCompat;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/zui/launcher/InstallShortcutReceiver$c;->b:Landroid/os/UserHandle;

    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p0, Lorg/json/JSONException;

    const-string p1, "Invalid user"

    invoke-direct {p0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/zui/launcher/InstallShortcutReceiver$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/InstallShortcutReceiver$c;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
