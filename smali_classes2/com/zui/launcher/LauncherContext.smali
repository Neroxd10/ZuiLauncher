.class public Lcom/zui/launcher/LauncherContext;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ACTION_SHOW_THEME_DLG:Ljava/lang/String; = "action.show_theme_dlg"

.field public static final ACTION_THEME_APPLYING:Ljava/lang/String; = "action.lenovo.leauncher.themeApply"

.field public static final ACTION_THEME_DONE:Ljava/lang/String; = "action.lenovo.leauncher.themeDone"

.field public static final EXTRA_THEME_RESULT:Ljava/lang/String; = "extra_theme_applying_result"

.field public static final KEY_THEME_APPLYING:Ljava/lang/String; = "theme_apply"

.field public static final LOGTAG:Ljava/lang/String; = "Launcher.Theme"

.field public static final PREF_AUTO_TEXT_STYLE:Ljava/lang/String; = "pref_auto_text_style"

.field public static final PREF_THEME:Ljava/lang/String; = "pref_theme"

.field public static sCanShowActiveIcon:Z = true


# instance fields
.field private a:Landroid/app/Application;

.field private b:Landroid/content/pm/PackageManager;

.field private c:Landroid/content/res/Resources;

.field private d:I

.field private e:[Landroid/graphics/Bitmap;

.field private f:[Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/LauncherContext;->a:Landroid/app/Application;

    iput-object v0, p0, Lcom/zui/launcher/LauncherContext;->c:Landroid/content/res/Resources;

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/zui/launcher/LauncherContext;->d:I

    iput-object v0, p0, Lcom/zui/launcher/LauncherContext;->e:[Landroid/graphics/Bitmap;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/zui/launcher/LauncherContext;->f:[Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/zui/launcher/LauncherContext;->a:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/LauncherContext;->b:Landroid/content/pm/PackageManager;

    iget-object p1, p0, Lcom/zui/launcher/LauncherContext;->a:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/LauncherContext;->c:Landroid/content/res/Resources;

    return-void
.end method

.method private a()V
    .locals 7

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherContext;->haveThemeBg()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->isDewTheme(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/LauncherContext;->a:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_1

    const v2, 0x7f08057a

    goto :goto_0

    :cond_1
    const v2, 0x7f080579

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/LauncherContext;->a:Landroid/app/Application;

    invoke-static {v2}, Lcom/zui/launcher/Utilities;->getIconWidth(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/zui/launcher/LauncherContext;->f:[Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    aput-object v0, p0, v5

    aput-object v0, p0, v4

    aput-object v0, p0, v3

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lcom/zui/launcher/LauncherContext;->f:[Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v2}, Lcom/zui/launcher/LauncherContext;->c(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v6, v5

    iget-object v1, p0, Lcom/zui/launcher/LauncherContext;->a:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f08057b

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v5, p0, Lcom/zui/launcher/LauncherContext;->f:[Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v2}, Lcom/zui/launcher/LauncherContext;->c(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v5, v4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/LauncherContext;->a:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08057d

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/LauncherContext;->a:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08057c

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/LauncherContext;->f:[Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v2}, Lcom/zui/launcher/LauncherContext;->c(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object p0

    aput-object p0, v1, v3

    :goto_2
    return-void
.end method

.method private b(Lcom/zui/launcher/icons/IconCache;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-static {p3}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/launcher/LauncherContext;->getBadgedIcon(ILandroid/content/pm/ResolveInfo;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {}, Lcom/zui/launcher/Utilities;->isXuiProduct()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/LauncherContext;->a:Landroid/app/Application;

    invoke-static {p1, p3, p3, p3, p0}, Lcom/zui/launcher/Utilities;->composeIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/LauncherContext;->a()V

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherContext;->haveThemeBg()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/zui/launcher/LauncherContext;->f:[Landroid/graphics/Bitmap;

    const/4 p3, 0x0

    aget-object p3, p2, p3

    const/4 v0, 0x1

    aget-object v0, p2, v0

    const/4 v1, 0x2

    aget-object p2, p2, v1

    iget-object p0, p0, Lcom/zui/launcher/LauncherContext;->a:Landroid/app/Application;

    invoke-static {p1, p3, v0, p2, p0}, Lcom/zui/launcher/Utilities;->composeIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/LauncherContext;->a:Landroid/app/Application;

    invoke-static {p1, p3, p3, p3, p0}, Lcom/zui/launcher/Utilities;->composeIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static badgeIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/content/pm/PackageManager;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {p3}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-direct {v0, p3, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v0, p1}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private c(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .locals 2

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, p2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/zui/launcher/LauncherContext;->a:Landroid/app/Application;

    invoke-virtual {p2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/LauncherContext;->a:Landroid/app/Application;

    invoke-static {p1, p0}, Lcom/zui/launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isCurrentThemeIsDefaultTheme(Landroid/content/Context;)Z
    .locals 0

    sget-boolean p0, Lcom/zui/launcher/LauncherContext;->sCanShowActiveIcon:Z

    return p0
.end method


# virtual methods
.method public createCustomIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/LauncherContext;->a()V

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherContext;->haveThemeBg()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/LauncherContext;->f:[Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v1, 0x1

    aget-object v1, p0, v1

    const/4 v2, 0x2

    aget-object p0, p0, v2

    invoke-static {p1, v0, v1, p0, p2}, Lcom/zui/launcher/Utilities;->composeIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p1, v0, v0, v0, p2}, Lcom/zui/launcher/Utilities;->composeIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "createCustomIconBitmap error : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.Theme"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getBadgedIcon(ILandroid/content/pm/ResolveInfo;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object p1, p0, Lcom/zui/launcher/LauncherContext;->b:Landroid/content/pm/PackageManager;

    invoke-static {p1, p2}, Lcom/zui/launcher/Utilities;->getOriginalIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v0, p2, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object v0

    :cond_0
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/LauncherContext;->b:Landroid/content/pm/PackageManager;

    invoke-static {p1, v0, p0, p3}, Lcom/zui/launcher/LauncherContext;->badgeIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/content/pm/PackageManager;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to create badged icon for "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "xuilauncher"

    invoke-static {p2, p0}, Lcom/zui/launcher/Utilities;->printLoge(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public getColor(II)Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherContext;->c:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getDimensionPixel(II)I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherContext;->c:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/LauncherContext;->getDrawable(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getDrawable(IZ)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherContext;->c:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getFullResIcon(Lcom/zui/launcher/icons/IconCache;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/LauncherContext;->a:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/zui/launcher/LauncherContext;->getIconBitmap(Lcom/zui/launcher/icons/IconCache;Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/zui/launcher/icons/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getIconBitmap(Lcom/zui/launcher/icons/IconCache;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/LauncherContext;->b(Lcom/zui/launcher/icons/IconCache;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getIconBitmap(Lcom/zui/launcher/icons/IconCache;Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p1, p2, p3}, Lcom/zui/launcher/icons/cache/BaseIconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/launcher/LauncherContext;->a:Landroid/app/Application;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/LauncherContext;->createCustomIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getIconBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/LauncherContext;->a:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/zui/launcher/LauncherContext;->createCustomIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getIconBitmapExtend(Lcom/zui/launcher/icons/IconCache;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/LauncherContext;->b(Lcom/zui/launcher/icons/IconCache;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getInteger(II)I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherContext;->c:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public getIntegerByDefault(II)I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherContext;->c:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public getTextColor()I
    .locals 2

    iget v0, p0, Lcom/zui/launcher/LauncherContext;->d:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/zui/launcher/util/SettingsValue;->isAutoChangeTextColor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherContext;->getTextColorFromDB()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/LauncherContext;->getTextColorFromTheme()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/zui/launcher/LauncherContext;->d:I

    :cond_1
    iget p0, p0, Lcom/zui/launcher/LauncherContext;->d:I

    return p0
.end method

.method public getTextColorFromDB()I
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/LauncherContext;->a:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/LauncherContext;->c:Landroid/content/res/Resources;

    const v1, 0x7f06006a

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    const-string v1, "pref_auto_text_style"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTextColorFromTheme()I
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/LauncherContext;->a:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/LauncherContext;->c:Landroid/content/res/Resources;

    const v1, 0x7f06006a

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    const-string v1, "pref_icon_text_style"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getThemeBg()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/LauncherContext;->e:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    aget-object p0, v0, v1

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/LauncherContext;->f:[Landroid/graphics/Bitmap;

    aget-object p0, p0, v1

    return-object p0
.end method

.method public haveThemeBg()Z
    .locals 3

    iget-object p0, p0, Lcom/zui/launcher/LauncherContext;->f:[Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    aget-object v1, p0, v0

    const/4 v2, 0x1

    if-nez v1, :cond_0

    aget-object v1, p0, v2

    if-nez v1, :cond_0

    const/4 v1, 0x2

    aget-object p0, p0, v1

    if-eqz p0, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    return v0
.end method

.method public initAtTheBeginning(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onTerminate()V
    .locals 0

    return-void
.end method

.method public resetThemeBg()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/LauncherContext;->f:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    invoke-direct {p0}, Lcom/zui/launcher/LauncherContext;->a()V

    return-void
.end method

.method public setTextColor(IZ)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/LauncherContext;->d:I

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/LauncherContext;->a:Landroid/app/Application;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p2, "pref_auto_text_style"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method
