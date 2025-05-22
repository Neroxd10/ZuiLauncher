.class Lcom/zui/launcher/LauncherProvider$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/LauncherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/zui/launcher/LauncherProviderChangeListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/launcher/LauncherProvider$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/LauncherProvider$b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/LauncherProvider$b;Lcom/zui/launcher/LauncherProviderChangeListener;)Lcom/zui/launcher/LauncherProviderChangeListener;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/LauncherProvider$b;->a:Lcom/zui/launcher/LauncherProviderChangeListener;

    return-object p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget-object p0, p0, Lcom/zui/launcher/LauncherProvider$b;->a:Lcom/zui/launcher/LauncherProviderChangeListener;

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    iget p1, p1, Landroid/os/Message;->what:I

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/zui/launcher/LauncherProviderChangeListener;->onAppWidgetHostReset()V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/zui/launcher/LauncherProviderChangeListener;->onLauncherProviderChanged()V

    :cond_2
    :goto_0
    return v0
.end method
