.class Lcom/zui/launcher/Workspace$t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Workspace;->L(Landroid/view/View;ILcom/zui/launcher/CellLayout;[IFZLcom/zui/launcher/dragndrop/DragView;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/HotseatLayout;

.field final synthetic b:Lcom/zui/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/HotseatLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Workspace$t;->b:Lcom/zui/launcher/Workspace;

    iput-object p2, p0, Lcom/zui/launcher/Workspace$t;->a:Lcom/zui/launcher/HotseatLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Workspace$t;->a:Lcom/zui/launcher/HotseatLayout;

    invoke-virtual {p0}, Lcom/zui/launcher/HotseatLayout;->reorderAllIconsJustUI()V

    return-void
.end method
