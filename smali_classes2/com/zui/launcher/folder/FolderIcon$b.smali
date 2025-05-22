.class Lcom/zui/launcher/folder/FolderIcon$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/folder/FolderIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/folder/FolderIcon;


# direct methods
.method constructor <init>(Lcom/zui/launcher/folder/FolderIcon;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/folder/FolderIcon$b;->a:Lcom/zui/launcher/folder/FolderIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/zui/launcher/Alarm;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/folder/FolderIcon$b;->a:Lcom/zui/launcher/folder/FolderIcon;

    iget-object p1, p1, Lcom/zui/launcher/folder/FolderIcon;->b:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {p1}, Lcom/zui/launcher/folder/Folder;->beginExternalDrag()V

    iget-object p1, p0, Lcom/zui/launcher/folder/FolderIcon$b;->a:Lcom/zui/launcher/folder/FolderIcon;

    iget-object p1, p1, Lcom/zui/launcher/folder/FolderIcon;->b:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {p1}, Lcom/zui/launcher/folder/Folder;->animateOpen()V

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon$b;->a:Lcom/zui/launcher/folder/FolderIcon;

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->playFolderAnimExtraInPro()V

    return-void
.end method
