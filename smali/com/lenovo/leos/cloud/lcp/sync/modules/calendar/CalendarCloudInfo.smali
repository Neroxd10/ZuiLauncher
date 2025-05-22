.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarCloudInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:J

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBirthdayCount()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarCloudInfo;->d:I

    return p0
.end method

.method public getEventCount()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarCloudInfo;->b:I

    return p0
.end method

.method public getReminderCount()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarCloudInfo;->c:I

    return p0
.end method

.method public getVersion()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarCloudInfo;->a:J

    return-wide v0
.end method

.method public setBirthdayCount(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarCloudInfo;->d:I

    return-void
.end method

.method public setEventCount(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarCloudInfo;->b:I

    return-void
.end method

.method public setReminderCount(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarCloudInfo;->c:I

    return-void
.end method

.method public setVersion(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarCloudInfo;->a:J

    return-void
.end method
