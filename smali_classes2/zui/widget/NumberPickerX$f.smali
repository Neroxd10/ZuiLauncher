.class Lzui/widget/NumberPickerX$f;
.super Lzui/util/ReflectClass;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/NumberPickerX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# static fields
.field private static c:Lzui/widget/NumberPickerX$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzui/widget/NumberPickerX$f;

    invoke-direct {v0}, Lzui/widget/NumberPickerX$f;-><init>()V

    sput-object v0, Lzui/widget/NumberPickerX$f;->c:Lzui/widget/NumberPickerX$f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "android.widget.LinearLayout"

    invoke-direct {p0, v0}, Lzui/util/ReflectClass;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    sget-object p0, Lzui/widget/NumberPickerX$f;->c:Lzui/widget/NumberPickerX$f;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "clearAccessibilityFocus"

    invoke-virtual {p0, v3, v1, v2, v0}, Lzui/util/ReflectClass;->invokeInstanceMethod(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 5

    const-string p0, "requestAccessibilityFocus"

    sget-object v0, Lzui/widget/NumberPickerX$f;->c:Lzui/widget/NumberPickerX$f;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2, v3, v4}, Lzui/util/ReflectClass;->invokeInstanceMethod(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lzui/widget/NumberPickerX$f;->c:Lzui/widget/NumberPickerX$f;

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2, v3, v4}, Lzui/util/ReflectClass;->invokeInstanceMethod(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_1
    return v1
.end method

.method public setRealObject(Ljava/lang/Object;)V
    .locals 0

    sget-object p0, Lzui/widget/NumberPickerX$f;->c:Lzui/widget/NumberPickerX$f;

    if-eqz p0, :cond_0

    iput-object p1, p0, Lzui/util/ReflectClass;->mRealObject:Ljava/lang/Object;

    :cond_0
    return-void
.end method
