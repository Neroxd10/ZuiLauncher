.class public final synthetic Lcom/zui/launcher/y2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/Workspace;

.field public final synthetic b:Lcom/zui/launcher/folder/FolderIcon;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/folder/FolderIcon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/y2;->a:Lcom/zui/launcher/Workspace;

    iput-object p2, p0, Lcom/zui/launcher/y2;->b:Lcom/zui/launcher/folder/FolderIcon;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/y2;->a:Lcom/zui/launcher/Workspace;

    iget-object p0, p0, Lcom/zui/launcher/y2;->b:Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/Workspace;->s0(Lcom/zui/launcher/folder/FolderIcon;)V

    return-void
.end method
