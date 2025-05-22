.class public final enum Lcom/alibaba/sdk/android/common/HttpMethod;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/sdk/android/common/HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DELETE:Lcom/alibaba/sdk/android/common/HttpMethod;

.field public static final enum GET:Lcom/alibaba/sdk/android/common/HttpMethod;

.field public static final enum HEAD:Lcom/alibaba/sdk/android/common/HttpMethod;

.field public static final enum OPTIONS:Lcom/alibaba/sdk/android/common/HttpMethod;

.field public static final enum POST:Lcom/alibaba/sdk/android/common/HttpMethod;

.field public static final enum PUT:Lcom/alibaba/sdk/android/common/HttpMethod;

.field private static final synthetic a:[Lcom/alibaba/sdk/android/common/HttpMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/alibaba/sdk/android/common/HttpMethod;

    const-string v1, "DELETE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/sdk/android/common/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/common/HttpMethod;->DELETE:Lcom/alibaba/sdk/android/common/HttpMethod;

    new-instance v0, Lcom/alibaba/sdk/android/common/HttpMethod;

    const-string v1, "GET"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/alibaba/sdk/android/common/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/common/HttpMethod;->GET:Lcom/alibaba/sdk/android/common/HttpMethod;

    new-instance v0, Lcom/alibaba/sdk/android/common/HttpMethod;

    const-string v1, "HEAD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/alibaba/sdk/android/common/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/common/HttpMethod;->HEAD:Lcom/alibaba/sdk/android/common/HttpMethod;

    new-instance v0, Lcom/alibaba/sdk/android/common/HttpMethod;

    const-string v1, "POST"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/alibaba/sdk/android/common/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/common/HttpMethod;->POST:Lcom/alibaba/sdk/android/common/HttpMethod;

    new-instance v0, Lcom/alibaba/sdk/android/common/HttpMethod;

    const-string v1, "PUT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/alibaba/sdk/android/common/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/common/HttpMethod;->PUT:Lcom/alibaba/sdk/android/common/HttpMethod;

    new-instance v0, Lcom/alibaba/sdk/android/common/HttpMethod;

    const-string v1, "OPTIONS"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/alibaba/sdk/android/common/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/common/HttpMethod;->OPTIONS:Lcom/alibaba/sdk/android/common/HttpMethod;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/alibaba/sdk/android/common/HttpMethod;

    sget-object v8, Lcom/alibaba/sdk/android/common/HttpMethod;->DELETE:Lcom/alibaba/sdk/android/common/HttpMethod;

    aput-object v8, v1, v2

    sget-object v2, Lcom/alibaba/sdk/android/common/HttpMethod;->GET:Lcom/alibaba/sdk/android/common/HttpMethod;

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/sdk/android/common/HttpMethod;->HEAD:Lcom/alibaba/sdk/android/common/HttpMethod;

    aput-object v2, v1, v4

    sget-object v2, Lcom/alibaba/sdk/android/common/HttpMethod;->POST:Lcom/alibaba/sdk/android/common/HttpMethod;

    aput-object v2, v1, v5

    sget-object v2, Lcom/alibaba/sdk/android/common/HttpMethod;->PUT:Lcom/alibaba/sdk/android/common/HttpMethod;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/alibaba/sdk/android/common/HttpMethod;->a:[Lcom/alibaba/sdk/android/common/HttpMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/sdk/android/common/HttpMethod;
    .locals 1

    const-class v0, Lcom/alibaba/sdk/android/common/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/common/HttpMethod;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/sdk/android/common/HttpMethod;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/common/HttpMethod;->a:[Lcom/alibaba/sdk/android/common/HttpMethod;

    invoke-virtual {v0}, [Lcom/alibaba/sdk/android/common/HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/sdk/android/common/HttpMethod;

    return-object v0
.end method
