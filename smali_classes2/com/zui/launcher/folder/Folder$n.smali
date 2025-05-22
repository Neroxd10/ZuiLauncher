.class Lcom/zui/launcher/folder/Folder$n;
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

    iput-object p1, p0, Lcom/zui/launcher/folder/Folder$n;->a:Lcom/zui/launcher/folder/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/zui/launcher/Alarm;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder$n;->a:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->completeDragExit()V

    return-void
.end method
