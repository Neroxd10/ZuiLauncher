.class Lcom/zui/launcher/icons/cache/BaseIconCache$a;
.super Ljava/util/AbstractMap;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/icons/cache/BaseIconCache;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "Lcom/zui/launcher/util/ComponentKey;",
        "Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/zui/launcher/icons/cache/BaseIconCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/zui/launcher/util/ComponentKey;Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;)Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;
    .locals 0

    return-object p2
.end method

.method public entrySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Lcom/zui/launcher/util/ComponentKey;",
            "Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/zui/launcher/util/ComponentKey;

    check-cast p2, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/icons/cache/BaseIconCache$a;->b(Lcom/zui/launcher/util/ComponentKey;Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;)Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;

    return-object p2
.end method
