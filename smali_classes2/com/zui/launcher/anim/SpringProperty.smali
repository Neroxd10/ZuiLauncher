.class public Lcom/zui/launcher/anim/SpringProperty;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEFAULT:Lcom/zui/launcher/anim/SpringProperty;

.field public static final FLAG_CAN_SPRING_ON_END:I = 0x1

.field public static final FLAG_CAN_SPRING_ON_START:I = 0x2


# instance fields
.field a:F

.field b:F

.field public final flags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/anim/SpringProperty;

    invoke-direct {v0}, Lcom/zui/launcher/anim/SpringProperty;-><init>()V

    sput-object v0, Lcom/zui/launcher/anim/SpringProperty;->DEFAULT:Lcom/zui/launcher/anim/SpringProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zui/launcher/anim/SpringProperty;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/zui/launcher/anim/SpringProperty;->a:F

    const v0, 0x44bb8000    # 1500.0f

    iput v0, p0, Lcom/zui/launcher/anim/SpringProperty;->b:F

    iput p1, p0, Lcom/zui/launcher/anim/SpringProperty;->flags:I

    return-void
.end method


# virtual methods
.method public setDampingRatio(F)Lcom/zui/launcher/anim/SpringProperty;
    .locals 0

    iput p1, p0, Lcom/zui/launcher/anim/SpringProperty;->a:F

    return-object p0
.end method

.method public setStiffness(F)Lcom/zui/launcher/anim/SpringProperty;
    .locals 0

    iput p1, p0, Lcom/zui/launcher/anim/SpringProperty;->b:F

    return-object p0
.end method
