.class Lzui/preference/PreferenceActivity$d;
.super Lzui/util/ReflectClass;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/preference/PreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# static fields
.field private static c:Lzui/preference/PreferenceActivity$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzui/preference/PreferenceActivity$d;

    invoke-direct {v0}, Lzui/preference/PreferenceActivity$d;-><init>()V

    sput-object v0, Lzui/preference/PreferenceActivity$d;->c:Lzui/preference/PreferenceActivity$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "android.preference.PreferenceActivity"

    invoke-direct {p0, v0}, Lzui/util/ReflectClass;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation

    sget-object p0, Lzui/preference/PreferenceActivity$d;->c:Lzui/preference/PreferenceActivity$d;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/util/List;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "getHeaders"

    invoke-virtual {p0, v3, v1, v2, v0}, Lzui/util/ReflectClass;->invokeInstanceMethod(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method protected b()Landroid/widget/Button;
    .locals 4

    sget-object p0, Lzui/preference/PreferenceActivity$d;->c:Lzui/preference/PreferenceActivity$d;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/widget/Button;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "getNextButton"

    invoke-virtual {p0, v3, v1, v2, v0}, Lzui/util/ReflectClass;->invokeInstanceMethod(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    return-object p0
.end method

.method protected c()Z
    .locals 4

    sget-object p0, Lzui/preference/PreferenceActivity$d;->c:Lzui/preference/PreferenceActivity$d;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "hasNextButton"

    invoke-virtual {p0, v3, v1, v2, v0}, Lzui/util/ReflectClass;->invokeInstanceMethod(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public setRealObject(Ljava/lang/Object;)V
    .locals 0

    sget-object p0, Lzui/preference/PreferenceActivity$d;->c:Lzui/preference/PreferenceActivity$d;

    iput-object p1, p0, Lzui/util/ReflectClass;->mRealObject:Ljava/lang/Object;

    return-void
.end method
