.class Lcom/zui/launcher/folder/Folder$i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/folder/Folder;->k(Lcom/zui/launcher/FolderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/folder/Folder;


# direct methods
.method constructor <init>(Lcom/zui/launcher/folder/Folder;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/folder/Folder$i;->a:Lcom/zui/launcher/folder/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder$i;->a:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {v0}, Lcom/zui/launcher/folder/Folder;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder$i;->a:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->s()V

    :cond_0
    return-void
.end method
