.class Lcom/zui/launcher/logging/EventLogArray$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/logging/EventLogArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


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

.method synthetic constructor <init>(Lcom/zui/launcher/logging/EventLogArray$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/logging/EventLogArray$b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/logging/EventLogArray$b;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/logging/EventLogArray$b;->e:I

    return p0
.end method

.method static synthetic b(Lcom/zui/launcher/logging/EventLogArray$b;)I
    .locals 2

    iget v0, p0, Lcom/zui/launcher/logging/EventLogArray$b;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/zui/launcher/logging/EventLogArray$b;->e:I

    return v0
.end method

.method static synthetic c(Lcom/zui/launcher/logging/EventLogArray$b;)J
    .locals 2

    iget-wide v0, p0, Lcom/zui/launcher/logging/EventLogArray$b;->d:J

    return-wide v0
.end method

.method static synthetic d(Lcom/zui/launcher/logging/EventLogArray$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/logging/EventLogArray$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/zui/launcher/logging/EventLogArray$b;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/logging/EventLogArray$b;->a:I

    return p0
.end method

.method static synthetic f(Lcom/zui/launcher/logging/EventLogArray$b;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/logging/EventLogArray$b;->c:F

    return p0
.end method


# virtual methods
.method public g(ILjava/lang/String;F)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/logging/EventLogArray$b;->a:I

    iput-object p2, p0, Lcom/zui/launcher/logging/EventLogArray$b;->b:Ljava/lang/String;

    iput p3, p0, Lcom/zui/launcher/logging/EventLogArray$b;->c:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/zui/launcher/logging/EventLogArray$b;->d:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/logging/EventLogArray$b;->e:I

    return-void
.end method
