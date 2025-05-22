.class public Lcom/zui/launcher/util/VibratorWrapper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1d
.end annotation


# static fields
.field public static final EFFECT_CLICK:Landroid/os/VibrationEffect;

.field public static final INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/util/MainThreadInitializedObject<",
            "Lcom/zui/launcher/util/VibratorWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public static final OVERVIEW_HAPTIC:Landroid/os/VibrationEffect;


# instance fields
.field private final a:Landroid/os/Vibrator;

.field private final b:Z

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/util/MainThreadInitializedObject;

    sget-object v1, Lcom/zui/launcher/util/g0;->a:Lcom/zui/launcher/util/g0;

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;-><init>(Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/zui/launcher/util/VibratorWrapper;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/VibrationEffect;->createPredefined(I)Landroid/os/VibrationEffect;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/util/VibratorWrapper;->EFFECT_CLICK:Landroid/os/VibrationEffect;

    sput-object v0, Lcom/zui/launcher/util/VibratorWrapper;->OVERVIEW_HAPTIC:Landroid/os/VibrationEffect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/os/Vibrator;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/zui/launcher/util/VibratorWrapper;->a:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/launcher/util/VibratorWrapper;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/util/VibratorWrapper;->c(Landroid/content/ContentResolver;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/launcher/util/VibratorWrapper;->c:Z

    new-instance v0, Lcom/zui/launcher/util/VibratorWrapper$a;

    sget-object v2, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {v2}, Lcom/zui/launcher/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, p0, v2, p1}, Lcom/zui/launcher/util/VibratorWrapper$a;-><init>(Lcom/zui/launcher/util/VibratorWrapper;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    const-string p0, "haptic_feedback_enabled"

    invoke-static {p0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/zui/launcher/util/VibratorWrapper;->c:Z

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/util/VibratorWrapper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/util/VibratorWrapper;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/zui/launcher/util/VibratorWrapper;Landroid/content/ContentResolver;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/util/VibratorWrapper;->c(Landroid/content/ContentResolver;)Z

    move-result p0

    return p0
.end method

.method private c(Landroid/content/ContentResolver;)Z
    .locals 1

    const-string p0, "haptic_feedback_enabled"

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method


# virtual methods
.method public synthetic d(Landroid/os/VibrationEffect;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/util/VibratorWrapper;->a:Landroid/os/Vibrator;

    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return-void
.end method

.method public vibrate(Landroid/os/VibrationEffect;)V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/launcher/util/VibratorWrapper;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/launcher/util/VibratorWrapper;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zui/launcher/util/Executors;->UI_HELPER_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/launcher/util/c0;

    invoke-direct {v1, p0, p1}, Lcom/zui/launcher/util/c0;-><init>(Lcom/zui/launcher/util/VibratorWrapper;Landroid/os/VibrationEffect;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
