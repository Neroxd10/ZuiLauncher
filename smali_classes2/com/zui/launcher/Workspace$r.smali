.class Lcom/zui/launcher/Workspace$r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Workspace;->setWallpaperDimension()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Workspace;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Workspace$r;->a:Lcom/zui/launcher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/Workspace$r;->a:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/zui/launcher/InvariantDeviceProfile;->defaultWallpaperSize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/zui/launcher/Workspace$r;->a:Lcom/zui/launcher/Workspace;

    iget-object v2, v2, Lcom/zui/launcher/Workspace;->p:Landroid/app/WallpaperManager;

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/zui/launcher/Workspace$r;->a:Lcom/zui/launcher/Workspace;

    iget-object v2, v2, Lcom/zui/launcher/Workspace;->p:Landroid/app/WallpaperManager;

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/Workspace$r;->a:Lcom/zui/launcher/Workspace;

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->p:Landroid/app/WallpaperManager;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v0}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    :cond_1
    return-void
.end method
