.class public final synthetic Lcom/zui/launcher/p;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/util/SecureSettingsObserver$OnChangeListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/LauncherAppState;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/LauncherAppState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/p;->a:Lcom/zui/launcher/LauncherAppState;

    return-void
.end method


# virtual methods
.method public final onSettingsChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/p;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherAppState;->onNotificationSettingsChanged(Z)V

    return-void
.end method
