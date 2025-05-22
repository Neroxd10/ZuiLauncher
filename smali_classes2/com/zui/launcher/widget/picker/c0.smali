.class final enum Lcom/zui/launcher/widget/picker/c0;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zui/launcher/widget/picker/c0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FIRST:Lcom/zui/launcher/widget/picker/c0;

.field public static final enum FIRST_EXPANDED:Lcom/zui/launcher/widget/picker/c0;

.field public static final enum LAST:Lcom/zui/launcher/widget/picker/c0;

.field public static final enum MIDDLE:Lcom/zui/launcher/widget/picker/c0;

.field public static final enum MIDDLE_EXPANDED:Lcom/zui/launcher/widget/picker/c0;

.field public static final enum SINGLE:Lcom/zui/launcher/widget/picker/c0;

.field private static final synthetic b:[Lcom/zui/launcher/widget/picker/c0;


# instance fields
.field final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/zui/launcher/widget/picker/c0;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x10100a4

    const/4 v4, 0x0

    aput v3, v2, v4

    const-string v3, "FIRST"

    invoke-direct {v0, v3, v4, v2}, Lcom/zui/launcher/widget/picker/c0;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lcom/zui/launcher/widget/picker/c0;->FIRST:Lcom/zui/launcher/widget/picker/c0;

    new-instance v0, Lcom/zui/launcher/widget/picker/c0;

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    const-string v5, "FIRST_EXPANDED"

    invoke-direct {v0, v5, v1, v3}, Lcom/zui/launcher/widget/picker/c0;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lcom/zui/launcher/widget/picker/c0;->FIRST_EXPANDED:Lcom/zui/launcher/widget/picker/c0;

    new-instance v0, Lcom/zui/launcher/widget/picker/c0;

    new-array v3, v1, [I

    const v5, 0x10100a5

    aput v5, v3, v4

    const-string v5, "MIDDLE"

    invoke-direct {v0, v5, v2, v3}, Lcom/zui/launcher/widget/picker/c0;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lcom/zui/launcher/widget/picker/c0;->MIDDLE:Lcom/zui/launcher/widget/picker/c0;

    new-instance v0, Lcom/zui/launcher/widget/picker/c0;

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const-string v5, "MIDDLE_EXPANDED"

    const/4 v6, 0x3

    invoke-direct {v0, v5, v6, v3}, Lcom/zui/launcher/widget/picker/c0;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lcom/zui/launcher/widget/picker/c0;->MIDDLE_EXPANDED:Lcom/zui/launcher/widget/picker/c0;

    new-instance v0, Lcom/zui/launcher/widget/picker/c0;

    new-array v3, v1, [I

    const v5, 0x10100a6

    aput v5, v3, v4

    const-string v5, "LAST"

    const/4 v7, 0x4

    invoke-direct {v0, v5, v7, v3}, Lcom/zui/launcher/widget/picker/c0;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lcom/zui/launcher/widget/picker/c0;->LAST:Lcom/zui/launcher/widget/picker/c0;

    new-instance v0, Lcom/zui/launcher/widget/picker/c0;

    new-array v3, v1, [I

    const v5, 0x10100a3

    aput v5, v3, v4

    const-string v5, "SINGLE"

    const/4 v8, 0x5

    invoke-direct {v0, v5, v8, v3}, Lcom/zui/launcher/widget/picker/c0;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lcom/zui/launcher/widget/picker/c0;->SINGLE:Lcom/zui/launcher/widget/picker/c0;

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/zui/launcher/widget/picker/c0;

    sget-object v5, Lcom/zui/launcher/widget/picker/c0;->FIRST:Lcom/zui/launcher/widget/picker/c0;

    aput-object v5, v3, v4

    sget-object v4, Lcom/zui/launcher/widget/picker/c0;->FIRST_EXPANDED:Lcom/zui/launcher/widget/picker/c0;

    aput-object v4, v3, v1

    sget-object v1, Lcom/zui/launcher/widget/picker/c0;->MIDDLE:Lcom/zui/launcher/widget/picker/c0;

    aput-object v1, v3, v2

    sget-object v1, Lcom/zui/launcher/widget/picker/c0;->MIDDLE_EXPANDED:Lcom/zui/launcher/widget/picker/c0;

    aput-object v1, v3, v6

    sget-object v1, Lcom/zui/launcher/widget/picker/c0;->LAST:Lcom/zui/launcher/widget/picker/c0;

    aput-object v1, v3, v7

    aput-object v0, v3, v8

    sput-object v3, Lcom/zui/launcher/widget/picker/c0;->b:[Lcom/zui/launcher/widget/picker/c0;

    return-void

    :array_0
    .array-data 4
        0x10100a4
        0x10100a8
    .end array-data

    :array_1
    .array-data 4
        0x10100a5
        0x10100a8
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/zui/launcher/widget/picker/c0;->a:[I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zui/launcher/widget/picker/c0;
    .locals 1

    const-class v0, Lcom/zui/launcher/widget/picker/c0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/widget/picker/c0;

    return-object p0
.end method

.method public static values()[Lcom/zui/launcher/widget/picker/c0;
    .locals 1

    sget-object v0, Lcom/zui/launcher/widget/picker/c0;->b:[Lcom/zui/launcher/widget/picker/c0;

    invoke-virtual {v0}, [Lcom/zui/launcher/widget/picker/c0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zui/launcher/widget/picker/c0;

    return-object v0
.end method
