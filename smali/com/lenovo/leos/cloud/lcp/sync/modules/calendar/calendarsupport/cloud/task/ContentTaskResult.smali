.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final KEY_CS_BIRTHDAY_ADD:Ljava/lang/String; = "calendarSupportBirthdayAdd"

.field public static final KEY_CS_BIRTHDAY_DELETE:Ljava/lang/String; = "calendarSupportBirthdayDelete"

.field public static final KEY_CS_BIRTHDAY_UPDATE:Ljava/lang/String; = "calendarSupportBirthdayUpdate"

.field public static final KEY_CS_PROGRESS_STATE:Ljava/lang/String; = "calendarSupportProgressState"

.field public static final KEY_CS_REMINDER_ADD:Ljava/lang/String; = "calendarSupportLeReminderAdd"

.field public static final KEY_CS_REMINDER_DELETE:Ljava/lang/String; = "calendarSupportLeReminderDelete"

.field public static final KEY_CS_REMINDER_UPDATE:Ljava/lang/String; = "calendarSupportLeReminderUpdate"

.field public static final KEY_CS_RESULT_GZIP_FLOW:Ljava/lang/String; = "calendarSupportGzipFlow"

.field public static final KEY_CS_RESULT_REAL_FLOW:Ljava/lang/String; = "calendarSupportRealFlow"

.field public static final KEY_CS_SCHEDULE_ADD:Ljava/lang/String; = "calendarSupportScheduleAdd"

.field public static final KEY_CS_SCHEDULE_DELETE:Ljava/lang/String; = "calendarSupportScheduleDelete"

.field public static final KEY_CS_SCHEDULE_UPDATE:Ljava/lang/String; = "calendarSupportScheduleUpdate"

.field public static final KEY_CS_TASK_RESULT:Ljava/lang/String; = "calendarSupportTaskResult"

.field private static final serialVersionUID:J = -0x3aba969354c41864L


# instance fields
.field public opBirthdayAdd:I

.field public opBirthdayDelete:I

.field public opBirthdayUpdate:I

.field public opLeReminderAdd:I

.field public opLeReminderDelete:I

.field public opLeReminderUpdate:I

.field public opScheduleAdd:I

.field public opScheduleDelete:I

.field public opScheduleUpdate:I

.field public result:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",opLeReminderAdd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;->opLeReminderAdd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",opLeReminderUpdate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;->opLeReminderUpdate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",opLeReminderDelete:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;->opLeReminderDelete:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",opScheduleAdd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;->opScheduleAdd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",opScheduleUpdate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;->opScheduleUpdate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",opScheduleDelete:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;->opScheduleDelete:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",opBirthdayAdd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;->opBirthdayAdd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",opBirthdayUpdate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;->opBirthdayUpdate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",opBirthdayDelete:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;->opBirthdayDelete:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
