.class Lcom/android/systemui/shared/plugins/VersionInfo$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/plugins/VersionInfo;->checkVersion(Lcom/android/systemui/shared/plugins/VersionInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiConsumer<",
        "Ljava/lang/Class<",
        "*>;",
        "Lcom/android/systemui/shared/plugins/VersionInfo$c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/plugins/VersionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Lcom/android/systemui/shared/plugins/VersionInfo$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/android/systemui/shared/plugins/VersionInfo$c;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Lcom/android/systemui/shared/plugins/VersionInfo$c;->b(Lcom/android/systemui/shared/plugins/VersionInfo$c;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/android/systemui/shared/plugins/VersionInfo$InvalidVersionException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing required dependency "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/shared/plugins/VersionInfo$InvalidVersionException;-><init>(Ljava/lang/String;Z)V

    throw p0
.end method

.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Class;

    check-cast p2, Lcom/android/systemui/shared/plugins/VersionInfo$c;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/plugins/VersionInfo$b;->a(Ljava/lang/Class;Lcom/android/systemui/shared/plugins/VersionInfo$c;)V

    return-void
.end method
