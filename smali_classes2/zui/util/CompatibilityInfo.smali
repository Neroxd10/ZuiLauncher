.class public Lzui/util/CompatibilityInfo;
.super Lzui/util/ReflectClass;
.source ""


# static fields
.field private static c:Lzui/util/CompatibilityInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzui/util/CompatibilityInfo;

    invoke-direct {v0}, Lzui/util/CompatibilityInfo;-><init>()V

    sput-object v0, Lzui/util/CompatibilityInfo;->c:Lzui/util/CompatibilityInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "android.content.res.CompatibilityInfo"

    invoke-direct {p0, v0}, Lzui/util/ReflectClass;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getApplicationScale()F
    .locals 1

    sget-object p0, Lzui/util/CompatibilityInfo;->c:Lzui/util/CompatibilityInfo;

    if-eqz p0, :cond_0

    const-string v0, "applicationScale"

    invoke-virtual {p0, v0}, Lzui/util/ReflectClass;->hasField(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lzui/util/CompatibilityInfo;->c:Lzui/util/CompatibilityInfo;

    invoke-virtual {p0, v0}, Lzui/util/ReflectClass;->getConstFloat(Ljava/lang/String;)F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setRealObject(Ljava/lang/Object;)V
    .locals 0

    sget-object p0, Lzui/util/CompatibilityInfo;->c:Lzui/util/CompatibilityInfo;

    iput-object p1, p0, Lzui/util/ReflectClass;->mRealObject:Ljava/lang/Object;

    return-void
.end method
