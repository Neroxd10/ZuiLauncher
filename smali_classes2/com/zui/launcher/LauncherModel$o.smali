.class Lcom/zui/launcher/LauncherModel$o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/LauncherModel;->addCacheInDatabaseHelper(Landroid/content/Context;Lcom/zui/launcher/CacheInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/ContentResolver;

.field final synthetic b:Lcom/zui/launcher/CacheInfo;

.field final synthetic c:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Lcom/zui/launcher/CacheInfo;Landroid/content/ContentValues;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/LauncherModel$o;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/zui/launcher/LauncherModel$o;->b:Lcom/zui/launcher/CacheInfo;

    iput-object p3, p0, Lcom/zui/launcher/LauncherModel$o;->c:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel$o;->a:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/zui/launcher/LauncherModel$o;->b:Lcom/zui/launcher/CacheInfo;

    iget-object p0, p0, Lcom/zui/launcher/LauncherModel$o;->c:Landroid/content/ContentValues;

    invoke-static {v0, v1, p0}, Lcom/zui/launcher/LauncherModel;->e(Landroid/content/ContentResolver;Lcom/zui/launcher/CacheInfo;Landroid/content/ContentValues;)V

    return-void
.end method
