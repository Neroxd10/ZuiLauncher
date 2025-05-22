.class Lcom/android/systemui/shared/plugins/VersionInfo$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/plugins/VersionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:I

.field private final b:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/shared/plugins/VersionInfo$c;->a:I

    iput-boolean p2, p0, Lcom/android/systemui/shared/plugins/VersionInfo$c;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/android/systemui/shared/plugins/VersionInfo$c;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/shared/plugins/VersionInfo$c;->a:I

    return p0
.end method

.method static synthetic b(Lcom/android/systemui/shared/plugins/VersionInfo$c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/shared/plugins/VersionInfo$c;->b:Z

    return p0
.end method
