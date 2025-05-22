.class public final synthetic Lcom/zui/launcher/notification/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/notification/NotificationListener;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/notification/NotificationListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/notification/d;->a:Lcom/zui/launcher/notification/NotificationListener;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/notification/d;->a:Lcom/zui/launcher/notification/NotificationListener;

    check-cast p1, Landroid/service/notification/StatusBarNotification;

    invoke-static {p0, p1}, Lcom/zui/launcher/notification/NotificationListener;->c(Lcom/zui/launcher/notification/NotificationListener;Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    return p0
.end method
