.class Lcom/zui/launcher/folder/Folder$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/folder/Folder;->startEditingFolderName()V
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

    iput-object p1, p0, Lcom/zui/launcher/folder/Folder$h;->a:Lcom/zui/launcher/folder/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder$h;->a:Lcom/zui/launcher/folder/Folder;

    iget-object v0, v0, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder$h;->a:Lcom/zui/launcher/folder/Folder;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/zui/launcher/folder/Folder;->b(Lcom/zui/launcher/folder/Folder;Z)Z

    return-void
.end method
