.class Lcom/zui/launcher/folder/Folder$p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/folder/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "p"
.end annotation


# instance fields
.field private final a:Lcom/zui/launcher/DropTarget$DragObject;

.field final synthetic b:Lcom/zui/launcher/folder/Folder;


# direct methods
.method constructor <init>(Lcom/zui/launcher/folder/Folder;Lcom/zui/launcher/DropTarget$DragObject;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/folder/Folder$p;->b:Lcom/zui/launcher/folder/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/folder/Folder$p;->a:Lcom/zui/launcher/DropTarget$DragObject;

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/zui/launcher/Alarm;)V
    .locals 3

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder$p;->b:Lcom/zui/launcher/folder/Folder;

    iget v0, p1, Lcom/zui/launcher/folder/Folder;->N:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {p1}, Lcom/zui/launcher/PagedView;->scrollLeft()Z

    :goto_0
    iget-object p1, p0, Lcom/zui/launcher/folder/Folder$p;->b:Lcom/zui/launcher/folder/Folder;

    iput v1, p1, Lcom/zui/launcher/folder/Folder;->M:I

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {p1}, Lcom/zui/launcher/PagedView;->scrollRight()Z

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/zui/launcher/folder/Folder$p;->b:Lcom/zui/launcher/folder/Folder;

    iput v1, p1, Lcom/zui/launcher/folder/Folder;->N:I

    iget-object v0, p1, Lcom/zui/launcher/folder/Folder;->h:Lcom/zui/launcher/Alarm;

    new-instance v1, Lcom/zui/launcher/folder/Folder$o;

    iget-object v2, p0, Lcom/zui/launcher/folder/Folder$p;->a:Lcom/zui/launcher/DropTarget$DragObject;

    invoke-direct {v1, p1, v2}, Lcom/zui/launcher/folder/Folder$o;-><init>(Lcom/zui/launcher/folder/Folder;Lcom/zui/launcher/DropTarget$DragObject;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Alarm;->setOnAlarmListener(Lcom/zui/launcher/OnAlarmListener;)V

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder$p;->b:Lcom/zui/launcher/folder/Folder;

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->h:Lcom/zui/launcher/Alarm;

    const-wide/16 v0, 0x384

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/Alarm;->setAlarm(J)V

    :cond_1
    return-void
.end method
