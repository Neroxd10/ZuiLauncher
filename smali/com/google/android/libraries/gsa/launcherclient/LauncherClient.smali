.class public Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;,
        Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;
    }
.end annotation


# static fields
.field private static a:I = -0x1


# instance fields
.field private final b:Landroid/app/Activity;

.field private final c:Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;

.field private final d:Lcom/google/android/libraries/gsa/launcherclient/d;

.field private final e:Lcom/google/android/libraries/gsa/launcherclient/d;

.field private final f:Lcom/google/android/libraries/gsa/launcherclient/i;

.field private final g:Lcom/google/android/libraries/gsa/launcherclient/c;

.field private final h:Landroid/content/BroadcastReceiver;

.field private i:Lcom/google/android/libraries/a/a;

.field private j:I

.field private k:Z

.field private l:I

.field private m:I

.field private n:Landroid/view/WindowManager$LayoutParams;

.field private o:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacksAdapter;

    invoke-direct {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacksAdapter;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;-><init>(Landroid/app/Activity;Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;)V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1, v1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;-><init>(ZZZ)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;-><init>(Landroid/app/Activity;Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/d;

    const-string v1, "Client"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/gsa/launcherclient/d;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->d:Lcom/google/android/libraries/gsa/launcherclient/d;

    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/d;

    const-string v1, "Service"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/gsa/launcherclient/d;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->e:Lcom/google/android/libraries/gsa/launcherclient/d;

    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/f;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/gsa/launcherclient/f;-><init>(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V

    iput-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->h:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->j:I

    iput-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->k:Z

    iput v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->l:I

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->c:Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;

    new-instance p2, Lcom/google/android/libraries/gsa/launcherclient/i;

    const/16 v1, 0x41

    invoke-direct {p2, p1, v1}, Lcom/google/android/libraries/gsa/launcherclient/i;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->f:Lcom/google/android/libraries/gsa/launcherclient/i;

    invoke-static {p3}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)I

    move-result p2

    iput p2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->m:I

    invoke-static {p1}, Lcom/google/android/libraries/gsa/launcherclient/c;->a(Landroid/content/Context;)Lcom/google/android/libraries/gsa/launcherclient/c;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->g:Lcom/google/android/libraries/gsa/launcherclient/c;

    invoke-virtual {p2, p0}, Lcom/google/android/libraries/gsa/launcherclient/c;->a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/a/a;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->i:Lcom/google/android/libraries/a/a;

    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p3, "package"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt p3, v1, :cond_0

    const-string p3, "com.google.android.googlequicksearchbox"

    invoke-virtual {p2, p3, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_0
    iget-object p3, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {p3, v0, p2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget p2, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:I

    if-gtz p2, :cond_1

    invoke-static {p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->c(Landroid/content/Context;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->reconnect()V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_2

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onAttachedToWindow()V

    :cond_2
    return-void
.end method

.method private static a(I)I
    .locals 1

    if-lez p0, :cond_0

    const/16 v0, 0x7ff

    if-gt p0, v0, :cond_0

    shl-int/lit8 p0, p0, 0x2

    or-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid duration"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "app://"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "v"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const/16 v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cv"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher3.WINDOW_OVERLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/i;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->f:Lcom/google/android/libraries/gsa/launcherclient/i;

    return-object p0
.end method

.method private final a()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->i:Lcom/google/android/libraries/a/a;

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->o:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;

    invoke-direct {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->o:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->o:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;->a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V

    sget v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->i:Lcom/google/android/libraries/a/a;

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->n:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->o:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;

    iget v3, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->m:I

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/libraries/a/a;->a(Landroid/view/WindowManager$LayoutParams;Lcom/google/android/libraries/a/d;I)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "layout_params"

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->n:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "configuration"

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "client_options"

    iget v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->m:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->i:Lcom/google/android/libraries/a/a;

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->o:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;

    invoke-interface {v1, v0, v2}, Lcom/google/android/libraries/a/a;->a(Landroid/os/Bundle;Lcom/google/android/libraries/a/d;)V

    :goto_0
    sget v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->j:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->i:Lcom/google/android/libraries/a/a;

    invoke-interface {p0}, Lcom/google/android/libraries/a/a;->d()V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->i:Lcom/google/android/libraries/a/a;

    invoke-interface {p0}, Lcom/google/android/libraries/a/a;->c()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->i:Lcom/google/android/libraries/a/a;

    iget p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->j:I

    invoke-interface {v0, p0}, Lcom/google/android/libraries/a/a;->b(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_1
    return-void
.end method

.method private final a(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->n:Landroid/view/WindowManager$LayoutParams;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->n:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->i:Lcom/google/android/libraries/a/a;

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/android/libraries/a/a;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->i:Lcom/google/android/libraries/a/a;

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b(I)V

    return-void
.end method

.method private final a(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->k:Z

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->f:Lcom/google/android/libraries/gsa/launcherclient/i;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/i;->a()V

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->o:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->o:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$a;

    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->g:Lcom/google/android/libraries/gsa/launcherclient/c;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/c;->a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;Z)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/c;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->g:Lcom/google/android/libraries/gsa/launcherclient/c;

    return-object p0
.end method

.method private final b(I)V
    .locals 3

    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->l:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->l:I

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->c:Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-interface {p0, v0, v1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;->onServiceStateChanged(ZZ)V

    :cond_2
    return-void
.end method

.method static synthetic b(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->c(Landroid/content/Context;)V

    return-void
.end method

.method private final b()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->i:Lcom/google/android/libraries/a/a;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic c(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)I
    .locals 0

    iget p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->j:I

    return p0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "service.api.version"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:I

    return-void

    :cond_1
    :goto_0
    sput v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:I

    return-void
.end method

.method static synthetic d(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)I
    .locals 0

    iget p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->l:I

    return p0
.end method

.method static synthetic f(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->c:Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/d;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->e:Lcom/google/android/libraries/gsa/launcherclient/d;

    return-object p0
.end method


# virtual methods
.method final a(Lcom/google/android/libraries/a/a;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->e:Lcom/google/android/libraries/gsa/launcherclient/d;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Connected"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/libraries/gsa/launcherclient/d;->a(Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->i:Lcom/google/android/libraries/a/a;

    if-nez p1, :cond_1

    invoke-direct {p0, v1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b(I)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->n:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a()V

    :cond_2
    return-void
.end method

.method public disconnect()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a(Z)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherClient"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b()Z

    move-result v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isConnected: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->f:Lcom/google/android/libraries/gsa/launcherclient/i;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/i;->b()Z

    move-result v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "act.isBound: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->g:Lcom/google/android/libraries/gsa/launcherclient/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/i;->b()Z

    move-result v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "app.isBound: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "serviceVersion: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "clientVersion: 14"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->j:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mActivityState: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->l:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mServiceStatus: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->m:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mCurrentServiceConnectionOptions: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->d:Lcom/google/android/libraries/gsa/launcherclient/d;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/gsa/launcherclient/d;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->e:Lcom/google/android/libraries/gsa/launcherclient/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/gsa/launcherclient/d;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public endMove()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->d:Lcom/google/android/libraries/gsa/launcherclient/d;

    const-string v1, "endMove"

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/gsa/launcherclient/d;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->i:Lcom/google/android/libraries/a/a;

    invoke-interface {p0}, Lcom/google/android/libraries/a/a;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public hideOverlay(I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->d:Lcom/google/android/libraries/gsa/launcherclient/d;

    const-string v2, "hideOverlay"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/libraries/gsa/launcherclient/d;->a(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->i:Lcom/google/android/libraries/a/a;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, v0}, Lcom/google/android/libraries/a/a;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public hideOverlay(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->d:Lcom/google/android/libraries/gsa/launcherclient/d;

    const-string v1, "hideOverlay"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/gsa/launcherclient/d;->a(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->i:Lcom/google/android/libraries/a/a;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/libraries/a/a;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->d:Lcom/google/android/libraries/gsa/launcherclient/d;

    const-string v1, "attachedToWindow"

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/gsa/launcherclient/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a(Z)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->d:Lcom/google/android/libraries/gsa/launcherclient/d;

    const-string v1, "detachedFromWindow"

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/gsa/launcherclient/d;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onPause()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->j:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->j:I

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->i:Lcom/google/android/libraries/a/a;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->n:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_2

    :try_start_0
    sget v2, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    invoke-interface {v1}, Lcom/google/android/libraries/a/a;->c()V

    goto :goto_0

    :cond_1
    invoke-interface {v1, v0}, Lcom/google/android/libraries/a/a;->b(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->d:Lcom/google/android/libraries/gsa/launcherclient/d;

    iget p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->j:I

    const-string v1, "stateChanged "

    invoke-virtual {v0, v1, p0}, Lcom/google/android/libraries/gsa/launcherclient/d;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public onResume()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->j:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->j:I

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->i:Lcom/google/android/libraries/a/a;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->n:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_2

    :try_start_0
    sget v2, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    invoke-interface {v1}, Lcom/google/android/libraries/a/a;->d()V

    goto :goto_0

    :cond_1
    invoke-interface {v1, v0}, Lcom/google/android/libraries/a/a;->b(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->d:Lcom/google/android/libraries/gsa/launcherclient/d;

    iget p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->j:I

    const-string v1, "stateChanged "

    invoke-virtual {v0, v1, p0}, Lcom/google/android/libraries/gsa/launcherclient/d;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public onStart()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->g:Lcom/google/android/libraries/gsa/launcherclient/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/gsa/launcherclient/c;->a(Z)V

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->reconnect()V

    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->j:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->j:I

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->i:Lcom/google/android/libraries/a/a;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->n:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v1, v0}, Lcom/google/android/libraries/a/a;->b(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->d:Lcom/google/android/libraries/gsa/launcherclient/d;

    iget p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->j:I

    const-string v1, "stateChanged "

    invoke-virtual {v0, v1, p0}, Lcom/google/android/libraries/gsa/launcherclient/d;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public onStop()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->g:Lcom/google/android/libraries/gsa/launcherclient/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/gsa/launcherclient/c;->a(Z)V

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->f:Lcom/google/android/libraries/gsa/launcherclient/i;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/i;->a()V

    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->j:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->j:I

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->i:Lcom/google/android/libraries/a/a;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->n:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v1, v0}, Lcom/google/android/libraries/a/a;->b(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->d:Lcom/google/android/libraries/gsa/launcherclient/d;

    iget p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->j:I

    const-string v1, "stateChanged "

    invoke-virtual {v0, v1, p0}, Lcom/google/android/libraries/gsa/launcherclient/d;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public reattachOverlay()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->d:Lcom/google/android/libraries/gsa/launcherclient/d;

    const-string v1, "reattachOverlay"

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/gsa/launcherclient/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->n:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    sget v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a()V

    :cond_0
    return-void
.end method

.method public reconnect()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->g:Lcom/google/android/libraries/gsa/launcherclient/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/i;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->f:Lcom/google/android/libraries/gsa/launcherclient/i;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/i;->c()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/libraries/gsa/launcherclient/g;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/gsa/launcherclient/g;-><init>(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public requestHotwordDetection(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->d:Lcom/google/android/libraries/gsa/launcherclient/d;

    const-string v1, "requestHotwordDetection"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/gsa/launcherclient/d;->a(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->i:Lcom/google/android/libraries/a/a;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/libraries/a/a;->b(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setClientOptions(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->m:I

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)I

    move-result p1

    iput p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->m:I

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->n:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a()V

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->d:Lcom/google/android/libraries/gsa/launcherclient/d;

    iget p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->m:I

    const-string v0, "setClientOptions "

    invoke-virtual {p1, v0, p0}, Lcom/google/android/libraries/gsa/launcherclient/d;->a(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public showOverlay(I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->d:Lcom/google/android/libraries/gsa/launcherclient/d;

    const-string v2, "showOverlay"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/libraries/gsa/launcherclient/d;->a(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->i:Lcom/google/android/libraries/a/a;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, v0}, Lcom/google/android/libraries/a/a;->c(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public showOverlay(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->d:Lcom/google/android/libraries/gsa/launcherclient/d;

    const-string v1, "showOverlay"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/gsa/launcherclient/d;->a(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->i:Lcom/google/android/libraries/a/a;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/libraries/a/a;->c(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public startMove()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->d:Lcom/google/android/libraries/gsa/launcherclient/d;

    const-string v1, "startMove"

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/gsa/launcherclient/d;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->i:Lcom/google/android/libraries/a/a;

    invoke-interface {p0}, Lcom/google/android/libraries/a/a;->a_()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public updateMove(F)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->d:Lcom/google/android/libraries/gsa/launcherclient/d;

    const-string v1, "updateMove"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/gsa/launcherclient/d;->a(Ljava/lang/String;F)V

    invoke-direct {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->i:Lcom/google/android/libraries/a/a;

    invoke-interface {p0, p1}, Lcom/google/android/libraries/a/a;->a(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
