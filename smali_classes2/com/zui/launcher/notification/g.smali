.class public final synthetic Lcom/zui/launcher/notification/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/notification/NotificationListener$NotificationsChangedListener;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/notification/NotificationListener$NotificationsChangedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/notification/g;->a:Lcom/zui/launcher/notification/NotificationListener$NotificationsChangedListener;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/notification/g;->a:Lcom/zui/launcher/notification/NotificationListener$NotificationsChangedListener;

    invoke-static {p0}, Lcom/zui/launcher/notification/NotificationListener;->i(Lcom/zui/launcher/notification/NotificationListener$NotificationsChangedListener;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method
