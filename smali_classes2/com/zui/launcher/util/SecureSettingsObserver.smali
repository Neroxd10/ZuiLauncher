.class public Lcom/zui/launcher/util/SecureSettingsObserver;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/util/SecureSettingsObserver$OnChangeListener;
    }
.end annotation


# static fields
.field public static final NOTIFICATION_BADGING:Ljava/lang/String; = "notification_badging"


# instance fields
.field private final a:Landroid/content/ContentResolver;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:Lcom/zui/launcher/util/SecureSettingsObserver$OnChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/zui/launcher/util/SecureSettingsObserver$OnChangeListener;Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/zui/launcher/util/SecureSettingsObserver;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/zui/launcher/util/SecureSettingsObserver;->d:Lcom/zui/launcher/util/SecureSettingsObserver$OnChangeListener;

    iput-object p3, p0, Lcom/zui/launcher/util/SecureSettingsObserver;->b:Ljava/lang/String;

    iput p4, p0, Lcom/zui/launcher/util/SecureSettingsObserver;->c:I

    return-void
.end method

.method public static newNotificationSettingsObserver(Landroid/content/Context;Lcom/zui/launcher/util/SecureSettingsObserver$OnChangeListener;)Lcom/zui/launcher/util/SecureSettingsObserver;
    .locals 3

    new-instance v0, Lcom/zui/launcher/util/SecureSettingsObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "notification_badging"

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/zui/launcher/util/SecureSettingsObserver;-><init>(Landroid/content/ContentResolver;Lcom/zui/launcher/util/SecureSettingsObserver$OnChangeListener;Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public dispatchOnChange()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/SecureSettingsObserver;->onChange(Z)V

    return-void
.end method

.method public getResolver()Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/util/SecureSettingsObserver;->a:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public getValue()Z
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/util/SecureSettingsObserver;->a:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/zui/launcher/util/SecureSettingsObserver;->b:Ljava/lang/String;

    iget p0, p0, Lcom/zui/launcher/util/SecureSettingsObserver;->c:I

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onChange(Z)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/util/SecureSettingsObserver;->d:Lcom/zui/launcher/util/SecureSettingsObserver$OnChangeListener;

    invoke-virtual {p0}, Lcom/zui/launcher/util/SecureSettingsObserver;->getValue()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/zui/launcher/util/SecureSettingsObserver$OnChangeListener;->onSettingsChanged(Z)V

    return-void
.end method

.method public register()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/util/SecureSettingsObserver;->a:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/zui/launcher/util/SecureSettingsObserver;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unregister()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/util/SecureSettingsObserver;->a:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
