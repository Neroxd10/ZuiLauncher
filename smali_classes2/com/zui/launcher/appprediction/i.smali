.class public final synthetic Lcom/zui/launcher/appprediction/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/appprediction/i;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/appprediction/i;

    invoke-direct {v0}, Lcom/zui/launcher/appprediction/i;-><init>()V

    sput-object v0, Lcom/zui/launcher/appprediction/i;->a:Lcom/zui/launcher/appprediction/i;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/appprediction/PredictionRowView;->d(F)F

    move-result p0

    return p0
.end method
