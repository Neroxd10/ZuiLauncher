.class Lcom/zui/launcher/folder/Folder$q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/folder/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "q"
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/folder/Folder;


# direct methods
.method constructor <init>(Lcom/zui/launcher/folder/Folder;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/folder/Folder$q;->a:Lcom/zui/launcher/folder/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p1, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/FolderInfo;->removeListener(Lcom/zui/launcher/FolderInfo$FolderListener;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder$q;->a:Lcom/zui/launcher/folder/Folder;

    iget-object v1, v0, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    invoke-virtual {v1, v0}, Lcom/zui/launcher/FolderInfo;->addListener(Lcom/zui/launcher/FolderInfo$FolderListener;)V

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder$q;->a:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->updateTextViewFocus()V

    return-void
.end method
