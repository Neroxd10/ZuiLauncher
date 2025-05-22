.class Lcom/android/systemui/shared/plugins/PluginInstanceManager$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/plugins/PluginInstanceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/android/systemui/shared/plugins/VersionInfo;

.field private c:Ljava/lang/String;

.field d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;Lcom/android/systemui/shared/plugins/VersionInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/shared/plugins/VersionInfo;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$c;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$c;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$c;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$c;->a:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$c;->b:Lcom/android/systemui/shared/plugins/VersionInfo;

    return-void
.end method

.method static synthetic a(Lcom/android/systemui/shared/plugins/PluginInstanceManager$c;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$c;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/android/systemui/shared/plugins/PluginInstanceManager$c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$c;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/android/systemui/shared/plugins/PluginInstanceManager$c;)Lcom/android/systemui/shared/plugins/VersionInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$c;->b:Lcom/android/systemui/shared/plugins/VersionInfo;

    return-object p0
.end method
