.class public Lcom/zui/launcher/uioverrides/WallpaperColorInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/WallpaperManager$OnColorsChangedListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/uioverrides/WallpaperColorInfo$OnChangeListener;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/Object;

.field private static g:Lcom/zui/launcher/uioverrides/WallpaperColorInfo;


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/uioverrides/WallpaperColorInfo$OnChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/app/WallpaperManager;

.field private final c:Lcom/android/systemui/shared/system/TonalCompat;

.field private d:Lcom/android/systemui/shared/system/TonalCompat$ExtractionInfo;

.field private e:[Lcom/zui/launcher/uioverrides/WallpaperColorInfo$OnChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->f:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/zui/launcher/uioverrides/WallpaperColorInfo$OnChangeListener;

    iput-object v0, p0, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->e:[Lcom/zui/launcher/uioverrides/WallpaperColorInfo$OnChangeListener;

    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->b:Landroid/app/WallpaperManager;

    new-instance v0, Lcom/android/systemui/shared/system/TonalCompat;

    invoke-direct {v0, p1}, Lcom/android/systemui/shared/system/TonalCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->c:Lcom/android/systemui/shared/system/TonalCompat;

    iget-object p1, p0, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->b:Landroid/app/WallpaperManager;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, p0, v0}, Landroid/app/WallpaperManager;->addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->b:Landroid/app/WallpaperManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->b(Landroid/app/WallpaperColors;)V

    return-void
.end method

.method private a()V
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->e:[Lcom/zui/launcher/uioverrides/WallpaperColorInfo$OnChangeListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zui/launcher/uioverrides/WallpaperColorInfo$OnChangeListener;

    iput-object v0, p0, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->e:[Lcom/zui/launcher/uioverrides/WallpaperColorInfo$OnChangeListener;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    if-eqz v5, :cond_0

    invoke-interface {v5, p0}, Lcom/zui/launcher/uioverrides/WallpaperColorInfo$OnChangeListener;->onExtractedColorsChanged(Lcom/zui/launcher/uioverrides/WallpaperColorInfo;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->e:[Lcom/zui/launcher/uioverrides/WallpaperColorInfo$OnChangeListener;

    array-length v0, v0

    :goto_1
    if-ge v3, v0, :cond_2

    iget-object v2, p0, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->e:[Lcom/zui/launcher/uioverrides/WallpaperColorInfo$OnChangeListener;

    aput-object v1, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iput-object v1, p0, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->e:[Lcom/zui/launcher/uioverrides/WallpaperColorInfo$OnChangeListener;

    return-void
.end method

.method private b(Landroid/app/WallpaperColors;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->c:Lcom/android/systemui/shared/system/TonalCompat;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/system/TonalCompat;->extractDarkColors(Landroid/app/WallpaperColors;)Lcom/android/systemui/shared/system/TonalCompat$ExtractionInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->d:Lcom/android/systemui/shared/system/TonalCompat$ExtractionInfo;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zui/launcher/uioverrides/WallpaperColorInfo;
    .locals 2

    sget-object v0, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->g:Lcom/zui/launcher/uioverrides/WallpaperColorInfo;

    if-nez v1, :cond_0

    new-instance v1, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->g:Lcom/zui/launcher/uioverrides/WallpaperColorInfo;

    :cond_0
    sget-object p0, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->g:Lcom/zui/launcher/uioverrides/WallpaperColorInfo;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public addOnChangeListener(Lcom/zui/launcher/uioverrides/WallpaperColorInfo$OnChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getMainColor()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->d:Lcom/android/systemui/shared/system/TonalCompat$ExtractionInfo;

    iget p0, p0, Lcom/android/systemui/shared/system/TonalCompat$ExtractionInfo;->mainColor:I

    return p0
.end method

.method public getSecondaryColor()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->d:Lcom/android/systemui/shared/system/TonalCompat$ExtractionInfo;

    iget p0, p0, Lcom/android/systemui/shared/system/TonalCompat$ExtractionInfo;->secondaryColor:I

    return p0
.end method

.method public isDark()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->d:Lcom/android/systemui/shared/system/TonalCompat$ExtractionInfo;

    iget-boolean p0, p0, Lcom/android/systemui/shared/system/TonalCompat$ExtractionInfo;->supportsDarkTheme:Z

    return p0
.end method

.method public isMainColorDark()Z
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->d:Lcom/android/systemui/shared/system/TonalCompat$ExtractionInfo;

    iget p0, p0, Lcom/android/systemui/shared/system/TonalCompat$ExtractionInfo;->mainColor:I

    const v0, -0xdfdedc

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onColorsChanged(Landroid/app/WallpaperColors;I)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->b(Landroid/app/WallpaperColors;)V

    invoke-direct {p0}, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->a()V

    :cond_0
    return-void
.end method

.method public removeOnChangeListener(Lcom/zui/launcher/uioverrides/WallpaperColorInfo$OnChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public supportsDarkText()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->d:Lcom/android/systemui/shared/system/TonalCompat$ExtractionInfo;

    iget-boolean p0, p0, Lcom/android/systemui/shared/system/TonalCompat$ExtractionInfo;->supportsDarkText:Z

    return p0
.end method
