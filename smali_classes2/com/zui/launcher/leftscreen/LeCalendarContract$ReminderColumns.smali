.class public interface abstract Lcom/zui/launcher/leftscreen/LeCalendarContract$ReminderColumns;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/leftscreen/LeCalendarContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReminderColumns"
.end annotation


# static fields
.field public static final ALARM_OFF:I = 0x0

.field public static final ALARM_ON:I = 0x1

.field public static final ALARM_TIME:Ljava/lang/String; = "alarm_time"

.field public static final ALARM_TYPE:Ljava/lang/String; = "alarm_type"

.field public static final ALERT_TYPE:Ljava/lang/String; = "alert_type"

.field public static final ALERT_TYPE_LUNAR:I = 0x1

.field public static final ALERT_TYPE_SOLAR:I = 0x2

.field public static final DATA1:Ljava/lang/String; = "data1"

.field public static final DATA2:Ljava/lang/String; = "data2"

.field public static final DATA3:Ljava/lang/String; = "data3"

.field public static final DATA4:Ljava/lang/String; = "data4"

.field public static final DATA5:Ljava/lang/String; = "data5"

.field public static final DAY_OF_MONTH:Ljava/lang/String; = "DayOfMonth"

.field public static final DEFAULT_ORDER:Ljava/lang/String; = "_id ASC"

.field public static final DESCRIPTION:Ljava/lang/String; = "Description"

.field public static final DOES_NOT_REPEAT:I = 0x0

.field public static final FLIGHT_ID:Ljava/lang/String; = "flight_id"

.field public static final FROM:Ljava/lang/String; = "from_location"

.field public static final HAS_ALARM:Ljava/lang/String; = "HasAlarm"

.field public static final NEXT_ALARM_TIME:Ljava/lang/String; = "next_alarm_time"

.field public static final ORGANISATION:Ljava/lang/String; = "org"

.field public static final ORG_DONGFANG:I = 0x66

.field public static final ORG_GONGSHANG:I = 0x3

.field public static final ORG_GUANGDA:I = 0x4

.field public static final ORG_GUANGFA:I = 0x5

.field public static final ORG_MINHANG:I = 0x65

.field public static final ORG_MINSHENG:I = 0x2

.field public static final ORG_NINGBO:I = 0x8

.field public static final ORG_PUFA:I = 0x6

.field public static final ORG_SHENFA:I = 0x9

.field public static final ORG_ZHAOSHANG:I = 0x1

.field public static final ORG_ZHONGGUO:I = 0x7

.field public static final ORG_ZHONGHANGLIAN:I = 0x64

.field public static final OTHER_DESCRIPTION:Ljava/lang/String; = "OtherDescription"

.field public static final REMINDER0:I = 0x1

.field public static final REMINDER1:I = 0x2

.field public static final REMINDER2:I = 0x4

.field public static final REMINDER3:I = 0x8

.field public static final REMINDER4:I = 0x10

.field public static final REMINDER5:I = 0x20

.field public static final REMINDER6:I = 0x40

.field public static final REMINDERS:Ljava/lang/String; = "card_reminders"

.field public static final REMINDER_MINUTES_VALUES:[I

.field public static final REPEATS_DAILY:I = 0x1

.field public static final REPEATS_EVERY_WEEKDAY:I = 0x2

.field public static final REPEATS_MONTHLY_ON_DAY:I = 0x5

.field public static final REPEATS_MONTHLY_ON_DAY_COUNT:I = 0x4

.field public static final REPEATS_WEEKLY_ON_DAY:I = 0x3

.field public static final REPEATS_YEARLY:I = 0x6

.field public static final SKIP_COUNT:Ljava/lang/String; = "SkipCount"

.field public static final SMS_ID:Ljava/lang/String; = "sms_id"

.field public static final START_DATE:Ljava/lang/String; = "StartDate"

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final STATE_DEFAULT:I = 0x0

.field public static final STATE_DONE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "tag"

.field public static final TITLE:Ljava/lang/String; = "Title"

.field public static final TO:Ljava/lang/String; = "to_location"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_ANALYTICAL_CREDITCARD:I = 0x8

.field public static final TYPE_ANALYTICAL_PLANE_TICKET:I = 0x7

.field public static final TYPE_CARD:I = 0x0

.field public static final TYPE_COUNTDOWN:I = 0x5

.field public static final TYPE_FLY:I = 0x3

.field public static final TYPE_MARK:I = -0x1

.field public static final TYPE_NOTE:I = 0x2

.field public static final TYPE_PASTTIME:I = 0x6

.field public static final TYPE_REMEMBER:I = 0x4

.field public static final TYPE_REMINDER:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zui/launcher/leftscreen/LeCalendarContract$ReminderColumns;->REMINDER_MINUTES_VALUES:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x5
        0xa
        0xf
        0x14
        0x19
        0x1e
        0x2d
        0x3c
        0x78
        0xb4
        0x2d0
        0x5a0
        0xb40
        0x2760
    .end array-data
.end method
