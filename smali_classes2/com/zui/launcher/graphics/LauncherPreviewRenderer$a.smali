.class Lcom/zui/launcher/graphics/LauncherPreviewRenderer$a;
.super Lcom/zui/launcher/icons/BaseIconFactory;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/graphics/LauncherPreviewRenderer;-><init>(Landroid/content/Context;Lcom/zui/launcher/InvariantDeviceProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/zui/launcher/graphics/LauncherPreviewRenderer;Landroid/content/Context;IIIZ)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/icons/BaseIconFactory;-><init>(Landroid/content/Context;IIIZ)V

    return-void
.end method
