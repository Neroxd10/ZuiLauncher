.class Lcom/zui/launcher/uioverrides/states/OverviewState$a;
.super Lcom/zui/launcher/LauncherState$PageAlphaProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/uioverrides/states/OverviewState;->getWorkspacePageAlphaProvider(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$PageAlphaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/zui/launcher/uioverrides/states/OverviewState;Landroid/view/animation/Interpolator;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/zui/launcher/LauncherState$PageAlphaProvider;-><init>(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public getPageAlpha(I)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
