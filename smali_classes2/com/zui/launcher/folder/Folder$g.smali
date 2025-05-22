.class Lcom/zui/launcher/folder/Folder$g;
.super Lcom/zui/launcher/accessibility/AccessibleDragListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/folder/Folder;->startDrag(Landroid/view/View;Lcom/zui/launcher/dragndrop/DragOptions;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/zui/launcher/folder/Folder;


# direct methods
.method constructor <init>(Lcom/zui/launcher/folder/Folder;Landroid/view/ViewGroup;I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/folder/Folder$g;->c:Lcom/zui/launcher/folder/Folder;

    invoke-direct {p0, p2, p3}, Lcom/zui/launcher/accessibility/AccessibleDragListenerAdapter;-><init>(Landroid/view/ViewGroup;I)V

    return-void
.end method


# virtual methods
.method protected enableAccessibleDrag(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/zui/launcher/accessibility/AccessibleDragListenerAdapter;->enableAccessibleDrag(Z)V

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder$g;->c:Lcom/zui/launcher/folder/Folder;

    invoke-static {p0}, Lcom/zui/launcher/folder/Folder;->a(Lcom/zui/launcher/folder/Folder;)Landroid/view/View;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method
