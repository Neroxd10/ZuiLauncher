.class public Lcom/zui/launcher/widget/LocalColorExtractor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/util/ResourceBasedOverride;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/widget/LocalColorExtractor$Listener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/zui/launcher/widget/LocalColorExtractor;
    .locals 2

    const-class v0, Lcom/zui/launcher/widget/LocalColorExtractor;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f120491

    invoke-static {v0, p0, v1}, Lcom/zui/launcher/util/ResourceBasedOverride$Overrides;->getObject(Ljava/lang/Class;Landroid/content/Context;I)Lcom/zui/launcher/util/ResourceBasedOverride;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/widget/LocalColorExtractor;

    return-object p0
.end method


# virtual methods
.method public addLocation(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public applyColorsOverride(Landroid/content/Context;Landroid/app/WallpaperColors;)V
    .locals 0

    return-void
.end method

.method public getExtractedRectForView(Lcom/zui/launcher/Launcher;ILandroid/view/View;Landroid/graphics/RectF;)V
    .locals 0

    return-void
.end method

.method public getExtractedRectForViewRect(Lcom/zui/launcher/Launcher;ILandroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 0

    return-void
.end method

.method public removeLocations()V
    .locals 0

    return-void
.end method

.method public setListener(Lcom/zui/launcher/widget/LocalColorExtractor$Listener;)V
    .locals 0
    .param p1    # Lcom/zui/launcher/widget/LocalColorExtractor$Listener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method
