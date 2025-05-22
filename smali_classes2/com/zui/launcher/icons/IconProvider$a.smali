.class Lcom/zui/launcher/icons/IconProvider$a;
.super Landroid/content/BroadcastReceiver;
.source ""

# interfaces
.implements Lcom/zui/launcher/util/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/icons/IconProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/zui/launcher/icons/IconProvider$IconChangeListener;

.field private b:Ljava/lang/String;

.field final synthetic c:Lcom/zui/launcher/icons/IconProvider;


# direct methods
.method constructor <init>(Lcom/zui/launcher/icons/IconProvider;Lcom/zui/launcher/icons/IconProvider$IconChangeListener;Landroid/os/Handler;)V
    .locals 2

    iput-object p1, p0, Lcom/zui/launcher/icons/IconProvider$a;->c:Lcom/zui/launcher/icons/IconProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/icons/IconProvider$a;->a:Lcom/zui/launcher/icons/IconProvider$IconChangeListener;

    invoke-virtual {p1}, Lcom/zui/launcher/icons/IconProvider;->getSystemIconState()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/icons/IconProvider$a;->b:Ljava/lang/String;

    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.OVERLAY_CHANGED"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v0, "android"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/zui/launcher/icons/IconProvider;->a(Lcom/zui/launcher/icons/IconProvider;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p2, v1, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/zui/launcher/icons/IconProvider;->b(Lcom/zui/launcher/icons/IconProvider;)Landroid/content/ComponentName;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/zui/launcher/icons/IconProvider;->c(Lcom/zui/launcher/icons/IconProvider;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_2

    :cond_0
    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/zui/launcher/icons/IconProvider;->b(Lcom/zui/launcher/icons/IconProvider;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.DATE_CHANGED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    invoke-static {p1}, Lcom/zui/launcher/icons/IconProvider;->a(Lcom/zui/launcher/icons/IconProvider;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0, p2, v1, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/icons/IconProvider$a;->c:Lcom/zui/launcher/icons/IconProvider;

    invoke-static {v0}, Lcom/zui/launcher/icons/IconProvider;->a(Lcom/zui/launcher/icons/IconProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "android.intent.action.DATE_CHANGED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v3

    goto :goto_1

    :sswitch_1
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "android.intent.action.OVERLAY_CHANGED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_2

    if-eq p2, v3, :cond_3

    if-eq p2, v2, :cond_3

    if-eq p2, v1, :cond_1

    goto :goto_3

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/icons/IconProvider$a;->c:Lcom/zui/launcher/icons/IconProvider;

    invoke-virtual {p1}, Lcom/zui/launcher/icons/IconProvider;->getSystemIconState()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/launcher/icons/IconProvider$a;->b:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    iput-object p1, p0, Lcom/zui/launcher/icons/IconProvider$a;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/zui/launcher/icons/IconProvider$a;->a:Lcom/zui/launcher/icons/IconProvider$IconChangeListener;

    invoke-interface {p0, p1}, Lcom/zui/launcher/icons/IconProvider$IconChangeListener;->onSystemIconStateChanged(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    iget-object p2, p0, Lcom/zui/launcher/icons/IconProvider$a;->c:Lcom/zui/launcher/icons/IconProvider;

    invoke-static {p2}, Lcom/zui/launcher/icons/IconProvider;->c(Lcom/zui/launcher/icons/IconProvider;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/zui/launcher/icons/IconProvider$a;->a:Lcom/zui/launcher/icons/IconProvider$IconChangeListener;

    iget-object v0, p0, Lcom/zui/launcher/icons/IconProvider$a;->c:Lcom/zui/launcher/icons/IconProvider;

    invoke-static {v0}, Lcom/zui/launcher/icons/IconProvider;->c(Lcom/zui/launcher/icons/IconProvider;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/zui/launcher/icons/IconProvider$IconChangeListener;->onAppIconChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_3
    iget-object p2, p0, Lcom/zui/launcher/icons/IconProvider$a;->c:Lcom/zui/launcher/icons/IconProvider;

    invoke-static {p2}, Lcom/zui/launcher/icons/IconProvider;->b(Lcom/zui/launcher/icons/IconProvider;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_4

    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserHandle;

    iget-object v0, p0, Lcom/zui/launcher/icons/IconProvider$a;->a:Lcom/zui/launcher/icons/IconProvider$IconChangeListener;

    iget-object v1, p0, Lcom/zui/launcher/icons/IconProvider$a;->c:Lcom/zui/launcher/icons/IconProvider;

    invoke-static {v1}, Lcom/zui/launcher/icons/IconProvider;->b(Lcom/zui/launcher/icons/IconProvider;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/zui/launcher/icons/IconProvider$IconChangeListener;->onAppIconChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_2

    :cond_4
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x740c95e0 -> :sswitch_3
        0x1df32313 -> :sswitch_2
        0x1e1f7f95 -> :sswitch_1
        0x3e117848 -> :sswitch_0
    .end sparse-switch
.end method
