.class Lcom/zui/launcher/folder/Folder$o;
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
    name = "o"
.end annotation


# instance fields
.field private final a:Lcom/zui/launcher/DropTarget$DragObject;

.field final synthetic b:Lcom/zui/launcher/folder/Folder;


# direct methods
.method constructor <init>(Lcom/zui/launcher/folder/Folder;Lcom/zui/launcher/DropTarget$DragObject;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/folder/Folder$o;->b:Lcom/zui/launcher/folder/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/folder/Folder$o;->a:Lcom/zui/launcher/DropTarget$DragObject;

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/zui/launcher/Alarm;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder$o;->b:Lcom/zui/launcher/folder/Folder;

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder$o;->a:Lcom/zui/launcher/DropTarget$DragObject;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/folder/Folder;->onDragOver(Lcom/zui/launcher/DropTarget$DragObject;)V

    return-void
.end method
