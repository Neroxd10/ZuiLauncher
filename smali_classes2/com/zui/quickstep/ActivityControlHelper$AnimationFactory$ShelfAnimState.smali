.class public final enum Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShelfAnimState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCEL:Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;

.field public static final enum HIDE:Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;

.field public static final enum OVERVIEW:Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;

.field public static final enum PEEK:Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;

.field private static final synthetic a:[Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;


# instance fields
.field public final shouldPreformHaptic:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;

    const-string v1, "HIDE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;->HIDE:Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;

    new-instance v0, Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;

    const-string v1, "PEEK"

    invoke-direct {v0, v1, v3, v3}, Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;->PEEK:Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;

    new-instance v0, Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;

    const-string v1, "OVERVIEW"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;->OVERVIEW:Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;

    new-instance v0, Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;

    const-string v1, "CANCEL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v2}, Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;->CANCEL:Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;

    sget-object v6, Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;->HIDE:Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;

    aput-object v6, v1, v2

    sget-object v2, Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;->PEEK:Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;->OVERVIEW:Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;->a:[Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;->shouldPreformHaptic:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;
    .locals 1

    const-class v0, Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;

    return-object p0
.end method

.method public static values()[Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;
    .locals 1

    sget-object v0, Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;->a:[Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;

    invoke-virtual {v0}, [Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;

    return-object v0
.end method
