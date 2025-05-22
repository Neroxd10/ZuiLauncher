.class Lcom/zui/launcher/touch/ItemClickHandler$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/touch/ItemClickHandler;->a(Landroid/view/View;Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/Launcher;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/zui/launcher/WorkspaceItemInfo;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher;Landroid/view/View;Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/touch/ItemClickHandler$d;->a:Lcom/zui/launcher/Launcher;

    iput-object p2, p0, Lcom/zui/launcher/touch/ItemClickHandler$d;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/zui/launcher/touch/ItemClickHandler$d;->c:Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/zui/launcher/touch/ItemClickHandler$d;->a:Lcom/zui/launcher/Launcher;

    iget-object p2, p0, Lcom/zui/launcher/touch/ItemClickHandler$d;->b:Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/zui/launcher/BaseDraggingActivity;->getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    new-instance p2, Lcom/zui/launcher/util/PackageManagerHelper;

    iget-object v0, p0, Lcom/zui/launcher/touch/ItemClickHandler$d;->a:Lcom/zui/launcher/Launcher;

    invoke-direct {p2, v0}, Lcom/zui/launcher/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/zui/launcher/touch/ItemClickHandler$d;->c:Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, p0, p1, v0}, Lcom/zui/launcher/util/PackageManagerHelper;->startDetailsActivityForInfo(Lcom/zui/launcher/ItemInfo;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    return-void
.end method
