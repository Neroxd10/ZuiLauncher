.class final Lcom/google/android/libraries/gsa/launcherclient/e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:F

.field private d:J

.field private e:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/gsa/launcherclient/e;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/libraries/gsa/launcherclient/e;)I
    .locals 2

    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/e;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/libraries/gsa/launcherclient/e;->e:I

    return v0
.end method

.method static synthetic b(Lcom/google/android/libraries/gsa/launcherclient/e;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/libraries/gsa/launcherclient/e;->d:J

    return-wide v0
.end method

.method static synthetic c(Lcom/google/android/libraries/gsa/launcherclient/e;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/e;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/libraries/gsa/launcherclient/e;)I
    .locals 0

    iget p0, p0, Lcom/google/android/libraries/gsa/launcherclient/e;->a:I

    return p0
.end method

.method static synthetic e(Lcom/google/android/libraries/gsa/launcherclient/e;)F
    .locals 0

    iget p0, p0, Lcom/google/android/libraries/gsa/launcherclient/e;->c:F

    return p0
.end method

.method static synthetic f(Lcom/google/android/libraries/gsa/launcherclient/e;)I
    .locals 0

    iget p0, p0, Lcom/google/android/libraries/gsa/launcherclient/e;->e:I

    return p0
.end method


# virtual methods
.method public final a(ILjava/lang/String;F)V
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/gsa/launcherclient/e;->a:I

    iput-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/e;->b:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/libraries/gsa/launcherclient/e;->c:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/libraries/gsa/launcherclient/e;->d:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/libraries/gsa/launcherclient/e;->e:I

    return-void
.end method
