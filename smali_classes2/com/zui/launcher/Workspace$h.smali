.class Lcom/zui/launcher/Workspace$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/Workspace$ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Workspace;->I()V
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

    iput-object p1, p0, Lcom/zui/launcher/Workspace$h;->a:Lcom/zui/launcher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z
    .locals 0

    instance-of p1, p2, Lcom/zui/launcher/DropTarget;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Workspace$h;->a:Lcom/zui/launcher/Workspace;

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->D:Lcom/zui/launcher/dragndrop/DragController;

    check-cast p2, Lcom/zui/launcher/DropTarget;

    invoke-virtual {p0, p2}, Lcom/zui/launcher/dragndrop/DragController;->removeDropTarget(Lcom/zui/launcher/DropTarget;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
