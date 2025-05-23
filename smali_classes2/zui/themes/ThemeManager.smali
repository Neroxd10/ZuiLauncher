.class public Lzui/themes/ThemeManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/themes/ThemeManager$a;
    }
.end annotation


# static fields
.field public static final ACTION_THEME_CHANGED:Ljava/lang/String; = "com.zui.intent.action.THEME_CHANGED"

.field public static final EXTRA_CONFIG_FONT_CHANGE:Ljava/lang/String; = "android.intent.configuration.theme.font_changed"

.field public static final SYSTEM_DEFAULT_FONT_NAME:Ljava/lang/String; = "system"

.field public static final SYSTEM_ZUK_FONT_NAME:Ljava/lang/String; = "ZukChinese"

.field public static final THEME_URI:Ljava/lang/String; = "content://com.zui.themes"

.field private static final a:Ljava/lang/String; = "ThemeManager"

.field private static b:Lzui/themes/IThemeService;

.field private static c:Lzui/themes/ThemeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p0, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    const-string v0, "ThemeManager constructor"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lzui/themes/ThemeManager;->getService()Lzui/themes/IThemeService;

    move-result-object p0

    sput-object p0, Lzui/themes/ThemeManager;->b:Lzui/themes/IThemeService;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "com.zui.theme"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lzui/themes/ThemeManager;->b:Lzui/themes/IThemeService;

    if-nez p0, :cond_0

    sget-object p0, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    const-string p1, "Unable to get ThemeManagerService. The service either crashed, was not started, or the interface has been called to early in SystemServer init"

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lzui/themes/ThemeManager;
    .locals 1

    sget-object v0, Lzui/themes/ThemeManager;->c:Lzui/themes/ThemeManager;

    if-nez v0, :cond_0

    new-instance v0, Lzui/themes/ThemeManager;

    invoke-direct {v0, p0}, Lzui/themes/ThemeManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lzui/themes/ThemeManager;->c:Lzui/themes/ThemeManager;

    :cond_0
    sget-object p0, Lzui/themes/ThemeManager;->c:Lzui/themes/ThemeManager;

    return-object p0
.end method

.method public static getService()Lzui/themes/IThemeService;
    .locals 4

    sget-object v0, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getService:sService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lzui/themes/ThemeManager;->b:Lzui/themes/IThemeService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lzui/themes/ThemeManager;->b:Lzui/themes/IThemeService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lzui/themes/ThemeManager$a;

    invoke-direct {v0}, Lzui/themes/ThemeManager$a;-><init>()V

    const-string v0, "zuithemes"

    invoke-static {v0}, Lzui/themes/ThemeManager$a;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getService:b="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-static {v0}, Lzui/themes/IThemeService$Stub;->asInterface(Landroid/os/IBinder;)Lzui/themes/IThemeService;

    move-result-object v0

    sput-object v0, Lzui/themes/ThemeManager;->b:Lzui/themes/IThemeService;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public changeSystemFont(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object p0, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeSystemFont:font Path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object p0, Lzui/themes/ThemeManager;->b:Lzui/themes/IThemeService;

    invoke-interface {p0, p1, p2}, Lzui/themes/IThemeService;->changeSystemFont(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    const-string p1, "sService is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    sget-object p1, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    const-string p2, "Unable to change system font"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public changeThemeIcons(Ljava/lang/String;)V
    .locals 2

    sget-object p0, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeThemeIcons:themeName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object p0, Lzui/themes/ThemeManager;->b:Lzui/themes/IThemeService;

    invoke-interface {p0, p1}, Lzui/themes/IThemeService;->changeThemeIcons(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    const-string p1, "sService is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    sget-object p1, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    const-string v0, "Unable to change theme icon"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public convertFileNameToUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    sget-object p0, Lzui/themes/ThemeManager;->b:Lzui/themes/IThemeService;

    invoke-interface {p0, p1}, Lzui/themes/IThemeService;->convertFileNameToUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    const-string p1, "sService is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    sget-object p1, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    const-string v0, "Unable to convert file name to uri string"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public enableOverlayPackages(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-ge p0, v0, :cond_1

    return-void

    :cond_1
    sget-object p0, Lzui/themes/ThemeManager;->b:Lzui/themes/IThemeService;

    invoke-interface {p0, p1}, Lzui/themes/IThemeService;->enableOverlays(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    const-string p1, "sService is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    sget-object p1, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    const-string v0, "Unable to enableOverlayPackages "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public enableThemeOverlays(Ljava/lang/String;)Z
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p0

    :cond_0
    sget-object v0, Lzui/themes/ThemeManager;->b:Lzui/themes/IThemeService;

    invoke-interface {v0, p1}, Lzui/themes/IThemeService;->enableThemeOverlays(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    const-string v1, "Unable to setOverlayPackageEnabled"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return p0
.end method

.method public enableThemeOverlaysWithCategory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    sget-object p0, Lzui/themes/ThemeManager;->b:Lzui/themes/IThemeService;

    invoke-interface {p0, p1, p2}, Lzui/themes/IThemeService;->enableThemeOverlaysWithCategory(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    const-string p2, "Unable to getThemeDisplayName failed!"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public getCurrentTheme()Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object p0, Lzui/themes/ThemeManager;->b:Lzui/themes/IThemeService;

    invoke-interface {p0}, Lzui/themes/IThemeService;->getCurrentTheme()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    const-string v0, "sService is null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    sget-object v0, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    const-string v1, "Unable to get current theme"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEnabledTheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    sget-object p0, Lzui/themes/ThemeManager;->b:Lzui/themes/IThemeService;

    invoke-interface {p0, p1}, Lzui/themes/IThemeService;->getEnabledTheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    const-string v0, "Unable to getThemeDisplayName failed!"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getPreviewImagesList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-object p0, Lzui/themes/ThemeManager;->b:Lzui/themes/IThemeService;

    invoke-interface {p0, p1}, Lzui/themes/IThemeService;->getPreviewImagesList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    const-string p1, "sService is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    sget-object p1, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    const-string v0, "Unable to get preview images list"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreviewImagesPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    sget-object p0, Lzui/themes/ThemeManager;->b:Lzui/themes/IThemeService;

    invoke-interface {p0, p1}, Lzui/themes/IThemeService;->getPreviewImagesPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    const-string p1, "sService is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    sget-object p1, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    const-string v0, "Unable to get preview images path"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSystemFont()Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object p0, Lzui/themes/ThemeManager;->b:Lzui/themes/IThemeService;

    invoke-interface {p0}, Lzui/themes/IThemeService;->getSystemFont()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    const-string v0, "sService is null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    sget-object v0, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    const-string v1, "Unable to get system font"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getThemeDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    sget-object p0, Lzui/themes/ThemeManager;->b:Lzui/themes/IThemeService;

    invoke-interface {p0, p1}, Lzui/themes/IThemeService;->getThemeDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    const-string v0, "Unable to getThemeDisplayName failed!"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getThemeOverlaysList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-object p0, Lzui/themes/ThemeManager;->b:Lzui/themes/IThemeService;

    invoke-interface {p0, p1}, Lzui/themes/IThemeService;->getThemeOverlaysList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    const-string v0, "Unable to getThemeDisplayName failed!"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getThemesList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-object p0, Lzui/themes/ThemeManager;->b:Lzui/themes/IThemeService;

    invoke-interface {p0}, Lzui/themes/IThemeService;->getThemesList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    const-string v0, "sService is null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    sget-object v0, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    const-string v1, "Unable to get themes list"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpapersList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-object p0, Lzui/themes/ThemeManager;->b:Lzui/themes/IThemeService;

    invoke-interface {p0, p1}, Lzui/themes/IThemeService;->getWallpapersList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    const-string p1, "sService is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    sget-object p1, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    const-string v0, "Unable to get preview images list"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpapersPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    sget-object p0, Lzui/themes/ThemeManager;->b:Lzui/themes/IThemeService;

    invoke-interface {p0, p1}, Lzui/themes/IThemeService;->getWallpapersPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    const-string p1, "sService is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    sget-object p1, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    const-string v0, "Unable to get wallpaper path"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isOverlayEnabled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    sget-object p0, Lzui/themes/ThemeManager;->b:Lzui/themes/IThemeService;

    invoke-interface {p0, p1, p2}, Lzui/themes/IThemeService;->isOverlayEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    const-string p2, "Unable to isOverlayEnabled"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public loadPreInstalledResources()V
    .locals 2

    :try_start_0
    sget-object p0, Lzui/themes/ThemeManager;->b:Lzui/themes/IThemeService;

    invoke-interface {p0}, Lzui/themes/IThemeService;->loadPreInstalledResources()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    const-string v0, "sService is null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    sget-object v0, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    const-string v1, "Unable to load "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setOverlayPackageEnabled(Ljava/lang/String;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object p0, Lzui/themes/ThemeManager;->b:Lzui/themes/IThemeService;

    invoke-interface {p0, p1, p2}, Lzui/themes/IThemeService;->setOverlayEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    const-string p1, "sService is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    sget-object p1, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    const-string p2, "Unable to setOverlayPackageEnabled "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public updateMultiThemeInfo(Ljava/lang/String;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    :try_start_0
    sget-object p0, Lzui/themes/ThemeManager;->b:Lzui/themes/IThemeService;

    invoke-interface {p0, p1, p2, p3}, Lzui/themes/IThemeService;->updateMultiThemeInfo(Ljava/lang/String;Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lzui/themes/ThemeManager;->a:Ljava/lang/String;

    const-string p2, "Unable to getThemeDisplayName failed!"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
