.class public final enum Lcom/zui/timelaweather/util/WidgetIconState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zui/timelaweather/util/WidgetIconState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum STATE_BLUE_HIDE:Lcom/zui/timelaweather/util/WidgetIconState;

.field public static final enum STATE_BLUE_LOWBATTERY:Lcom/zui/timelaweather/util/WidgetIconState;

.field public static final enum STATE_BLUE_SHOW:Lcom/zui/timelaweather/util/WidgetIconState;

.field public static final enum STATE_CHARGE_BATTERY:Lcom/zui/timelaweather/util/WidgetIconState;

.field public static final enum STATE_DIS_CHARGE_BATTERY:Lcom/zui/timelaweather/util/WidgetIconState;

.field public static final enum STATE_DOUBLE_CHARGING:Lcom/zui/timelaweather/util/WidgetIconState;

.field public static final enum STATE_DOUBLE_FAST_CHARGING:Lcom/zui/timelaweather/util/WidgetIconState;

.field public static final enum STATE_FAST_CHARGE_BATTERY:Lcom/zui/timelaweather/util/WidgetIconState;

.field public static final enum STATE_NONE:Lcom/zui/timelaweather/util/WidgetIconState;

.field private static final synthetic a:[Lcom/zui/timelaweather/util/WidgetIconState;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/zui/timelaweather/util/WidgetIconState;

    const-string v1, "STATE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zui/timelaweather/util/WidgetIconState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/timelaweather/util/WidgetIconState;->STATE_NONE:Lcom/zui/timelaweather/util/WidgetIconState;

    new-instance v0, Lcom/zui/timelaweather/util/WidgetIconState;

    const-string v1, "STATE_CHARGE_BATTERY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/zui/timelaweather/util/WidgetIconState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/timelaweather/util/WidgetIconState;->STATE_CHARGE_BATTERY:Lcom/zui/timelaweather/util/WidgetIconState;

    new-instance v0, Lcom/zui/timelaweather/util/WidgetIconState;

    const-string v1, "STATE_FAST_CHARGE_BATTERY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/zui/timelaweather/util/WidgetIconState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/timelaweather/util/WidgetIconState;->STATE_FAST_CHARGE_BATTERY:Lcom/zui/timelaweather/util/WidgetIconState;

    new-instance v0, Lcom/zui/timelaweather/util/WidgetIconState;

    const-string v1, "STATE_DIS_CHARGE_BATTERY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/zui/timelaweather/util/WidgetIconState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/timelaweather/util/WidgetIconState;->STATE_DIS_CHARGE_BATTERY:Lcom/zui/timelaweather/util/WidgetIconState;

    new-instance v0, Lcom/zui/timelaweather/util/WidgetIconState;

    const-string v1, "STATE_BLUE_SHOW"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/zui/timelaweather/util/WidgetIconState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/timelaweather/util/WidgetIconState;->STATE_BLUE_SHOW:Lcom/zui/timelaweather/util/WidgetIconState;

    new-instance v0, Lcom/zui/timelaweather/util/WidgetIconState;

    const-string v1, "STATE_BLUE_HIDE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/zui/timelaweather/util/WidgetIconState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/timelaweather/util/WidgetIconState;->STATE_BLUE_HIDE:Lcom/zui/timelaweather/util/WidgetIconState;

    new-instance v0, Lcom/zui/timelaweather/util/WidgetIconState;

    const-string v1, "STATE_BLUE_LOWBATTERY"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/zui/timelaweather/util/WidgetIconState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/timelaweather/util/WidgetIconState;->STATE_BLUE_LOWBATTERY:Lcom/zui/timelaweather/util/WidgetIconState;

    new-instance v0, Lcom/zui/timelaweather/util/WidgetIconState;

    const-string v1, "STATE_DOUBLE_CHARGING"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/zui/timelaweather/util/WidgetIconState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/timelaweather/util/WidgetIconState;->STATE_DOUBLE_CHARGING:Lcom/zui/timelaweather/util/WidgetIconState;

    new-instance v0, Lcom/zui/timelaweather/util/WidgetIconState;

    const-string v1, "STATE_DOUBLE_FAST_CHARGING"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/zui/timelaweather/util/WidgetIconState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/timelaweather/util/WidgetIconState;->STATE_DOUBLE_FAST_CHARGING:Lcom/zui/timelaweather/util/WidgetIconState;

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/zui/timelaweather/util/WidgetIconState;

    sget-object v11, Lcom/zui/timelaweather/util/WidgetIconState;->STATE_NONE:Lcom/zui/timelaweather/util/WidgetIconState;

    aput-object v11, v1, v2

    sget-object v2, Lcom/zui/timelaweather/util/WidgetIconState;->STATE_CHARGE_BATTERY:Lcom/zui/timelaweather/util/WidgetIconState;

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/timelaweather/util/WidgetIconState;->STATE_FAST_CHARGE_BATTERY:Lcom/zui/timelaweather/util/WidgetIconState;

    aput-object v2, v1, v4

    sget-object v2, Lcom/zui/timelaweather/util/WidgetIconState;->STATE_DIS_CHARGE_BATTERY:Lcom/zui/timelaweather/util/WidgetIconState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/zui/timelaweather/util/WidgetIconState;->STATE_BLUE_SHOW:Lcom/zui/timelaweather/util/WidgetIconState;

    aput-object v2, v1, v6

    sget-object v2, Lcom/zui/timelaweather/util/WidgetIconState;->STATE_BLUE_HIDE:Lcom/zui/timelaweather/util/WidgetIconState;

    aput-object v2, v1, v7

    sget-object v2, Lcom/zui/timelaweather/util/WidgetIconState;->STATE_BLUE_LOWBATTERY:Lcom/zui/timelaweather/util/WidgetIconState;

    aput-object v2, v1, v8

    sget-object v2, Lcom/zui/timelaweather/util/WidgetIconState;->STATE_DOUBLE_CHARGING:Lcom/zui/timelaweather/util/WidgetIconState;

    aput-object v2, v1, v9

    aput-object v0, v1, v10

    sput-object v1, Lcom/zui/timelaweather/util/WidgetIconState;->a:[Lcom/zui/timelaweather/util/WidgetIconState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zui/timelaweather/util/WidgetIconState;
    .locals 1

    const-class v0, Lcom/zui/timelaweather/util/WidgetIconState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zui/timelaweather/util/WidgetIconState;

    return-object p0
.end method

.method public static values()[Lcom/zui/timelaweather/util/WidgetIconState;
    .locals 1

    sget-object v0, Lcom/zui/timelaweather/util/WidgetIconState;->a:[Lcom/zui/timelaweather/util/WidgetIconState;

    invoke-virtual {v0}, [Lcom/zui/timelaweather/util/WidgetIconState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zui/timelaweather/util/WidgetIconState;

    return-object v0
.end method
