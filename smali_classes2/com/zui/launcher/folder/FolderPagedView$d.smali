.class Lcom/zui/launcher/folder/FolderPagedView$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/folder/FolderPagedView;->realTimeReorderAfterRemove(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/folder/FolderPagedView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/folder/FolderPagedView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/folder/FolderPagedView$d;->a:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderPagedView$d;->a:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-static {p0}, Lcom/zui/launcher/folder/FolderPagedView;->s(Lcom/zui/launcher/folder/FolderPagedView;)Lcom/zui/launcher/folder/Folder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->saveOrderAfterRemove()V

    return-void
.end method
