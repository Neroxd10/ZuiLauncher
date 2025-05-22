.class Lcom/zui/launcher/WorkspaceItemInfo$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/WorkspaceItemInfo;->updateIcon(Lcom/zui/launcher/icons/IconCache;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/icons/IconCache;

.field final synthetic b:Lcom/zui/launcher/WorkspaceItemInfo;


# direct methods
.method constructor <init>(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/icons/IconCache;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/WorkspaceItemInfo$a;->b:Lcom/zui/launcher/WorkspaceItemInfo;

    iput-object p2, p0, Lcom/zui/launcher/WorkspaceItemInfo$a;->a:Lcom/zui/launcher/icons/IconCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/WorkspaceItemInfo$a;->b:Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v1, v0, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget-object v2, p0, Lcom/zui/launcher/WorkspaceItemInfo$a;->a:Lcom/zui/launcher/icons/IconCache;

    iget-object v3, v0, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    iget-object v0, v0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v0}, Lcom/zui/launcher/icons/IconCache;->getIcon(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/zui/launcher/WorkspaceItemInfo$a;->b:Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object p0, p0, Lcom/zui/launcher/WorkspaceItemInfo$a;->a:Lcom/zui/launcher/icons/IconCache;

    iget-object v1, v0, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget-object v1, v1, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Lcom/zui/launcher/icons/cache/BaseIconCache;->isDefaultIcon(Landroid/graphics/Bitmap;Landroid/os/UserHandle;)Z

    move-result p0

    iput-boolean p0, v0, Lcom/zui/launcher/WorkspaceItemInfo;->usingFallbackIcon:Z

    return-void
.end method
