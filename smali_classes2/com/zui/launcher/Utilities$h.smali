.class final enum Lcom/zui/launcher/Utilities$h;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/Utilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zui/launcher/Utilities$h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AFTERDAY:Lcom/zui/launcher/Utilities$h;

.field public static final enum LASTDAY:Lcom/zui/launcher/Utilities$h;

.field public static final enum TODAY:Lcom/zui/launcher/Utilities$h;

.field public static final enum TOMORROW:Lcom/zui/launcher/Utilities$h;

.field public static final enum YESTERDAY:Lcom/zui/launcher/Utilities$h;

.field private static final synthetic a:[Lcom/zui/launcher/Utilities$h;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/zui/launcher/Utilities$h;

    const-string v1, "LASTDAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/Utilities$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/launcher/Utilities$h;->LASTDAY:Lcom/zui/launcher/Utilities$h;

    new-instance v0, Lcom/zui/launcher/Utilities$h;

    const-string v1, "YESTERDAY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/zui/launcher/Utilities$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/launcher/Utilities$h;->YESTERDAY:Lcom/zui/launcher/Utilities$h;

    new-instance v0, Lcom/zui/launcher/Utilities$h;

    const-string v1, "TODAY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/zui/launcher/Utilities$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/launcher/Utilities$h;->TODAY:Lcom/zui/launcher/Utilities$h;

    new-instance v0, Lcom/zui/launcher/Utilities$h;

    const-string v1, "TOMORROW"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/zui/launcher/Utilities$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/launcher/Utilities$h;->TOMORROW:Lcom/zui/launcher/Utilities$h;

    new-instance v0, Lcom/zui/launcher/Utilities$h;

    const-string v1, "AFTERDAY"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/zui/launcher/Utilities$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/launcher/Utilities$h;->AFTERDAY:Lcom/zui/launcher/Utilities$h;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/zui/launcher/Utilities$h;

    sget-object v7, Lcom/zui/launcher/Utilities$h;->LASTDAY:Lcom/zui/launcher/Utilities$h;

    aput-object v7, v1, v2

    sget-object v2, Lcom/zui/launcher/Utilities$h;->YESTERDAY:Lcom/zui/launcher/Utilities$h;

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/launcher/Utilities$h;->TODAY:Lcom/zui/launcher/Utilities$h;

    aput-object v2, v1, v4

    sget-object v2, Lcom/zui/launcher/Utilities$h;->TOMORROW:Lcom/zui/launcher/Utilities$h;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/zui/launcher/Utilities$h;->a:[Lcom/zui/launcher/Utilities$h;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zui/launcher/Utilities$h;
    .locals 1

    const-class v0, Lcom/zui/launcher/Utilities$h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/Utilities$h;

    return-object p0
.end method

.method public static values()[Lcom/zui/launcher/Utilities$h;
    .locals 1

    sget-object v0, Lcom/zui/launcher/Utilities$h;->a:[Lcom/zui/launcher/Utilities$h;

    invoke-virtual {v0}, [Lcom/zui/launcher/Utilities$h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zui/launcher/Utilities$h;

    return-object v0
.end method
