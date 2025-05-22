.class public Lcom/zui/quickstep/logging/UserEventDispatcherExtension;
.super Lcom/zui/launcher/logging/UserEventDispatcher;
.source ""


# static fields
.field public static final ALL_APPS_PREDICTION_TIPS:I = 0x2


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/logging/UserEventDispatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public logActionTip(II)V
    .locals 9

    new-instance v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    invoke-direct {v0}, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;-><init>()V

    new-instance v1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    invoke-direct {v1}, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;-><init>()V

    const-string v2, "UserEventDispatcher"

    const/4 v3, 0x2

    const/16 v4, 0xe

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v7, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected action type = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/zui/launcher/Utilities;->printLoge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iput v5, v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->type:I

    iput v5, v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->touch:I

    iput v3, v1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->type:I

    iput v4, v1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->controlType:I

    goto :goto_0

    :cond_1
    iput v6, v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->type:I

    iput v6, v1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->type:I

    iput v4, v1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->containerType:I

    :goto_0
    if-eqz p2, :cond_3

    if-eq p2, v7, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected viewType = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/zui/launcher/Utilities;->printLoge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iput v6, v1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->tipType:I

    goto :goto_1

    :cond_3
    iput v3, v1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->tipType:I

    :goto_1
    new-array p1, v7, [Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    aput-object v1, p1, v5

    invoke-static {v0, p1}, Lcom/zui/launcher/logging/LoggerUtils;->newLauncherEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    return-void
.end method

.method public logStateChangeAction(IIIIIIII)V
    .locals 3

    new-instance v0, Lcom/android/systemui/shared/system/MetricsLoggerCompat;

    invoke-direct {v0}, Lcom/android/systemui/shared/system/MetricsLoggerCompat;-><init>()V

    const/16 v1, 0xc

    if-ne p7, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xe0

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/shared/system/MetricsLoggerCompat;->visibility(IZ)V

    invoke-super/range {p0 .. p8}, Lcom/zui/launcher/logging/UserEventDispatcher;->logStateChangeAction(IIIIIIII)V

    return-void
.end method
