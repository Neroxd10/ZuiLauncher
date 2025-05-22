.class public interface abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/BirthDayDao;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract batchDeleteBirthDays(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/BirthDay;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteAll()I
.end method

.method public abstract deleteBirthDayById(J)V
.end method

.method public abstract getTotalCount()I
.end method

.method public abstract insertBirthDay(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/BirthDay;)J
.end method

.method public abstract queryAllBirthDays()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/BirthDay;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryBirthDayById(J)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/BirthDay;
.end method

.method public abstract updateBirthDay(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/BirthDay;)I
.end method
