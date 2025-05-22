.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cache/TaskCache;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cache/TaskCache;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cache/TaskCache;->b:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cache/TaskCache;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cache/TaskCache;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static getCalendarCid(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cache/TaskCache;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0
.end method

.method public static getEventCid(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cache/TaskCache;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0
.end method

.method public static putCalendarCid(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cache/TaskCache;->a:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static putEventCid(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cache/TaskCache;->b:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
