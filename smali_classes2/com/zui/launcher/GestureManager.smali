.class public Lcom/zui/launcher/GestureManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/GestureManager$a;
    }
.end annotation


# static fields
.field public static final ACTION_GESTURE_DOCK_SCROLL_UP:Ljava/lang/String; = "com.xui.launcher.gesture.Intent.ACTION_DOCK_SCROLL_UP"

.field public static final ACTION_GESTURE_DOUBLE_CLICK:Ljava/lang/String; = "com.xui.launcher.gesture.Intent.ACTION_DOUBLE_CLICK"

.field public static final ACTION_GESTURE_SCROLL_DOWN:Ljava/lang/String; = "com.xui.launcher.gesture.Intent.ACTION_SCROLL_DOWN"

.field public static final ACTION_GESTURE_SCROLL_UP:Ljava/lang/String; = "com.xui.launcher.gesture.Intent.ACTION_SCROLL_UP"

.field public static final ACTION_GESTURE_WIDGET_SCROLL_DOWN:Ljava/lang/String; = "com.xui.launcher.gesture.Intent.ACTION_GESTURE_WIDGET_SCROLL_DOWN"


# instance fields
.field private a:Landroid/app/AlertDialog;

.field private b:Lcom/zui/launcher/Launcher;

.field private c:Lcom/zui/launcher/GestureManager$a;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/GestureManager;->b:Lcom/zui/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public hideRencentDlg()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/GestureManager;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/GestureManager;->a:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public showNotifications()V
    .locals 5

    const-string v0, "android.app.StatusBarManager"

    :try_start_0
    iget-object v1, p0, Lcom/zui/launcher/GestureManager;->b:Lcom/zui/launcher/Launcher;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    :try_start_1
    const-string v3, "--------GestureManager showNotifications start--------"

    invoke-static {v3}, Lcom/zui/launcher/util/Debug;->debugCreateLog(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zui/launcher/GestureManager;->b:Lcom/zui/launcher/Launcher;

    const-string v4, "android.permission.WRITE_SETTINGS"

    invoke-static {v3, v4}, Lcom/zui/launcher/Utilities;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "expand"

    if-eqz v3, :cond_1

    :try_start_2
    iget-object p0, p0, Lcom/zui/launcher/GestureManager;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v3, 0x1

    invoke-static {p0, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_2

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--------GestureManager showNotifications error1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/launcher/util/Debug;->debugCreateLog(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "expandNotificationsPanel"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_0
    return-void

    :catch_1
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--------GestureManager showNotifications error2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/util/Debug;->debugCreateLog(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    return-void

    :catch_2
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--------GestureManager showNotifications error3: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/util/Debug;->debugCreateLog(Ljava/lang/String;)V

    return-void
.end method

.method public showSearch()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xui.launcher.action.SEARCH_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/GestureManager;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public stopWatch()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/GestureManager;->c:Lcom/zui/launcher/GestureManager$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/GestureManager;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/GestureManager;->c:Lcom/zui/launcher/GestureManager$a;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
