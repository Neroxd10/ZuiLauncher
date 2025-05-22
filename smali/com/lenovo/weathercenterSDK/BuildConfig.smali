.class public final Lcom/lenovo/weathercenterSDK/BuildConfig;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final BUILD_TYPE:Ljava/lang/String; = "debug"

.field public static final DEBUG:Z

.field public static final LIBRARY_PACKAGE_NAME:Ljava/lang/String; = "com.lenovo.weathercenterSDK"

.field public static final VERSION_CODE:I = 0x1e8480

.field public static final VERSION_NAME:Ljava/lang/String; = "2.0.0.220517}"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "true"

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/lenovo/weathercenterSDK/BuildConfig;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
