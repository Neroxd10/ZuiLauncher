.class public Lcom/zui/launcher/util/RaceConditionTracker;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/util/RaceConditionTracker$EventProcessor;
    }
.end annotation


# static fields
.field public static final ENTER:Z = true

.field public static final EXIT:Z = false

.field private static a:Lcom/zui/launcher/util/RaceConditionTracker$EventProcessor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enterEvt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/zui/launcher/util/RaceConditionTracker;->enterExitEvt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static enterExitEvt(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p0, "enter"

    goto :goto_0

    :cond_0
    const-string p0, "exit"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static exitEvt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/zui/launcher/util/RaceConditionTracker;->enterExitEvt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static onEvent(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/zui/launcher/util/RaceConditionTracker;->a:Lcom/zui/launcher/util/RaceConditionTracker$EventProcessor;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/zui/launcher/util/RaceConditionTracker$EventProcessor;->onEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onEvent(Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lcom/zui/launcher/util/RaceConditionTracker;->a:Lcom/zui/launcher/util/RaceConditionTracker$EventProcessor;

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/zui/launcher/util/RaceConditionTracker;->enterExitEvt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/zui/launcher/util/RaceConditionTracker$EventProcessor;->onEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
