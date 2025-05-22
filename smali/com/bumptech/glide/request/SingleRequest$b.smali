.class final enum Lcom/bumptech/glide/request/SingleRequest$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/SingleRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bumptech/glide/request/SingleRequest$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLEARED:Lcom/bumptech/glide/request/SingleRequest$b;

.field public static final enum COMPLETE:Lcom/bumptech/glide/request/SingleRequest$b;

.field public static final enum FAILED:Lcom/bumptech/glide/request/SingleRequest$b;

.field public static final enum PENDING:Lcom/bumptech/glide/request/SingleRequest$b;

.field public static final enum RUNNING:Lcom/bumptech/glide/request/SingleRequest$b;

.field public static final enum WAITING_FOR_SIZE:Lcom/bumptech/glide/request/SingleRequest$b;

.field private static final synthetic a:[Lcom/bumptech/glide/request/SingleRequest$b;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/bumptech/glide/request/SingleRequest$b;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/request/SingleRequest$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/request/SingleRequest$b;->PENDING:Lcom/bumptech/glide/request/SingleRequest$b;

    new-instance v0, Lcom/bumptech/glide/request/SingleRequest$b;

    const-string v1, "RUNNING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/bumptech/glide/request/SingleRequest$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/request/SingleRequest$b;->RUNNING:Lcom/bumptech/glide/request/SingleRequest$b;

    new-instance v0, Lcom/bumptech/glide/request/SingleRequest$b;

    const-string v1, "WAITING_FOR_SIZE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/bumptech/glide/request/SingleRequest$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/request/SingleRequest$b;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/SingleRequest$b;

    new-instance v0, Lcom/bumptech/glide/request/SingleRequest$b;

    const-string v1, "COMPLETE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/bumptech/glide/request/SingleRequest$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/request/SingleRequest$b;->COMPLETE:Lcom/bumptech/glide/request/SingleRequest$b;

    new-instance v0, Lcom/bumptech/glide/request/SingleRequest$b;

    const-string v1, "FAILED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/bumptech/glide/request/SingleRequest$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/request/SingleRequest$b;->FAILED:Lcom/bumptech/glide/request/SingleRequest$b;

    new-instance v0, Lcom/bumptech/glide/request/SingleRequest$b;

    const-string v1, "CLEARED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/bumptech/glide/request/SingleRequest$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/request/SingleRequest$b;->CLEARED:Lcom/bumptech/glide/request/SingleRequest$b;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/bumptech/glide/request/SingleRequest$b;

    sget-object v8, Lcom/bumptech/glide/request/SingleRequest$b;->PENDING:Lcom/bumptech/glide/request/SingleRequest$b;

    aput-object v8, v1, v2

    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$b;->RUNNING:Lcom/bumptech/glide/request/SingleRequest$b;

    aput-object v2, v1, v3

    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$b;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/SingleRequest$b;

    aput-object v2, v1, v4

    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$b;->COMPLETE:Lcom/bumptech/glide/request/SingleRequest$b;

    aput-object v2, v1, v5

    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$b;->FAILED:Lcom/bumptech/glide/request/SingleRequest$b;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/bumptech/glide/request/SingleRequest$b;->a:[Lcom/bumptech/glide/request/SingleRequest$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/request/SingleRequest$b;
    .locals 1

    const-class v0, Lcom/bumptech/glide/request/SingleRequest$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/SingleRequest$b;

    return-object p0
.end method

.method public static values()[Lcom/bumptech/glide/request/SingleRequest$b;
    .locals 1

    sget-object v0, Lcom/bumptech/glide/request/SingleRequest$b;->a:[Lcom/bumptech/glide/request/SingleRequest$b;

    invoke-virtual {v0}, [Lcom/bumptech/glide/request/SingleRequest$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/request/SingleRequest$b;

    return-object v0
.end method
