.class Lcom/zui/launcher/Workspace$s;
.super Lcom/zui/launcher/accessibility/AccessibleDragListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Workspace;->startDrag(Lcom/zui/launcher/CellLayout$CellInfo;Lcom/zui/launcher/dragndrop/DragOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/zui/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Workspace;Landroid/view/ViewGroup;I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Workspace$s;->c:Lcom/zui/launcher/Workspace;

    invoke-direct {p0, p2, p3}, Lcom/zui/launcher/accessibility/AccessibleDragListenerAdapter;-><init>(Landroid/view/ViewGroup;I)V

    return-void
.end method


# virtual methods
.method protected enableAccessibleDrag(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/zui/launcher/accessibility/AccessibleDragListenerAdapter;->enableAccessibleDrag(Z)V

    iget-object v0, p0, Lcom/zui/launcher/Workspace$s;->c:Lcom/zui/launcher/Workspace;

    iget-object v0, v0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/accessibility/AccessibleDragListenerAdapter;->setEnableForLayout(Lcom/zui/launcher/CellLayout;Z)V

    return-void
.end method
