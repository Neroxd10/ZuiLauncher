.class final enum Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COPY:Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$b;

.field public static final enum REPLACE:Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$b;

.field private static final synthetic b:[Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$b;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$b;

    const-string v1, "COPY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$b;->COPY:Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$b;

    new-instance v0, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$b;

    const-string v1, "REPLACE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v1}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$b;->REPLACE:Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$b;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$b;

    sget-object v4, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$b;->COPY:Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$b;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$b;->b:[Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$b;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$b;
    .locals 1

    const-class v0, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$b;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$b;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$b;->b:[Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$b;

    invoke-virtual {v0}, [Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$b;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$b;->a:Ljava/lang/String;

    return-object p0
.end method
