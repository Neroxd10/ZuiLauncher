.class public final enum Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/http/client/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HttpMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONNECT:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

.field public static final enum COPY:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

.field public static final enum DELETE:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

.field private static final synthetic ENUM$VALUES:[Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

.field public static final enum GET:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

.field public static final enum HEAD:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

.field public static final enum MOVE:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

.field public static final enum OPTIONS:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

.field public static final enum POST:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

.field public static final enum PUT:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

.field public static final enum TRACE:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->GET:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    new-instance v0, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    const-string v1, "POST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v1}, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->POST:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    new-instance v0, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    const-string v1, "PUT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v1}, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->PUT:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    new-instance v0, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    const-string v1, "HEAD"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v1}, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->HEAD:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    new-instance v0, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    const-string v1, "MOVE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v1}, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->MOVE:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    new-instance v0, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    const-string v1, "COPY"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v1}, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->COPY:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    new-instance v0, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    const-string v1, "DELETE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v1}, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->DELETE:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    new-instance v0, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    const-string v1, "OPTIONS"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v1}, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->OPTIONS:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    new-instance v0, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    const-string v1, "TRACE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v1}, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->TRACE:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    new-instance v0, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    const-string v1, "CONNECT"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v1}, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->CONNECT:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    const/16 v1, 0xa

    new-array v1, v1, [Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    sget-object v12, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->GET:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    aput-object v12, v1, v2

    sget-object v2, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->POST:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    aput-object v2, v1, v3

    sget-object v2, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->PUT:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    aput-object v2, v1, v4

    sget-object v2, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->HEAD:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    aput-object v2, v1, v5

    sget-object v2, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->MOVE:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    aput-object v2, v1, v6

    sget-object v2, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->COPY:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    aput-object v2, v1, v7

    sget-object v2, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->DELETE:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    aput-object v2, v1, v8

    sget-object v2, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->OPTIONS:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    aput-object v2, v1, v9

    sget-object v2, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->TRACE:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    aput-object v2, v1, v10

    aput-object v0, v1, v11

    sput-object v1, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->ENUM$VALUES:[Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;
    .locals 1

    const-class v0, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    return-object p0
.end method

.method public static values()[Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;
    .locals 4

    sget-object v0, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->ENUM$VALUES:[Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    array-length v1, v0

    new-array v2, v1, [Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->value:Ljava/lang/String;

    return-object p0
.end method
