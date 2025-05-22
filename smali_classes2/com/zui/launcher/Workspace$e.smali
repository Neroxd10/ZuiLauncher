.class Lcom/zui/launcher/Workspace$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Workspace;->animateWidgetDrop(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/CellLayout;Lcom/zui/launcher/dragndrop/DragView;Lcom/zui/launcher/dragndrop/DragDeleteView;Ljava/lang/Runnable;ILandroid/view/View;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/zui/launcher/ItemInfo;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/zui/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Workspace;ZLcom/zui/launcher/ItemInfo;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Workspace$e;->d:Lcom/zui/launcher/Workspace;

    iput-boolean p2, p0, Lcom/zui/launcher/Workspace$e;->a:Z

    iput-object p3, p0, Lcom/zui/launcher/Workspace$e;->b:Lcom/zui/launcher/ItemInfo;

    iput-object p4, p0, Lcom/zui/launcher/Workspace$e;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/launcher/Workspace$e;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/Workspace$e;->d:Lcom/zui/launcher/Workspace;

    iget-object v0, v0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    iget-object v1, p0, Lcom/zui/launcher/Workspace$e;->b:Lcom/zui/launcher/ItemInfo;

    iget-object p0, p0, Lcom/zui/launcher/Workspace$e;->c:Landroid/view/View;

    invoke-static {v0, v1, p0}, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->showForIcon(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Lcom/zui/launcher/dragndrop/DeleteFloatingView;

    :cond_0
    return-void
.end method
