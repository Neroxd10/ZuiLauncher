.class public final synthetic Lcom/zui/launcher/popup/w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/zui/launcher/BaseDraggingActivity;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/zui/launcher/BaseDraggingActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/popup/w;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/zui/launcher/popup/w;->b:Lcom/zui/launcher/BaseDraggingActivity;

    return-void
.end method


# virtual methods
.method public final onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/popup/w;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/zui/launcher/popup/w;->b:Lcom/zui/launcher/BaseDraggingActivity;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/zui/launcher/popup/RemoteActionShortcut;->b(Ljava/lang/String;Lcom/zui/launcher/BaseDraggingActivity;Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
