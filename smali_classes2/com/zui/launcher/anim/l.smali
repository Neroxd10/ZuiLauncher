.class public final synthetic Lcom/zui/launcher/anim/l;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/anim/l;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/anim/l;

    invoke-direct {v0}, Lcom/zui/launcher/anim/l;-><init>()V

    sput-object v0, Lcom/zui/launcher/anim/l;->a:Lcom/zui/launcher/anim/l;

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

    invoke-static {p1}, Lcom/zui/launcher/anim/Interpolators;->e(F)F

    move-result p0

    return p0
.end method
