.class public Lzui/util/Resources;
.super Lzui/util/ReflectClass;
.source ""


# static fields
.field private static c:Lzui/util/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzui/util/Resources;

    invoke-direct {v0}, Lzui/util/Resources;-><init>()V

    sput-object v0, Lzui/util/Resources;->c:Lzui/util/Resources;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "android.content.res.Resources"

    invoke-direct {p0, v0}, Lzui/util/ReflectClass;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getApplicationScale()F
    .locals 4

    sget-object p0, Lzui/util/Resources;->c:Lzui/util/Resources;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Lzui/util/CompatibilityInfo;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "getCompatibilityInfo"

    invoke-virtual {p0, v3, v1, v2, v0}, Lzui/util/ReflectClass;->invokeInstanceMethod(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lzui/util/CompatibilityInfo;

    invoke-direct {v0}, Lzui/util/CompatibilityInfo;-><init>()V

    invoke-virtual {v0, p0}, Lzui/util/CompatibilityInfo;->setRealObject(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lzui/util/CompatibilityInfo;->getApplicationScale()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getFloat(I)F
    .locals 5

    :try_start_0
    sget-object p0, Lzui/util/Resources;->c:Lzui/util/Resources;

    const-string v0, "getFloat"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-virtual {p0, v0, v2, v3, v1}, Lzui/util/ReflectClass;->invokeInstanceMethod(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public setRealObject(Ljava/lang/Object;)V
    .locals 0

    sget-object p0, Lzui/util/Resources;->c:Lzui/util/Resources;

    iput-object p1, p0, Lzui/util/ReflectClass;->mRealObject:Ljava/lang/Object;

    return-void
.end method
