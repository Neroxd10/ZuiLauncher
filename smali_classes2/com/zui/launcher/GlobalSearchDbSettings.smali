.class public Lcom/zui/launcher/GlobalSearchDbSettings;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/GlobalSearchDbSettings$GameSettings;,
        Lcom/zui/launcher/GlobalSearchDbSettings$HotWordSettings;,
        Lcom/zui/launcher/GlobalSearchDbSettings$Recommend;,
        Lcom/zui/launcher/GlobalSearchDbSettings$UsageStat;,
        Lcom/zui/launcher/GlobalSearchDbSettings$SearchHistory;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.zui.launcher.settings.global_search"

.field public static final EXTRA_VALUE:Ljava/lang/String; = "value"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static call(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0, p3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
