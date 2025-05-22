.class public Lcom/zui/launcher/util/SettingsCache;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/util/SettingsCache$OnChangeListener;
    }
.end annotation


# static fields
.field public static INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/util/MainThreadInitializedObject<",
            "Lcom/zui/launcher/util/SettingsCache;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOTIFICATION_BADGING_URI:Landroid/net/Uri;

.field public static final ONE_HANDED_ENABLED:Ljava/lang/String; = "one_handed_mode_enabled"

.field public static final ONE_HANDED_SWIPE_BOTTOM_TO_NOTIFICATION_ENABLED:Ljava/lang/String; = "swipe_bottom_to_notification_enabled"

.field public static final ROTATION_SETTING_URI:Landroid/net/Uri;

.field private static final c:Ljava/lang/String;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/zui/launcher/util/SettingsCache$OnChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "notification_badging"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/util/SettingsCache;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    const-string v0, "accelerometer_rotation"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/util/SettingsCache;->ROTATION_SETTING_URI:Landroid/net/Uri;

    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/util/SettingsCache;->c:Ljava/lang/String;

    new-instance v0, Lcom/zui/launcher/util/MainThreadInitializedObject;

    sget-object v1, Lcom/zui/launcher/util/a0;->a:Lcom/zui/launcher/util/a0;

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;-><init>(Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/zui/launcher/util/SettingsCache;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/util/SettingsCache;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/util/SettingsCache;->b:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/util/SettingsCache;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Lcom/zui/launcher/util/SettingsCache;
    .locals 1

    new-instance v0, Lcom/zui/launcher/util/SettingsCache;

    invoke-direct {v0, p0}, Lcom/zui/launcher/util/SettingsCache;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private b(Landroid/net/Uri;I)Z
    .locals 4

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zui/launcher/util/SettingsCache;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/util/SettingsCache;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v0, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v3, :cond_1

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/util/SettingsCache;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v0, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v3, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/zui/launcher/util/SettingsCache;->a:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method


# virtual methods
.method public getValue(Landroid/net/Uri;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/util/SettingsCache;->getValue(Landroid/net/Uri;I)Z

    move-result p0

    return p0
.end method

.method public getValue(Landroid/net/Uri;I)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/util/SettingsCache;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/util/SettingsCache;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/util/SettingsCache;->b(Landroid/net/Uri;I)Z

    move-result p0

    return p0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lcom/zui/launcher/util/SettingsCache;->b(Landroid/net/Uri;I)Z

    move-result p1

    iget-object v0, p0, Lcom/zui/launcher/util/SettingsCache;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/util/SettingsCache;->b:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/launcher/util/SettingsCache$OnChangeListener;

    invoke-interface {p2, p1}, Lcom/zui/launcher/util/SettingsCache$OnChangeListener;->onSettingsChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public register(Landroid/net/Uri;Lcom/zui/launcher/util/SettingsCache$OnChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/util/SettingsCache;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/util/SettingsCache;->b:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/zui/launcher/util/SettingsCache;->b:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/zui/launcher/util/SettingsCache;->mResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method

.method public unregister(Landroid/net/Uri;Lcom/zui/launcher/util/SettingsCache$OnChangeListener;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/util/SettingsCache;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/util/SettingsCache;->b:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
