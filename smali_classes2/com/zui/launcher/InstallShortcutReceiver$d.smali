.class Lcom/zui/launcher/InstallShortcutReceiver$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/InstallShortcutReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field final a:Z

.field final b:Landroid/content/pm/ShortcutInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final c:Landroid/appwidget/AppWidgetProviderInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final d:Landroid/content/Intent;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final e:Landroid/content/Context;

.field final f:Landroid/content/Intent;

.field final g:Ljava/lang/String;

.field final h:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->b:Landroid/content/pm/ShortcutInfo;

    iput-object p1, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->c:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v0, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->d:Landroid/content/Intent;

    iput-object p3, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object p3

    iput-object p3, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->h:Landroid/os/UserHandle;

    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p3

    const-string v0, "appWidgetId"

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->f:Landroid/content/Intent;

    iget-object p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    iput-object p1, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->b:Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->c:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object p1, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->d:Landroid/content/Intent;

    iput-object p3, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->h:Landroid/os/UserHandle;

    iput-object p2, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->e:Landroid/content/Context;

    const-string p2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    iput-object p2, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->f:Landroid/content/Intent;

    const-string p2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->b:Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->c:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object p1, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->d:Landroid/content/Intent;

    iput-object p2, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->h:Landroid/os/UserHandle;

    iput-object p3, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->e:Landroid/content/Context;

    const-string p2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    iput-object p2, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->f:Landroid/content/Intent;

    const-string p2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/LauncherActivityInfo;Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->b:Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->c:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->d:Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, ""

    invoke-direct {v3, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->d:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->h:Landroid/os/UserHandle;

    iput-object p2, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/zui/launcher/AppInfo;->makeLaunchIntent(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/Intent;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->f:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->a:Z

    iput-object p1, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->b:Landroid/content/pm/ShortcutInfo;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->c:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v0, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->d:Landroid/content/Intent;

    iput-object p2, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->h:Landroid/os/UserHandle;

    invoke-static {p1}, Lcom/zui/launcher/shortcuts/ShortcutKey;->makeIntent(Landroid/content/pm/ShortcutInfo;)Landroid/content/Intent;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->f:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->b:Landroid/content/pm/ShortcutInfo;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    const-string v3, "userHandle"

    const-string v4, "intent.launch"

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    :try_start_1
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget-object v4, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->f:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v4, "isDeepShortcut"

    invoke-virtual {v1, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Z)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/zui/launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/compat/UserManagerCompat;

    move-result-object v2

    iget-object p0, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->h:Landroid/os/UserHandle;

    invoke-virtual {v2, p0}, Lcom/zui/launcher/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->c:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget-object v4, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->f:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v4, "isAppWidget"

    invoke-virtual {v1, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Z)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/zui/launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/compat/UserManagerCompat;

    move-result-object v2

    iget-object p0, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->h:Landroid/os/UserHandle;

    invoke-virtual {v2, p0}, Lcom/zui/launcher/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v1, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->f:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->f:Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->f:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->f:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->f:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->f:Landroid/content/Intent;

    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->f:Landroid/content/Intent;

    iget-object v6, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->g:Ljava/lang/String;

    invoke-static {v1, v2, v6}, Lcom/zui/launcher/InstallShortcutReceiver;->h(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->d:Landroid/content/Intent;

    if-nez v2, :cond_4

    move-object v2, v0

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->d:Landroid/content/Intent;

    const-string v6, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    :goto_1
    iget-object v6, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->d:Landroid/content/Intent;

    if-nez v6, :cond_5

    move-object v6, v0

    goto :goto_2

    :cond_5
    iget-object v6, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->d:Landroid/content/Intent;

    const-string v7, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/Intent$ShortcutIconResource;

    :goto_2
    new-instance v7, Lorg/json/JSONStringer;

    invoke-direct {v7}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual {v7}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v4

    iget-object v7, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->f:Landroid/content/Intent;

    invoke-virtual {v7, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v4

    const-string v7, "name"

    invoke-virtual {v4, v7}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget-object v3, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/zui/launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/compat/UserManagerCompat;

    move-result-object v3

    iget-object v4, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->h:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Lcom/zui/launcher/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    const-string v3, "isAppShortcut"

    invoke-virtual {v1, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget-boolean p0, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->a:Z

    invoke-virtual {v1, p0}, Lorg/json/JSONStringer;->value(Z)Lorg/json/JSONStringer;

    move-result-object p0

    if-eqz v2, :cond_6

    invoke-static {v2}, Lcom/zui/launcher/icons/GraphicsUtils;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v2, "icon"

    invoke-virtual {p0, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object p0

    array-length v2, v1

    invoke-static {v1, v5, v2, v5}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object p0

    :cond_6
    if-eqz v6, :cond_7

    const-string v1, "iconResource"

    invoke-virtual {p0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object p0

    iget-object v1, v6, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object p0

    const-string v1, "iconResourcePackage"

    invoke-virtual {p0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object p0

    iget-object v1, v6, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object p0

    :cond_7
    invoke-virtual {p0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception when adding shortcut: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "InstallShortcutReceiver"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public b()Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/zui/launcher/ItemInfo;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->a:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->d:Landroid/content/Intent;

    iget-object v3, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->h:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->e:Landroid/content/Context;

    invoke-static {p0}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    invoke-static {v0, v3, p0}, Lcom/zui/launcher/InstallShortcutReceiver;->a(Landroid/content/Intent;Landroid/os/UserHandle;Lcom/zui/launcher/LauncherAppState;)Lcom/zui/launcher/WorkspaceItemInfo;

    move-result-object p0

    iput v1, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    iget v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->status:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->status:I

    invoke-static {p0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->b:Landroid/content/pm/ShortcutInfo;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v1, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->b:Landroid/content/pm/ShortcutInfo;

    iget-object v3, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->e:Landroid/content/Context;

    invoke-direct {v0, v1, v3}, Lcom/zui/launcher/WorkspaceItemInfo;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/zui/launcher/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/zui/launcher/icons/LauncherIcons;

    move-result-object v1

    iget-object v3, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->b:Landroid/content/pm/ShortcutInfo;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4, v2, v4}, Lcom/zui/launcher/icons/LauncherIcons;->createShortcutIcon(Landroid/content/pm/ShortcutInfo;ZLjava/util/function/Supplier;Z)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zui/launcher/ItemInfoWithIcon;->applyFrom(Lcom/zui/launcher/icons/BitmapInfo;)V

    invoke-virtual {v1}, Lcom/zui/launcher/icons/LauncherIcons;->recycle()V

    iget-object p0, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->b:Landroid/content/pm/ShortcutInfo;

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->c:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->e:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    move-result-object v0

    new-instance v2, Lcom/zui/launcher/LauncherAppWidgetInfo;

    iget-object v3, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->f:Landroid/content/Intent;

    const-string v4, "appWidgetId"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v2, v1, v3}, Lcom/zui/launcher/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    iget-object v1, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v1

    iget v3, v0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    iput v3, v2, Lcom/zui/launcher/ItemInfo;->minSpanX:I

    iget v3, v0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    iput v3, v2, Lcom/zui/launcher/ItemInfo;->minSpanY:I

    iget v3, v0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->spanX:I

    iget v4, v1, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v0, v0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->spanY:I

    iget v1, v1, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v2, Lcom/zui/launcher/ItemInfo;->spanY:I

    iget-object p0, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->c:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-static {v2, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->d:Landroid/content/Intent;

    iget-object v1, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->h:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->e:Landroid/content/Context;

    invoke-static {p0}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/zui/launcher/InstallShortcutReceiver;->a(Landroid/content/Intent;Landroid/os/UserHandle;Lcom/zui/launcher/LauncherAppState;)Lcom/zui/launcher/WorkspaceItemInfo;

    move-result-object p0

    invoke-static {p0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public c()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/InstallShortcutReceiver$d;->a:Z

    return p0
.end method
