.class public Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;,
        Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$MobilePhoneTypeName;
    }
.end annotation


# static fields
.field private static b:Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;->optionsDefaultValue()V

    return-void
.end method

.method public static I()Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;
    .locals 2

    const-class v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;->b:Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;

    if-nez v1, :cond_0

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;-><init>()V

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;->b:Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;->b:Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method a(Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;->b(Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method b(Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public backupLeSyncSdcard(Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$MobilePhoneTypeName;)V
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;->BackupSyncTypeSdcard:Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;

    invoke-virtual {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;->d(Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;Ljava/lang/Object;)V

    return-void
.end method

.method public backupSimCardContact(Z)V
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;->BackupSimCardContact:Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;

    invoke-virtual {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;->c(Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;Z)V

    return-void
.end method

.method public backupSimCardContact()Z
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;->BackupSimCardContact:Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;->a(Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;)Z

    move-result p0

    return p0
.end method

.method c(Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;Z)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;->d(Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;Ljava/lang/Object;)V

    return-void
.end method

.method d(Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;->a:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public isCalendarSupportSync()Z
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;->CalendarSupportSync:Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;->a(Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;)Z

    move-result p0

    return p0
.end method

.method public isChinaMobileSdcard()Z
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;->BackupSyncTypeSdcard:Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;->b(Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$MobilePhoneTypeName;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$MobilePhoneTypeName;

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$MobilePhoneTypeName;->ChinaMobile:Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$MobilePhoneTypeName;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isChinaTelecomSdcard()Z
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;->BackupSyncTypeSdcard:Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;->b(Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$MobilePhoneTypeName;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$MobilePhoneTypeName;

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$MobilePhoneTypeName;->ChinaTelecom:Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$MobilePhoneTypeName;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isLeSyncSdcard()Z
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;->BackupSyncTypeSdcard:Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;->b(Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$MobilePhoneTypeName;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$MobilePhoneTypeName;

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$MobilePhoneTypeName;->LeSync:Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$MobilePhoneTypeName;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected optionsDefaultValue()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;->backupSimCardContact(Z)V

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$MobilePhoneTypeName;->LeSync:Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$MobilePhoneTypeName;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;->backupLeSyncSdcard(Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$MobilePhoneTypeName;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;->setCalendarSupportSync(Z)V

    return-void
.end method

.method public setCalendarSupportSync(Z)V
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;->CalendarSupportSync:Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;

    invoke-virtual {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;->c(Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$a;Z)V

    return-void
.end method
