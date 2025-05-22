.class Lzui/preference/InLineEditTextPreference$c;
.super Lzui/util/ReflectClass;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/preference/InLineEditTextPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static c:Lzui/preference/InLineEditTextPreference$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzui/preference/InLineEditTextPreference$c;

    invoke-direct {v0}, Lzui/preference/InLineEditTextPreference$c;-><init>()V

    sput-object v0, Lzui/preference/InLineEditTextPreference$c;->c:Lzui/preference/InLineEditTextPreference$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "android.view.inputmethod.InputMethodManager"

    invoke-direct {p0, v0}, Lzui/util/ReflectClass;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 4

    iget-object p0, p0, Lzui/util/ReflectClass;->mRealObject:Ljava/lang/Object;

    if-eqz p0, :cond_0

    sget-object p0, Lzui/preference/InLineEditTextPreference$c;->c:Lzui/preference/InLineEditTextPreference$c;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/view/View;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "focusIn"

    invoke-virtual {p0, p1, v1, v2, v0}, Lzui/util/ReflectClass;->invokeInstanceMethod(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setRealObject(Ljava/lang/Object;)V
    .locals 0

    sget-object p0, Lzui/preference/InLineEditTextPreference$c;->c:Lzui/preference/InLineEditTextPreference$c;

    iput-object p1, p0, Lzui/util/ReflectClass;->mRealObject:Ljava/lang/Object;

    return-void
.end method
