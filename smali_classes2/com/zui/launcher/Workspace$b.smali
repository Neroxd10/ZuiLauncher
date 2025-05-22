.class Lcom/zui/launcher/Workspace$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Workspace;->F0([ILcom/zui/launcher/CellLayout;Lcom/zui/launcher/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/PendingAddItemInfo;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/zui/launcher/ItemInfo;

.field final synthetic e:Lcom/zui/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/PendingAddItemInfo;IILcom/zui/launcher/ItemInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Workspace$b;->e:Lcom/zui/launcher/Workspace;

    iput-object p2, p0, Lcom/zui/launcher/Workspace$b;->a:Lcom/zui/launcher/PendingAddItemInfo;

    iput p3, p0, Lcom/zui/launcher/Workspace$b;->b:I

    iput p4, p0, Lcom/zui/launcher/Workspace$b;->c:I

    iput-object p5, p0, Lcom/zui/launcher/Workspace$b;->d:Lcom/zui/launcher/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/zui/launcher/Workspace$b;->e:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->deferRemoveExtraEmptyScreen()V

    iget-object v0, p0, Lcom/zui/launcher/Workspace$b;->e:Lcom/zui/launcher/Workspace;

    iget-object v1, v0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    iget-object v2, p0, Lcom/zui/launcher/Workspace$b;->a:Lcom/zui/launcher/PendingAddItemInfo;

    iget v3, p0, Lcom/zui/launcher/Workspace$b;->b:I

    iget v4, p0, Lcom/zui/launcher/Workspace$b;->c:I

    iget-object v5, v0, Lcom/zui/launcher/Workspace;->w:[I

    iget-object p0, p0, Lcom/zui/launcher/Workspace$b;->d:Lcom/zui/launcher/ItemInfo;

    iget v6, p0, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v7, p0, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-virtual/range {v1 .. v7}, Lcom/zui/launcher/Launcher;->addPendingItem(Lcom/zui/launcher/PendingAddItemInfo;II[III)V

    return-void
.end method
