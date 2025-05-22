.class public final Lcom/zui/launcher/leftscreen/LeCalendarContract$Reminder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/leftscreen/LeCalendarContract$EventBaseColoumns;
.implements Lcom/zui/launcher/leftscreen/LeCalendarContract$ReminderColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/leftscreen/LeCalendarContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Reminder"
.end annotation


# static fields
.field public static final REMINDER_URI:Landroid/net/Uri;

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.zui.app.calendar/event"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/leftscreen/LeCalendarContract$Reminder;->URI:Landroid/net/Uri;

    const-string v0, "content://com.zui.app.calendar/event/reminder"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/leftscreen/LeCalendarContract$Reminder;->REMINDER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
