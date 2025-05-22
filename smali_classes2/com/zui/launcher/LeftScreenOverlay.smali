.class public Lcom/zui/launcher/LeftScreenOverlay;
.super Lcom/zui/launcher/LeftScreenCompat;
.source ""

# interfaces
.implements Lcom/zui/launcher/overlay/OverlayConstant;


# instance fields
.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/LeftScreenCompat;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lcom/zui/launcher/LeftScreenOverlay;->c:I

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    iget v0, p0, Lcom/zui/launcher/LeftScreenOverlay;->c:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    const-string v1, "show_cta_dialog"

    invoke-static {p1, v1, v0}, Lcom/zui/launcher/Utilities;->getSettingValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lcom/zui/launcher/LeftScreenOverlay;->c:I

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/LeftScreenOverlay;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x1

    iput p1, p0, Lcom/zui/launcher/LeftScreenOverlay;->c:I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected initCustomCallback()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public showCTADialog()Z
    .locals 1

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/LeftScreenOverlay;->a(Landroid/content/Context;)V

    iget p0, p0, Lcom/zui/launcher/LeftScreenOverlay;->c:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
