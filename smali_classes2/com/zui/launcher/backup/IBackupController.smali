.class public interface abstract Lcom/zui/launcher/backup/IBackupController;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEFAULT_AUTO_DOWNLOAD:Z = false

.field public static final DEFAULT_SWITCH_AUTO_BACKUP:Z = false

.field public static final ERROR_CODE_NO_BACKUP:Ljava/lang/String; = "no_launcher_backup"

.field public static final PKG_ZUI_CLONE:Ljava/lang/String; = "com.dooba.backuptest"

.field public static final RESTORE_AUTODOWNLOAD_KEY:Ljava/lang/String; = "restore_autodownload"

.field public static final SETTINGS_AUTO_BACKUP:Ljava/lang/String; = "launcher_auto_backup"


# virtual methods
.method public abstract getReceiverPermission()Ljava/lang/String;
.end method

.method public abstract onProcessed(Landroid/content/Context;ZZLjava/lang/String;)V
.end method

.method public abstract onProcessedForClone(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract uploadFile(Landroid/content/Context;)V
.end method
