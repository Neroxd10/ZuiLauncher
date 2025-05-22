.class public final synthetic Lcom/zui/launcher/popup/s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/BaseDraggingActivity;

.field public final synthetic b:Lcom/zui/launcher/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/popup/s;->a:Lcom/zui/launcher/BaseDraggingActivity;

    iput-object p2, p0, Lcom/zui/launcher/popup/s;->b:Lcom/zui/launcher/ItemInfo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/popup/s;->a:Lcom/zui/launcher/BaseDraggingActivity;

    iget-object p0, p0, Lcom/zui/launcher/popup/s;->b:Lcom/zui/launcher/ItemInfo;

    check-cast p1, Landroid/service/notification/StatusBarNotification;

    invoke-static {v0, p0, p1}, Lcom/zui/launcher/popup/PopupPopulator;->a(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;Landroid/service/notification/StatusBarNotification;)Lcom/zui/launcher/notification/NotificationInfo;

    move-result-object p0

    return-object p0
.end method
