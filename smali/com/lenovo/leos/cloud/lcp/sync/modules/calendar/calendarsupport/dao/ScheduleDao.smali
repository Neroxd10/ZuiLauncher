.class public interface abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/ScheduleDao;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract deleteScheduleById(J)V
.end method

.method public abstract insertSchedule(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;)J
.end method

.method public abstract queryAllSchedules()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryScheduleById(J)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;
.end method

.method public abstract updateSchedule(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;)I
.end method
