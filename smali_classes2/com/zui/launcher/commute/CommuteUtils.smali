.class public Lcom/zui/launcher/commute/CommuteUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final COMMUTE_MYCITY:Ljava/lang/String; = "commute_mycity"

.field public static final HOME_POI_LATITUDE:Ljava/lang/String; = "commute_home_poi_latitude"

.field public static final HOME_POI_LONGITUDE:Ljava/lang/String; = "commute_home_poi_longitude"

.field public static final HOME_POI_NAME:Ljava/lang/String; = "commute_home_poi_name"

.field public static final KEY_BUS:Ljava/lang/String; = "bus_preference"

.field public static final KEY_DISTANCE:Ljava/lang/String; = "short_distance_preference"

.field public static final KEY_DRIVE:Ljava/lang/String; = "drive_preference"

.field public static final KEY_TIME:Ljava/lang/String; = "short_time_preference"

.field public static final TAG:Ljava/lang/String; = "Launcher.AMapLocation"

.field public static final WORK_POI_LATITUDE:Ljava/lang/String; = "commute_work_poi_latitude"

.field public static final WORK_POI_LONGITUDE:Ljava/lang/String; = "commute_work_poi_longitude"

.field public static final WORK_POI_NAME:Ljava/lang/String; = "comute_work_poi_name"

.field public static final spKey:Ljava/lang/String; = "com.zui.launcher_preferences"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x50

    if-ge v1, v2, :cond_0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
