.class Lcom/zui/launcher/Launcher$g1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Launcher;->bindSearchedApp(Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;Lcom/zui/launcher/util/IntArray;[IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/zui/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher;I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher$g1;->b:Lcom/zui/launcher/Launcher;

    iput p2, p0, Lcom/zui/launcher/Launcher$g1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Launcher$g1;->b:Lcom/zui/launcher/Launcher;

    iget-object v0, v0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->updatePageScroll()V

    iget-object v0, p0, Lcom/zui/launcher/Launcher$g1;->b:Lcom/zui/launcher/Launcher;

    iget-object v0, v0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget p0, p0, Lcom/zui/launcher/Launcher$g1;->a:I

    invoke-virtual {v0, p0}, Lcom/zui/launcher/PagedView;->snapToPage(I)Z

    return-void
.end method
