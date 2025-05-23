.class public Lcom/zui/launcher/shortcuts/ShortcutKey;
.super Lcom/zui/launcher/util/ComponentKey;
.source ""


# static fields
.field public static final EXTRA_SHORTCUT_ID:Ljava/lang/String; = "shortcut_id"


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/zui/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static fromInfo(Landroid/content/pm/ShortcutInfo;)Lcom/zui/launcher/shortcuts/ShortcutKey;
    .locals 3

    new-instance v0, Lcom/zui/launcher/shortcuts/ShortcutKey;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/zui/launcher/shortcuts/ShortcutKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/zui/launcher/shortcuts/ShortcutKey;
    .locals 2

    const-string v0, "shortcut_id"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/shortcuts/ShortcutKey;

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, p1, v0}, Lcom/zui/launcher/shortcuts/ShortcutKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-object v1
.end method

.method public static fromItemInfo(Lcom/zui/launcher/ItemInfo;)Lcom/zui/launcher/shortcuts/ShortcutKey;
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->doIntentFilter(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v0, p0}, Lcom/zui/launcher/shortcuts/ShortcutKey;->fromIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/zui/launcher/shortcuts/ShortcutKey;

    move-result-object p0

    return-object p0
.end method

.method public static makeIntent(Landroid/content/ComponentName;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.launcher3.DEEP_SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/high16 p1, 0x10200000

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "shortcut_id"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static makeIntent(Landroid/content/pm/ShortcutInfo;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.launcher3.DEEP_SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p0

    const-string v1, "shortcut_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public buildRequest(Landroid/content/Context;)Lcom/zui/launcher/shortcuts/ShortcutRequest;
    .locals 3

    new-instance v0, Lcom/zui/launcher/shortcuts/ShortcutRequest;

    iget-object v1, p0, Lcom/zui/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-direct {v0, p1, v1}, Lcom/zui/launcher/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    iget-object p1, p0, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zui/launcher/shortcuts/ShortcutKey;->getId()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/zui/launcher/shortcuts/ShortcutRequest;->forPackage(Ljava/lang/String;[Ljava/lang/String;)Lcom/zui/launcher/shortcuts/ShortcutRequest;

    move-result-object p0

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
