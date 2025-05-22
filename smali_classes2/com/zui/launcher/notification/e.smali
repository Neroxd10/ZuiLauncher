.class public final synthetic Lcom/zui/launcher/notification/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/util/SettingsCache$OnChangeListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/notification/NotificationListener;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/notification/NotificationListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/notification/e;->a:Lcom/zui/launcher/notification/NotificationListener;

    return-void
.end method


# virtual methods
.method public final onSettingsChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/notification/e;->a:Lcom/zui/launcher/notification/NotificationListener;

    invoke-static {p0, p1}, Lcom/zui/launcher/notification/NotificationListener;->d(Lcom/zui/launcher/notification/NotificationListener;Z)V

    return-void
.end method
