.class public Lcom/android/systemui/shared/system/TonalCompat;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/system/TonalCompat$ExtractionInfo;
    }
.end annotation


# instance fields
.field private final a:Lcom/android/internal/colorextraction/types/Tonal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/colorextraction/types/Tonal;

    invoke-direct {v0, p1}, Lcom/android/internal/colorextraction/types/Tonal;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/shared/system/TonalCompat;->a:Lcom/android/internal/colorextraction/types/Tonal;

    return-void
.end method


# virtual methods
.method public extractDarkColors(Landroid/app/WallpaperColors;)Lcom/android/systemui/shared/system/TonalCompat$ExtractionInfo;
    .locals 3

    new-instance v0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-direct {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/shared/system/TonalCompat;->a:Lcom/android/internal/colorextraction/types/Tonal;

    new-instance v1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-direct {v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;-><init>()V

    new-instance v2, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-direct {v2}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;-><init>()V

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/internal/colorextraction/types/Tonal;->extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    new-instance p0, Lcom/android/systemui/shared/system/TonalCompat$ExtractionInfo;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TonalCompat$ExtractionInfo;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getMainColor()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/shared/system/TonalCompat$ExtractionInfo;->mainColor:I

    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getSecondaryColor()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/shared/system/TonalCompat$ExtractionInfo;->secondaryColor:I

    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/shared/system/TonalCompat$ExtractionInfo;->supportsDarkText:Z

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result p1

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/shared/system/TonalCompat$ExtractionInfo;->supportsDarkTheme:Z

    :cond_1
    return-object p0
.end method
