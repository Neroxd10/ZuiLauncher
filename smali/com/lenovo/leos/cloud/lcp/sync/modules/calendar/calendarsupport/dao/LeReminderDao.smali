.class public interface abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/LeReminderDao;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract batchDeleteLeReminders(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/LeReminder;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteAll()I
.end method

.method public abstract deleteLeReminderById(J)V
.end method

.method public abstract getTotalCount()I
.end method

.method public abstract insertLeReminder(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/LeReminder;)J
.end method

.method public abstract queryAllLeReminders()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/LeReminder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryLeReminderById(J)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/LeReminder;
.end method

.method public abstract updateLeReminder(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/LeReminder;)I
.end method
