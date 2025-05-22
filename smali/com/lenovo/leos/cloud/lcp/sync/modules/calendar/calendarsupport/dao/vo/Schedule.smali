.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "category"

.field public static final CLASSIFICATION:Ljava/lang/String; = "classification"

.field public static final COMPLETED:Ljava/lang/String; = "completed"

.field public static final CREATED:Ljava/lang/String; = "created"

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final DUE:Ljava/lang/String; = "due"

.field public static final FLIGHTID:Ljava/lang/String; = "flight_id"

.field public static final FROMLOCATION:Ljava/lang/String; = "from_location"

.field public static final GEOGRAPHICPOSITION:Ljava/lang/String; = "geographic_position"

.field public static final HASALARM:Ljava/lang/String; = "has_alarm"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final LASTMOD:Ljava/lang/String; = "last_mod"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field public static final ORG:Ljava/lang/String; = "org"

.field public static final PERCENTCOMPLETE:Ljava/lang/String; = "percent_complete"

.field public static final PRIORITY:Ljava/lang/String; = "priority"

.field public static final SMSID:Ljava/lang/String; = "sms_id"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final SUMMARY:Ljava/lang/String; = "summary"

.field public static final TOLOCATION:Ljava/lang/String; = "to_location"

.field public static final TRIGGER:Ljava/lang/String; = "trigger"

.field public static final TYPE:Ljava/lang/String; = "type"


# instance fields
.field private a:J

.field private b:J

.field private c:I

.field private d:J

.field private e:Ljava/lang/String;

.field private f:J

.field private g:I

.field private h:J

.field private i:Ljava/lang/String;

.field private j:J

.field private k:J

.field private l:I

.field private m:I

.field private n:F

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:I

.field private s:J

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->i:Ljava/lang/String;

    return-object p0
.end method

.method public getClassfication()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->p:Ljava/lang/String;

    return-object p0
.end method

.method public getCompleted()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->f:J

    return-wide v0
.end method

.method public getCreated()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->j:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->q:Ljava/lang/String;

    return-object p0
.end method

.method public getDue()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->d:J

    return-wide v0
.end method

.method public getFlightId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->t:Ljava/lang/String;

    return-object p0
.end method

.method public getFromLocation()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->u:Ljava/lang/String;

    return-object p0
.end method

.method public getGeographicPosition()F
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->n:F

    return p0
.end method

.method public getHasAlarm()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->g:I

    return p0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->a:J

    return-wide v0
.end method

.method public getLastMod()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->k:J

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->o:Ljava/lang/String;

    return-object p0
.end method

.method public getOrg()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->w:I

    return p0
.end method

.method public getPercentComplete()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->m:I

    return p0
.end method

.method public getPriority()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->c:I

    return p0
.end method

.method public getSid()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->b:J

    return-wide v0
.end method

.method public getSmsId()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->s:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->l:I

    return p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getToLocation()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->v:Ljava/lang/String;

    return-object p0
.end method

.method public getTrigger()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->h:J

    return-wide v0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->r:I

    return p0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->i:Ljava/lang/String;

    return-void
.end method

.method public setClassfication(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->p:Ljava/lang/String;

    return-void
.end method

.method public setCompleted(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->f:J

    return-void
.end method

.method public setCreated(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->j:J

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->q:Ljava/lang/String;

    return-void
.end method

.method public setDue(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->d:J

    return-void
.end method

.method public setFlightId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->t:Ljava/lang/String;

    return-void
.end method

.method public setFromLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->u:Ljava/lang/String;

    return-void
.end method

.method public setGeographicPosition(F)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->n:F

    return-void
.end method

.method public setHasAlarm(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->g:I

    return-void
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->a:J

    return-void
.end method

.method public setLastMod(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->k:J

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->o:Ljava/lang/String;

    return-void
.end method

.method public setOrg(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->w:I

    return-void
.end method

.method public setPercentComplete(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->m:I

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->c:I

    return-void
.end method

.method public setSid(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->b:J

    return-void
.end method

.method public setSmsId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->s:J

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->l:I

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->e:Ljava/lang/String;

    return-void
.end method

.method public setToLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->v:Ljava/lang/String;

    return-void
.end method

.method public setTrigger(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->h:J

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/Schedule;->r:I

    return-void
.end method
