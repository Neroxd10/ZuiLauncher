.class Lcom/android/systemui/shared/plugins/PluginManagerImpl$b;
.super Ljava/lang/ClassLoader;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/plugins/PluginManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    iput-object p1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl$b;->b:Ljava/lang/ClassLoader;

    iput-object p2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl$b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl$b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl$b;->b:Ljava/lang/ClassLoader;

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method
