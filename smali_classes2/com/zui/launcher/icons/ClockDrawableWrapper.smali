.class public Lcom/zui/launcher/icons/ClockDrawableWrapper;
.super Landroid/graphics/drawable/AdaptiveIconDrawable;
.source ""

# interfaces
.implements Lcom/zui/launcher/icons/BitmapInfo$Extender;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/icons/ClockDrawableWrapper$d;,
        Lcom/zui/launcher/icons/ClockDrawableWrapper$c;,
        Lcom/zui/launcher/icons/ClockDrawableWrapper$b;
    }
.end annotation


# static fields
.field public static final INVALID_VALUE:I = -0x1

.field public static final TICK_MS:J


# instance fields
.field private final a:Lcom/zui/launcher/icons/ClockDrawableWrapper$b;

.field private b:I

.field protected mThemeData:Lcom/zui/launcher/icons/ThemedIconDrawable$ThemeData;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/zui/launcher/icons/ClockDrawableWrapper;->TICK_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/AdaptiveIconDrawable;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Lcom/zui/launcher/icons/ClockDrawableWrapper$b;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/zui/launcher/icons/ClockDrawableWrapper$b;-><init>(Lcom/zui/launcher/icons/ClockDrawableWrapper$a;)V

    iput-object p1, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper;->a:Lcom/zui/launcher/icons/ClockDrawableWrapper$b;

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcom/zui/launcher/icons/ThemedIconDrawable$ThemeData;)Lcom/zui/launcher/icons/ClockDrawableWrapper;
    .locals 0

    invoke-static {p0, p1}, Lcom/zui/launcher/icons/ClockDrawableWrapper;->d(Landroid/content/Context;Lcom/zui/launcher/icons/ThemedIconDrawable$ThemeData;)Lcom/zui/launcher/icons/ClockDrawableWrapper;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/icons/ClockDrawableWrapper;)Lcom/zui/launcher/icons/ClockDrawableWrapper$b;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper;->a:Lcom/zui/launcher/icons/ClockDrawableWrapper$b;

    return-object p0
.end method

.method private static c(Landroid/content/pm/ApplicationInfo;Landroid/os/Bundle;Ljava/util/function/IntFunction;)Lcom/zui/launcher/icons/ClockDrawableWrapper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Landroid/os/Bundle;",
            "Ljava/util/function/IntFunction<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lcom/zui/launcher/icons/ClockDrawableWrapper;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "com.zui.launcher.LEVEL_PER_TICK_ICON_ROUND"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p2, v1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    instance-of v1, p2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    new-instance v1, Lcom/zui/launcher/icons/ClockDrawableWrapper;

    move-object v3, p2

    check-cast v3, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {v1, v3}, Lcom/zui/launcher/icons/ClockDrawableWrapper;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable;)V

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput p0, v1, Lcom/zui/launcher/icons/ClockDrawableWrapper;->b:I

    iget-object p0, v1, Lcom/zui/launcher/icons/ClockDrawableWrapper;->a:Lcom/zui/launcher/icons/ClockDrawableWrapper$b;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$b;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    const-string p2, "com.zui.launcher.HOUR_LAYER_INDEX"

    const/4 v3, -0x1

    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$b;->b:I

    const-string p2, "com.zui.launcher.MINUTE_LAYER_INDEX"

    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$b;->c:I

    const-string p2, "com.zui.launcher.SECOND_LAYER_INDEX"

    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$b;->d:I

    const-string p2, "com.zui.launcher.DEFAULT_HOUR"

    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$b;->e:I

    const-string p2, "com.zui.launcher.DEFAULT_MINUTE"

    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$b;->f:I

    const-string p2, "com.zui.launcher.DEFAULT_SECOND"

    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$b;->g:I

    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result p2

    iget v2, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$b;->b:I

    if-ltz v2, :cond_3

    if-lt v2, p2, :cond_4

    :cond_3
    iput v3, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$b;->b:I

    :cond_4
    iget v2, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$b;->c:I

    if-ltz v2, :cond_5

    if-lt v2, p2, :cond_6

    :cond_5
    iput v3, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$b;->c:I

    :cond_6
    iget v2, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$b;->d:I

    if-ltz v2, :cond_8

    if-lt v2, p2, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {p1, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    :cond_8
    :goto_0
    iput v3, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$b;->d:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/zui/launcher/icons/ClockDrawableWrapper$b;->a(Ljava/util/Calendar;Landroid/graphics/drawable/LayerDrawable;)Z

    return-object v1
.end method

.method private static d(Landroid/content/Context;Lcom/zui/launcher/icons/ThemedIconDrawable$ThemeData;)Lcom/zui/launcher/icons/ClockDrawableWrapper;
    .locals 8

    :try_start_0
    iget-object v0, p1, Lcom/zui/launcher/icons/ThemedIconDrawable$ThemeData;->a:Landroid/content/res/Resources;

    iget v1, p1, Lcom/zui/launcher/icons/ThemedIconDrawable$ThemeData;->b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget v6, v4, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_0

    iget v6, v4, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x1f

    if-gt v6, v7, :cond_0

    iget v4, v4, Landroid/util/TypedValue;->data:I

    goto :goto_1

    :cond_0
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    :goto_1
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/icons/g;

    invoke-direct {v1, p0, p1}, Lcom/zui/launcher/icons/g;-><init>(Landroid/content/Context;Lcom/zui/launcher/icons/ThemedIconDrawable$ThemeData;)V

    invoke-static {v0, v2, v1}, Lcom/zui/launcher/icons/ClockDrawableWrapper;->c(Landroid/content/pm/ApplicationInfo;Landroid/os/Bundle;Ljava/util/function/IntFunction;)Lcom/zui/launcher/icons/ClockDrawableWrapper;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "ClockDrawableWrapper"

    const-string v0, "Error loading themed clock"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic e(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p0, p2, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Landroid/content/Context;Lcom/zui/launcher/icons/ThemedIconDrawable$ThemeData;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-static {p0}, Lcom/zui/launcher/icons/ThemedIconDrawable;->getColors(Landroid/content/Context;)[I

    move-result-object p0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    aget v1, p0, v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-object p1, p1, Lcom/zui/launcher/icons/ThemedIconDrawable$ThemeData;->a:Landroid/content/res/Resources;

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x1

    aget p0, p0, p2

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    new-instance p0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public static forPackage(Landroid/content/Context;Ljava/lang/String;I)Lcom/zui/launcher/icons/ClockDrawableWrapper;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x2080

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p0

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    new-instance v1, Lcom/zui/launcher/icons/f;

    invoke-direct {v1, p0, p2}, Lcom/zui/launcher/icons/f;-><init>(Landroid/content/res/Resources;I)V

    invoke-static {p1, v0, v1}, Lcom/zui/launcher/icons/ClockDrawableWrapper;->c(Landroid/content/pm/ApplicationInfo;Landroid/os/Bundle;Ljava/util/function/IntFunction;)Lcom/zui/launcher/icons/ClockDrawableWrapper;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "ClockDrawableWrapper"

    const-string p2, "Unable to load clock drawable info"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private g(Landroid/graphics/drawable/LayerDrawable;I)V
    .locals 0

    const/4 p0, -0x1

    if-eq p2, p0, :cond_0

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public drawForPersistence(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    iget-object v1, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper;->a:Lcom/zui/launcher/icons/ClockDrawableWrapper$b;

    iget v1, v1, Lcom/zui/launcher/icons/ClockDrawableWrapper$b;->b:I

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/icons/ClockDrawableWrapper;->g(Landroid/graphics/drawable/LayerDrawable;I)V

    iget-object v1, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper;->a:Lcom/zui/launcher/icons/ClockDrawableWrapper$b;

    iget v1, v1, Lcom/zui/launcher/icons/ClockDrawableWrapper$b;->c:I

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/icons/ClockDrawableWrapper;->g(Landroid/graphics/drawable/LayerDrawable;I)V

    iget-object v1, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper;->a:Lcom/zui/launcher/icons/ClockDrawableWrapper$b;

    iget v1, v1, Lcom/zui/launcher/icons/ClockDrawableWrapper$b;->d:I

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/icons/ClockDrawableWrapper;->g(Landroid/graphics/drawable/LayerDrawable;I)V

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper;->a:Lcom/zui/launcher/icons/ClockDrawableWrapper$b;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p1, v0, p0}, Lcom/zui/launcher/icons/ClockDrawableWrapper$b;->a(Ljava/util/Calendar;Landroid/graphics/drawable/LayerDrawable;)Z

    return-void
.end method

.method public bridge synthetic getExtendedInfo(Landroid/graphics/Bitmap;ILcom/zui/launcher/icons/BaseIconFactory;FLandroid/os/UserHandle;)Lcom/zui/launcher/icons/BitmapInfo;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/zui/launcher/icons/ClockDrawableWrapper;->getExtendedInfo(Landroid/graphics/Bitmap;ILcom/zui/launcher/icons/BaseIconFactory;FLandroid/os/UserHandle;)Lcom/zui/launcher/icons/ClockDrawableWrapper$c;

    move-result-object p0

    return-object p0
.end method

.method public getExtendedInfo(Landroid/graphics/Bitmap;ILcom/zui/launcher/icons/BaseIconFactory;FLandroid/os/UserHandle;)Lcom/zui/launcher/icons/ClockDrawableWrapper$c;
    .locals 7

    invoke-virtual {p3}, Lcom/zui/launcher/icons/BaseIconFactory;->disableColorExtraction()V

    new-instance p5, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p5, v0, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iget v1, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper;->b:I

    const/4 v2, 0x0

    invoke-virtual {p3, p5, v0, v1, v2}, Lcom/zui/launcher/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;IZ)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p3

    new-instance p5, Lcom/zui/launcher/icons/ClockDrawableWrapper$c;

    iget-object v4, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper;->a:Lcom/zui/launcher/icons/ClockDrawableWrapper$b;

    iget-object v5, p3, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper;->mThemeData:Lcom/zui/launcher/icons/ThemedIconDrawable$ThemeData;

    move-object v0, p5

    move-object v1, p1

    move v2, p2

    move v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/icons/ClockDrawableWrapper$c;-><init>(Landroid/graphics/Bitmap;IFLcom/zui/launcher/icons/ClockDrawableWrapper$b;Landroid/graphics/Bitmap;Lcom/zui/launcher/icons/ThemedIconDrawable$ThemeData;)V

    return-object p5
.end method

.method public getThemedDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper;->mThemeData:Lcom/zui/launcher/icons/ThemedIconDrawable$ThemeData;

    if-eqz v0, :cond_1

    invoke-static {p1, v0}, Lcom/zui/launcher/icons/ClockDrawableWrapper;->d(Landroid/content/Context;Lcom/zui/launcher/icons/ThemedIconDrawable$ThemeData;)Lcom/zui/launcher/icons/ClockDrawableWrapper;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :cond_1
    :goto_0
    return-object p0
.end method
