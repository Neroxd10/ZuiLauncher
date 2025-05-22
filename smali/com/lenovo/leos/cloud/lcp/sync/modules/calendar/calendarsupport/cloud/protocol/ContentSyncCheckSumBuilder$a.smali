.class Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncCheckSumBuilder$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncCheckSumBuilder$c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncCheckSumBuilder;->e(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncCheckSumBuilder$c$a<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/BirthDay;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncCheckSumBuilder;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncCheckSumBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncCheckSumBuilder$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncCheckSumBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/BirthDay;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncCheckSumBuilder$a;->f(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/BirthDay;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)J
    .locals 0

    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/BirthDay;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncCheckSumBuilder$a;->e(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/BirthDay;)J

    move-result-wide p0

    return-wide p0
.end method

.method public bridge synthetic c(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/BirthDay;

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncCheckSumBuilder$a;->g(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/BirthDay;)V

    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/BirthDay;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncCheckSumBuilder$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncCheckSumBuilder;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncCheckSumBuilder;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncCheckSumBuilder;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/BirthDayDao;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/BirthDayDao;->batchDeleteBirthDays(Ljava/util/List;)V

    return-void
.end method

.method public e(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/BirthDay;)J
    .locals 0

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/BirthDay;->getSid()J

    move-result-wide p0

    return-wide p0
.end method

.method public f(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/BirthDay;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/BirthDay;->getMainFieldChecksum()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public g(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/BirthDay;)V
    .locals 2

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/CalendarSupportTaskCache;->Crc2BirthDayCid:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/BirthDay;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
