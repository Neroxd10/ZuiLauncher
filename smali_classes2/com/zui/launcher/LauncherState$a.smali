.class Lcom/zui/launcher/LauncherState$a;
.super Lcom/zui/launcher/LauncherState$PageAlphaProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/LauncherState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/view/animation/Interpolator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/LauncherState$PageAlphaProvider;-><init>(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public getPageAlpha(I)F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method
