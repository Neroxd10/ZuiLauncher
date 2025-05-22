.class Lcom/zui/launcher/folder/Folder$m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/folder/Folder;
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

    iput-object p1, p0, Lcom/zui/launcher/folder/Folder$m;->a:Lcom/zui/launcher/folder/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/zui/launcher/Alarm;)V
    .locals 2

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder$m;->a:Lcom/zui/launcher/folder/Folder;

    iget-object v0, p1, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    iget v1, p1, Lcom/zui/launcher/folder/Folder;->v:I

    iget p1, p1, Lcom/zui/launcher/folder/Folder;->t:I

    invoke-virtual {v0, v1, p1}, Lcom/zui/launcher/folder/FolderPagedView;->realTimeReorder(II)V

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder$m;->a:Lcom/zui/launcher/folder/Folder;

    iget p1, p0, Lcom/zui/launcher/folder/Folder;->t:I

    iput p1, p0, Lcom/zui/launcher/folder/Folder;->v:I

    return-void
.end method
