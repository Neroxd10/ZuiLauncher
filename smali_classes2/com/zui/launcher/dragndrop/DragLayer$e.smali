.class Lcom/zui/launcher/dragndrop/DragLayer$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/dragndrop/DragLayer;->g(Lcom/zui/launcher/dragndrop/DragDeleteView;Landroid/view/View;IIFIILandroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/zui/launcher/dragndrop/DragLayer;


# direct methods
.method constructor <init>(Lcom/zui/launcher/dragndrop/DragLayer;ZLandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragLayer$e;->c:Lcom/zui/launcher/dragndrop/DragLayer;

    iput-boolean p2, p0, Lcom/zui/launcher/dragndrop/DragLayer$e;->a:Z

    iput-object p3, p0, Lcom/zui/launcher/dragndrop/DragLayer$e;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/launcher/dragndrop/DragLayer$e;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragLayer$e;->c:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragLayer$e;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/ItemInfo;

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragLayer$e;->b:Landroid/view/View;

    invoke-static {v0, v1, p0}, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->showForIcon(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Lcom/zui/launcher/dragndrop/DeleteFloatingView;

    :cond_0
    return-void
.end method
