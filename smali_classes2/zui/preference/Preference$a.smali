.class Lzui/preference/Preference$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lzui/util/PreferenceBase$PreferenceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzui/preference/Preference;


# direct methods
.method constructor <init>(Lzui/preference/Preference;)V
    .locals 0

    iput-object p1, p0, Lzui/preference/Preference$a;->a:Lzui/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshSelf()V
    .locals 0

    iget-object p0, p0, Lzui/preference/Preference$a;->a:Lzui/preference/Preference;

    invoke-static {p0}, Lzui/preference/Preference;->a(Lzui/preference/Preference;)V

    return-void
.end method
