.class public final synthetic Lcom/zui/launcher/notification/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/notification/NotificationListener$NotificationsChangedListener;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/notification/NotificationListener$NotificationsChangedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/notification/f;->a:Lcom/zui/launcher/notification/NotificationListener$NotificationsChangedListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/notification/f;->a:Lcom/zui/launcher/notification/NotificationListener$NotificationsChangedListener;

    invoke-static {p0}, Lcom/zui/launcher/notification/NotificationListener;->h(Lcom/zui/launcher/notification/NotificationListener$NotificationsChangedListener;)V

    return-void
.end method
