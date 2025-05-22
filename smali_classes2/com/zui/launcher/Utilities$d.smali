.class Lcom/zui/launcher/Utilities$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Utilities;->removeUsageStat(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Utilities$d;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/zui/launcher/Utilities$d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/zui/launcher/Utilities$d;->c:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/Utilities$d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/GlobalSearchDbSettings$UsageStat;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/zui/launcher/Utilities$d;->b:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    new-array v2, v3, [Ljava/lang/String;

    iget-object p0, p0, Lcom/zui/launcher/Utilities$d;->c:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v4

    const-string p0, "component = ? AND profileId = 0"

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v5, p0, Lcom/zui/launcher/Utilities$d;->c:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    iget-object p0, p0, Lcom/zui/launcher/Utilities$d;->b:Ljava/lang/String;

    aput-object p0, v2, v3

    const-string p0, " (component = ? OR launcher_key = ? ) AND profileId = 0"

    :goto_0
    invoke-virtual {v0, v1, p0, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
