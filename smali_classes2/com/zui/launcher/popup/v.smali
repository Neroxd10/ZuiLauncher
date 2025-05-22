.class public final synthetic Lcom/zui/launcher/popup/v;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/popup/RemoteActionShortcut;

.field public final synthetic b:Lcom/zui/launcher/BaseDraggingActivity;

.field public final synthetic c:Lcom/zui/launcher/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/popup/RemoteActionShortcut;Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/popup/v;->a:Lcom/zui/launcher/popup/RemoteActionShortcut;

    iput-object p2, p0, Lcom/zui/launcher/popup/v;->b:Lcom/zui/launcher/BaseDraggingActivity;

    iput-object p3, p0, Lcom/zui/launcher/popup/v;->c:Lcom/zui/launcher/ItemInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/popup/v;->a:Lcom/zui/launcher/popup/RemoteActionShortcut;

    iget-object v1, p0, Lcom/zui/launcher/popup/v;->b:Lcom/zui/launcher/BaseDraggingActivity;

    iget-object p0, p0, Lcom/zui/launcher/popup/v;->c:Lcom/zui/launcher/ItemInfo;

    invoke-virtual {v0, v1, p0, p1}, Lcom/zui/launcher/popup/RemoteActionShortcut;->c(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;Landroid/view/View;)V

    return-void
.end method
