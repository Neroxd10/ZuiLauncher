.class Lcom/zui/launcher/LauncherState$b;
.super Lcom/zui/launcher/LauncherState$PageAlphaProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/LauncherState;->getWorkspacePageAlphaProvider(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$PageAlphaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(Lcom/zui/launcher/LauncherState;Landroid/view/animation/Interpolator;I)V
    .locals 0

    iput p3, p0, Lcom/zui/launcher/LauncherState$b;->a:I

    invoke-direct {p0, p2}, Lcom/zui/launcher/LauncherState$PageAlphaProvider;-><init>(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public getPageAlpha(I)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/LauncherState$b;->a:I

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method
