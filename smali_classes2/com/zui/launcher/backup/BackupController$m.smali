.class Lcom/zui/launcher/backup/BackupController$m;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/backup/BackupController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "m"
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Z

.field public c:Z

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/backup/BackupController;Landroid/content/Context;ZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/backup/BackupController$m;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/zui/launcher/backup/BackupController$m;->b:Z

    iput-boolean p4, p0, Lcom/zui/launcher/backup/BackupController$m;->c:Z

    iput-object p5, p0, Lcom/zui/launcher/backup/BackupController$m;->d:Ljava/lang/String;

    return-void
.end method
